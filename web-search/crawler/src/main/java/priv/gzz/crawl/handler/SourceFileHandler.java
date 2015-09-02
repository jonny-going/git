package priv.gzz.crawl.handler;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.htmlparser.util.ParserException;

import priv.gzz.crawl.bean.BBSContent;
import priv.gzz.crawl.db.DBAccessor;
import priv.gzz.crawl.util.FileUtil;
import priv.gzz.crawl.util.HtmlParserTool;

public class SourceFileHandler {
	private final static String ROOT = "/home/gong/app/crawl/segments/";// "E:/crawl/src/";
	// private final int record_max_count = 5000;
	// private static int totalCount = 1;

	static {
		FileUtil.emptyDir(ROOT);
	}

	public void process(String filePath, String visitUrl) {
		try {
			BBSContent bbs = HtmlParserTool.extracContent(visitUrl);
			try {
				bbs.setUrl(visitUrl);
				bbs.setDID(getDidFromURL(visitUrl));
				bbs.setSnapshot(filePath);
				fillBBS(bbs, bbs.getContent());
				bbs.setContent(bbs.getContent());
				String fileName = ROOT + bbs.getDID();
				FileUtil.saveToLocal(bbs.getContent().getBytes(), fileName);
				DBAccessor.saveBBS(bbs);
			} catch (Exception ex) {
				System.out.println("URL-->" + visitUrl + " is not a bbs URL. ignore.");
			}
		} catch (ParserException e) {
			e.printStackTrace();
		}
	}

	private static long getDidFromURL(String visitUrl) {
		String did = null;
		Pattern pattern = Pattern.compile("(?<=file,M\\.)(.+?)(?=\\.A\\.html)");
		Matcher matcher = pattern.matcher(visitUrl);
		if (matcher.find()) {
			did = matcher.group();
		}
		return Long.valueOf(did);
	}

	public static void fillBBS(BBSContent bbs, String content) {
		String[] lines = content.split("\r\n|\n");
		int flag = 0;
		for (String line : lines) {
			if (line.startsWith("发信人:")) {
				String author = line.split(",")[0].split(":")[1];
				bbs.setAuthor(author.trim());
				flag = flag + 1;
			} else if (line.startsWith("标  题:")) {
				String title = line.split(":")[1];
				bbs.setTitle(title.trim());
				flag = flag + 2;
			} else if (line.startsWith("发信站:")) {
				String time = line.substring(line.indexOf("(") + 1, line.indexOf(")"));
				bbs.setTime(time);
				flag = flag + 4;
			}
			if (flag == 7) {
				break;
			}
		}
	}
}