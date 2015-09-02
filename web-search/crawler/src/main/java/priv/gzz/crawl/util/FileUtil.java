package priv.gzz.crawl.util;

import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;

public class FileUtil {
	/**
	 * 保存网页字节数组到本地文件 filePath 为要保存的文件的相对地址
	 */
	public static void saveToLocal(byte[] data, String filePath) {
		try {
			System.out.println("Saving file->" + filePath);
			DataOutputStream out = new DataOutputStream(new FileOutputStream(new File(filePath)));
			for (int i = 0; i < data.length; i++)
				out.write(data[i]);
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static void appendFile(String fileName, String content) {
		try {
			// 打开一个写文件器，构造函数中的第二个参数true表示以追加形式写文件
			FileWriter writer = new FileWriter(fileName, true);
			writer.write(content);
			writer.write("\r\n");
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static void emptyDir(String dir) {
		deleteDir(dir);
		new File(dir).mkdirs();
	}

	public static void deleteDir(String dir) {
		File path = new File(dir);
		if (path.isDirectory()) {
			String[] list = path.list();
			for (String fileName : list) {
				File file = new File(fileName);
				if (file.isDirectory()) {
					deleteDir(fileName);
				} else {
					file.delete();
				}
			}
		} else {
			path.delete();
		}
	}
}
