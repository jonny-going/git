package priv.gzz.mine.classify.model;

import java.text.MessageFormat;
import java.util.Arrays;

import priv.gzz.mine.util.Constants;

public class OutputFormater {
	/* 输出格式 */
	private static String format = "8\t15\t12\t20\t8\t85\t12";
	/* 结果编号 */
	private int id;
	/* 学号 */
	private String studentNo;
	/* 情感词 */
	private String wordString;
	/* 情感词极性 */
	private Polarity wordPolarity;
	/* 所在文档编号 */
	private String docId;
	/* 情感词所在上下文内容 */
	private String contentString;
	/* 情感词极性的置信度 */
	private float confidenceScore;

	public static void printTitle(StringBuilder sb) {
		sb.append(format("序号", "学号", "情感词", "文档编号", "极性", "所在上下文", "置信度"));
		sb.append("\r\n");
	}

	@Override
	public String toString() {
		return format(this.id, Constants.STUDENT_NO, this.wordString, this.docId, this.wordPolarity,
				this.contentString, MessageFormat.format("{0, number, #.##}", confidenceScore));
	}

	public static void main(String[] args) {
		StringBuilder sb = new StringBuilder();
		printTitle(sb);
		System.out.print(sb.toString());
		OutputFormater test = new OutputFormater();
		test.setId(1);
		test.setStudentNo("aaa");
		test.setWordString("bbbbbbbbbb");
		test.setDocId("1.txt");
		test.setWordPolarity(Polarity.getByValue(1));
		test.setContentString("fffffffffffffffffffffffffffffffffffffffffffffffffffff");
		test.setConfidenceScore(0.555555555f);
		System.out.println(test);
		String str1 = "长城做的算是不错的了硬塑料无力吐槽储物盒档杆看着还挺有档次的后排空间不错啊4s送的贴膜质量一般招手即停哈哈大鹏展翅磨合期油耗有点高啊百公里差不多有七八个油下午忘记拍钥匙了现在补一张认证神器版主能不能给精认证一下啊";
		String str2 = "ffffffvvbbbbb";
		System.out.println(rightPad(str1, 85));
		System.out.println(rightPad(str2, 85));
	}

	private static String format(Object... items) {
		StringBuilder sb = new StringBuilder();
		String[] formats = format.split("\t");
		for (int i = 0; i < formats.length; i++) {
			int len = Integer.parseInt(formats[i]);
			if (i < items.length) {
				String itemString = items[i].toString();
				sb.append(rightPad(itemString, len));
			} else {
				sb.append(rightPad("", len));
			}
		}
		return sb.toString();
	}

	private static String rightPad(String string, int len) {
		int currLen = 0;
		char[] temp = new char[len * 2];
		int index = 0;
		for (; index < string.length() && currLen <= len; index++) {
			char c = string.charAt(index);
			if (isChinese(c)) {
				currLen += 2;
			} else {
				currLen++;
			}
			temp[index] = c;
		}
		if (currLen < len) {
			for (; currLen < len; currLen++) {
				temp[index] = ' ';
				index++;
			}
		}
		return new String(Arrays.copyOfRange(temp, 0, index));
	}

	private static boolean isChinese(char c) {
		Character.UnicodeBlock ub = Character.UnicodeBlock.of(c);
		if (ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS
				|| ub == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS
				|| ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A
				|| ub == Character.UnicodeBlock.GENERAL_PUNCTUATION
				|| ub == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION
				|| ub == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS) {
			return true;
		}
		return false;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStudentNo() {
		return studentNo;
	}

	public void setStudentNo(String studentNo) {
		this.studentNo = studentNo;
	}

	public String getWordString() {
		return wordString;
	}

	public void setWordString(String wordString) {
		this.wordString = wordString;
	}

	public Polarity getWordPolarity() {
		return wordPolarity;
	}

	public void setWordPolarity(Polarity wordPolarity) {
		this.wordPolarity = wordPolarity;
	}

	public String getDocId() {
		return docId;
	}

	public void setDocId(String docId) {
		this.docId = docId;
	}

	public String getContentString() {
		return contentString;
	}

	public void setContentString(String contentString) {
		this.contentString = contentString;
	}

	public float getConfidenceScore() {
		return confidenceScore;
	}

	public void setConfidenceScore(float confidenceScore) {
		this.confidenceScore = confidenceScore;
	}
}