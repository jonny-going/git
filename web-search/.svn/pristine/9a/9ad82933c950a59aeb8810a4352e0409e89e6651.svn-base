package priv.gzz.web.search.bean;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;

public class Index1 {
	public static final String SEPARATOR_OUTER = "\\t";
	public static final String SEPARATOR_INNER = ";";
	private String keyword;
	private List<Index1Item> value;

	@Override
	public String toString() {
		StringBuilder index = new StringBuilder();
		index.append(keyword).append(SEPARATOR_OUTER);
		index.append(value.toString());
		return index.toString();
	}

	public Index1(String str) throws Exception {
		if (StringUtils.isEmpty(str)) {
			throw new Exception("can't create instance for-->" + str);
		}
		String[] split = str.split("\\s|\\t");
		if (split.length != 2) {
			throw new Exception("can't create instance for-->" + str);
		}
		this.keyword = split[0].trim();
		String[] items = split[1].split(SEPARATOR_INNER);
		this.value = new ArrayList<Index1Item>();
		for (String item : items) {
			value.add(new Index1Item(item));
		}
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public List<Index1Item> getValue() {
		return value;
	}

	public void setValue(List<Index1Item> value) {
		this.value = value;
	}
}