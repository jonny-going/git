package priv.gzz.mine.util;

import java.util.List;

import priv.gzz.mine.sentence.model.EWord;

public class StringUtil {
	public static boolean isEmpty(String string) {
		return string == null || "".equals(string) || " ".equals(string);
	}

	public static String listToString(List<String> list) {
		if (list == null || list.size() == 0) {
			return "";
		}
		StringBuilder output = new StringBuilder();
		for (String str : list) {
			if (str != null && !"".equals(str)) {
				output.append(str).append("\t");
			}
		}
		return output.toString();
	}

	public static String wordListToString(List<EWord> list) {
		if (list == null || list.size() == 0) {
			return "";
		}
		StringBuilder output = new StringBuilder();
		for (EWord word : list) {
			output.append(word.toString()).append("\r\n");
		}
		return output.toString();
	}
}
