package priv.gzz.web.search.bean;

import org.apache.commons.lang3.StringUtils;

public class Index2Item {
	public static final String SEPARATOR = "#";
	private String fileName;
	private int offset;

	@Override
	public String toString() {
		StringBuilder index = new StringBuilder();
		index.append(fileName).append(SEPARATOR);
		index.append(offset);
		return index.toString();
	}

	public Index2Item(String str) throws Exception {
		if (StringUtils.isEmpty(str)) {
			throw new Exception("can't create instance for-->" + str);
		}
		String[] split = str.split("#");
		if (split.length != 2) {
			throw new Exception("can't create instance for-->" + str);
		}
		this.fileName = split[0];
		this.offset = Integer.valueOf(split[1]);
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}

}
