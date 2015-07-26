package priv.gzz.mine.classify.model;

/**
 * 情感词极性枚举类型
 * 
 * @author Administrator
 *
 */
public enum Polarity {
	pos(1), // 褒义
	neu(0), // 中性
	neg(-1); // 贬义
	private int value;

	private Polarity(int value) {
		this.value = value;
	}

	public static Polarity getByValue(int value) {
		for (Polarity p : Polarity.values()) {
			if (p.value == value) {
				return p;
			}
		}
		return neu;
	}
}