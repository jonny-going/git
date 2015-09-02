package priv.gzz.web.search.bean;

import org.apache.commons.lang3.StringUtils;

public class Index1Item {
	public static final String SEPARATOR = "#";
	public static final String SEPARATOR_OFFSET = ",";
	private String did;
	private int count;
	private String[] offset;

	@Override
	public String toString() {
		StringBuilder index = new StringBuilder();
		index.append(did).append(SEPARATOR);
		index.append(count).append(SEPARATOR);
		index.append(offset);
		for (String item : offset) {
			index.append(item).append(SEPARATOR_OFFSET);
		}
		index.deleteCharAt(index.length() - 1);
		return index.toString();
	}

	public Index1Item(String str) throws Exception {
		if (StringUtils.isEmpty(str)) {
			throw new Exception("can't create instance for-->" + str);
		}
		String[] split = str.split("#");
		if (split.length != 3) {
			throw new Exception("can't create instance for-->" + str);
		}
		this.did = split[0];
		this.count = Integer.valueOf(split[1]);
		this.offset = split[2].split(SEPARATOR_OFFSET);
	}

	public String getDid() {
		return did;
	}

	public void setDid(String did) {
		this.did = did;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String[] getOffset() {
		return offset;
	}

	public void setOffset(String[] offset) {
		this.offset = offset;
	}

}
