package priv.gzz.mine.sentence.model;

/**
 * 情感词实体
 * 
 * @author Administrator
 *
 */
public class EWord {
	private static final String seperator = "#";
	/* 情感词 */
	private String word;
	/* 所在文件 */
	private String owner;
	/* 所在文件的第几个句子 */
	private int index;
	/* 情感极性[-1:贬义, 0:中性, 1:褒义] */
	private int polarity = 0;
	/* 置信度 */
	private float confidence = 0;

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append(word).append(seperator).append(owner);
		sb.append(seperator).append(index).append(seperator).append(polarity);
		sb.append(seperator).append(confidence);
		return sb.toString();
	}

	/**
	 * 从字符串中转换成情感词对象
	 * 
	 * @param str
	 * @return
	 * @throws Exception
	 */
	public static EWord fromString(String str) throws Exception {
		String[] split = str.split(seperator);
		if (split.length < 3) {
			throw new Exception("Argument error.");
		}
		EWord word = new EWord();
		word.setWord(split[0].trim());
		word.setOwner(split[1]);
		word.setIndex(Integer.parseInt(split[2]));
		word.setPolarity(split.length >= 4 ? Integer.parseInt(split[3]) : 0);
		word.setConfidence(split.length >= 5 ? Float.parseFloat(split[4]) : 0);
		return word;
	}

	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}

	public int getPolarity() {
		return polarity;
	}

	public void setPolarity(int polarity) {
		this.polarity = polarity;
	}

	public float getConfidence() {
		return confidence;
	}

	public void setConfidence(float confidence) {
		this.confidence = confidence;
	}
}