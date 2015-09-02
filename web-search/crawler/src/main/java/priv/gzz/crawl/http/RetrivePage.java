package priv.gzz.crawl.http;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import org.apache.commons.lang.StringUtils;
import org.apache.http.HttpEntity;
import org.apache.http.HttpException;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

public class RetrivePage {
	public static CloseableHttpClient httpclient = HttpClients.createDefault();
	private static final String FILE_ROOT = "E:/crawl/test/";
	static {
		// 设置代理服务器的IP地址和端口
		// httpClient.getHostConfiguration().setProxy("172.17.18.84", 8080);
		File root = new File(FILE_ROOT);
		if (!root.exists()) {
			if (!root.mkdirs()) {
				System.out.println("Can't create root->" + FILE_ROOT);
			}
		}
	}

	public static boolean downloadPage(String url) throws HttpException, IOException {
		OutputStream output = null;
		// 得到post方法
		HttpGet get = new HttpGet(url);
		System.out.println("Retriving url->" + url);
		String response = httpclient.execute(get, new ResponseHandler<String>() {
			public String handleResponse(final HttpResponse response) throws ClientProtocolException, IOException {
				int status = response.getStatusLine().getStatusCode();
				if (status >= 200 && status < 300) {
					HttpEntity entity = response.getEntity();
					return entity != null ? EntityUtils.toString(entity) : null;
				} else {
					throw new ClientProtocolException("Unexpected response status: " + status);
				}
			}
		});
		if (StringUtils.isNotEmpty(response)) {
			// 得到文件名
			String fileName = FILE_ROOT + url.substring(url.lastIndexOf('/') + 1);
			// 获得文件输出流
			System.out.println("Saving file->" + fileName);
			output = new FileOutputStream(fileName);
			output.write(response.getBytes());
			if (output != null) {
				output.close();
			}
			return true;
		}
		return false;
	}

	/**
	 * 测试代码
	 */
	public static void main(String[] args) {
		try {
			RetrivePage.downloadPage("http://askcuix.iteye.com/blog/206492");
		} catch (HttpException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}