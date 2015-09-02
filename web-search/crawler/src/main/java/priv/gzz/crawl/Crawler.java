package priv.gzz.crawl;

import java.util.Set;
import java.util.regex.Pattern;

import priv.gzz.crawl.handler.DownLoadFile;
import priv.gzz.crawl.handler.SourceFileHandler;
import priv.gzz.crawl.util.HtmlParserTool;
import priv.gzz.crawl.util.LinkFilter;
import priv.gzz.crawl.util.LinkQueue;

public class Crawler {
	private final Pattern URL_FILTER = Pattern.compile("https://bbs.sjtu.edu.cn/((bbsdoc)|(bbscon)),board,CS.*");

	/**
	 * 使用种子初始化 URL 队列
	 * 
	 * @return
	 * @param seeds
	 *            种子URL
	 */
	private void initCrawlerWithSeeds(String[] seeds) {
		for (int i = 0; i < seeds.length; i++)
			LinkQueue.addUnvisitedUrl(seeds[i]);
	}

	/**
	 * 抓取过程
	 * 
	 * @return
	 * @param seeds
	 */
	public void crawling(final String[] seeds, int count) {
		LinkFilter filter = new LinkFilter() {
			public boolean accept(String url) {
				if (URL_FILTER.matcher(url).find()) {
					return true;
				} else {
					return false;
				}
			}
		};
		// 初始化 URL 队列
		initCrawlerWithSeeds(seeds);
		SourceFileHandler srcHandler = new SourceFileHandler();
		// 循环条件：待抓取的链接不空且抓取的网页不多于1000
		while (!LinkQueue.unVisitedUrlsEmpty() && LinkQueue.getVisitedUrlNum() < count) {
			// 队头URL出队列
			String visitUrl = (String) LinkQueue.unVisitedUrlDeQueue();
			if (visitUrl == null)
				continue;
			DownLoadFile downLoader = new DownLoadFile();
			// 下载网页
			String filePath = downLoader.downloadFile(visitUrl);
			// 该 url 放入到已访问的 URL 中
			LinkQueue.addVisitedUrl(visitUrl);
			// 生成源文件，并保存至指定目录
			srcHandler.process(filePath, visitUrl);
			// 提取出下载网页中的 URL
			Set<String> links = HtmlParserTool.extracLinks(visitUrl, filter);
			// 新的未访问的 URL 入队
			for (String link : links) {
				LinkQueue.addUnvisitedUrl(link);
			}
		}
	}

	// main 方法入口
	public static void main(String[] args) {
		long start = System.currentTimeMillis();
		Crawler crawler = new Crawler();
		crawler.crawling(new String[] { "https://bbs.sjtu.edu.cn/bbsdoc,board,CS.html" }, Integer.valueOf(args[0]));
		System.out.println("Crawl completed. Cost " + (System.currentTimeMillis() - start) / 1000 + "s");
	}
}