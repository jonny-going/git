package priv.gzz.web.search.bean;

import org.apache.commons.lang3.StringUtils;

public class Index2 {
	public static final String SEPARATOR = "\\t";
	private String keyword;
	private Index2Item value;

	@Override
	public String toString() {
		StringBuilder index = new StringBuilder();
		index.append(keyword).append(SEPARATOR);
		index.append(value.toString());
		return index.toString();
	}

	public Index2(String str) throws Exception {
		if (StringUtils.isEmpty(str)) {
			throw new Exception("can't create instance for-->" + str);
		}
		String[] split = str.split("\\s|\\t");
		if (split.length != 2) {
			throw new Exception("can't create instance for-->" + str);
		}
		this.keyword = split[0].trim();
		this.value = new Index2Item(split[1].trim());
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public Index2Item getValue() {
		return value;
	}

	public void setValue(Index2Item value) {
		this.value = value;
	}

}
