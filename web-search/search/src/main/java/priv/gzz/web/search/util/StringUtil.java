package priv.gzz.web.search.util;

public class StringUtil {
	public static String subString(String str, int start, int end) {
		int len = str.length();
		if (end >= len) {
			end = len - 1;
		}
		if (start < 0) {
			start = 0;
		}
		if (start > end) {
			start = end;
		}
		return str.substring(start, end);
	}
}
