package priv.gzz.mine.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

public class FileUtil {
	public static String readFile(File file) {
		BufferedReader reader = null;
		StringBuilder content = new StringBuilder();
		try {
			reader = new BufferedReader(new InputStreamReader(new FileInputStream(file), Constants.ENCODING));
			String line = null;
			while ((line = reader.readLine()) != null) {
				content.append(line);
			}
			reader.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (reader != null) {
				try {
					reader.close();
				} catch (IOException e1) {
				}
			}
		}
		return content.toString();
	}

	public static List<String> readFileByLine(File file) {
		BufferedReader reader = null;
		List<String> lines = new ArrayList<String>();
		try {
			reader = new BufferedReader(new InputStreamReader(new FileInputStream(file), Constants.ENCODING));
			String line = null;
			while ((line = reader.readLine()) != null) {
				lines.add(line);
			}
			reader.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (reader != null) {
				try {
					reader.close();
				} catch (IOException e1) {
				}
			}
		}
		return lines;
	}

	public static void writeFile(String string, File outPath, String fileName, boolean append) {
		try {
			if (!outPath.exists()) {
				outPath.mkdirs();
			}
			File output = new File(outPath.getAbsolutePath() + File.separator + fileName);
			if (!output.exists()) {
				output.createNewFile();
			}
			FileOutputStream out = new FileOutputStream(output, append);
			out.write(string.getBytes(Constants.ENCODING));
			out.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {
		// writeFile("test", new File("F:/"), "text.txt", true);
		try {
			checkPathRead(new File("F:\\empty"));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 检测要读取的目录
	 * 
	 * @param path
	 * @throws Exception
	 */
	public static void checkPathRead(File path) throws Exception {
		if (path == null || !path.exists()) {
			throw new Exception("Path do not exists: " + path);
		}
		if (!path.isDirectory()) {
			throw new Exception("Path is not direction: " + path.getAbsolutePath());
		}
		if (!path.canRead()) {
			throw new Exception("Can't read this path: " + path.getAbsolutePath());
		}
		if (path.listFiles().length == 0) {
			throw new Exception("Path is an empty direction.");
		}
	}

	/**
	 * 检测要读取的文件
	 * 
	 * @param file
	 * @throws Exception
	 */
	public static void checkFileRead(File file) throws Exception {
		if (file == null || !file.exists()) {
			throw new Exception("File do not exists: " + file);
		}
		if (file.isDirectory()) {
			throw new Exception("File is direction: " + file.getAbsolutePath());
		}
		if (!file.canRead()) {
			throw new Exception("Can't read this file: " + file.getAbsolutePath());
		}
	}

	/**
	 * 检测要写入的目录
	 * 
	 * @param path
	 * @throws Exception
	 */
	public static void checkPathWrite(File path) throws Exception {
		if (path != null && path.exists()) {
			if (!path.isDirectory()) {
				throw new Exception("Path is not direction: " + path.getAbsolutePath());
			}
			if (!path.canWrite()) {
				throw new Exception("Can't write this path: " + path.getAbsolutePath());
			}
		}
	}
}