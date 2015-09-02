package priv.gzz.crawl.handler;

import java.io.IOException;

import org.apache.http.HttpEntity;
import org.apache.http.HttpStatus;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

import priv.gzz.crawl.util.FileUtil;

public class DownLoadFile {
	private static final String FILE_ROOT = "/home/gong/app/crawl/src/";// "E:/crawl/bbs/";
	static {
		FileUtil.emptyDir(FILE_ROOT);
	}

	/**
	 * 根据 url 和网页类型生成需要保存的网页的文件名 去除掉 url 中非文件名字符
	 */
	public String getFileNameByUrl(String url, String contentType) {
		// remove http://
		url = url.substring(7);
		// text/html类型
		String result = null;
		if (contentType.indexOf("html") != -1) {
			url = url.replaceAll("[\\?/:*|<>\"]", "_");
			result = url;
		}
		// 如application/pdf类型
		else {
			result = url.replaceAll("[\\?/:*|<>\"]", "_") + "."
					+ contentType.substring(contentType.lastIndexOf("/") + 1);
		}
		return result.length() > 255 ? result.substring(0, 255) : result;

	}

	/* 下载 url 指向的网页 */
	public String downloadFile(String url) {
		CloseableHttpClient httpclient = HttpClients.createDefault();
		String filePath = null;
		try {
			// 得到post方法
			HttpGet get = new HttpGet(url);
			System.out.println("downloading url->" + url);
			CloseableHttpResponse response = httpclient.execute(get);
			if (response.getStatusLine().getStatusCode() == HttpStatus.SC_OK) {
				filePath = FILE_ROOT + getFileNameByUrl(url, response.getFirstHeader("Content-Type").getValue());
				HttpEntity entity = response.getEntity();
				if (entity != null) {
					FileUtil.saveToLocal(EntityUtils.toByteArray(entity), filePath);
				}
			}
		} catch (IOException e) {
			// 发生网络异常
			e.printStackTrace();
		}
		return filePath;
	}

	public static void main(String[] args) {
		// DownLoadFile downloader = new DownLoadFile();
		// System.out.println(downloader.downloadFile("http://askcuix.iteye.com/blog/206492"));
	}
}