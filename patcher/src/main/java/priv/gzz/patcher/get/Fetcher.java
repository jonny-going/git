package priv.gzz.patcher.get;

import java.io.File;
import java.io.FileFilter;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

public class Fetcher {
	private static String rootPath = "E:\\workspace_wfm\\VisionWFM\\";

	private static long MAX_MODIFIED_MIS = 3600 * 24 * 7 * 1000;

	private Pattern filePattern = Pattern.compile("(^[\\.].*)|(^bin$)|(^build$)");

	private FileFilter filter = new java.io.FileFilter() {
		public boolean accept(File file) {
			if (!filePattern.matcher(file.getName()).find()) {
				if (file.isFile()) {
					long currMis = System.currentTimeMillis();
					if (currMis - file.lastModified() < MAX_MODIFIED_MIS) {
						return true;
					}
				} else {
					return true;
				}
			}
			return false;
		}
	};

	public static void main(String[] args) {
		Fetcher fetcher = new Fetcher();
		System.out.println(fetcher.scanModified(new File(rootPath)));
	}

	public List<File> scanModified(File path) {
		List<File> result = new ArrayList<File>();
		for (File file : path.listFiles(filter)) {
			if (file.isDirectory()) {
				result.addAll(scanModified(file));
			} else {
				result.add(file);
			}
		}
		return result;
	}
}