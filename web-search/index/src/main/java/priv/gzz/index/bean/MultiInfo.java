package priv.gzz.index.bean;

import org.apache.commons.lang.StringUtils;

import priv.gzz.index.util.Constant;

public class MultiInfo {
	private String did;
	private int count = 0;
	private StringBuilder offsetList = new StringBuilder();

	@Override
	public String toString() {
		StringBuilder str = new StringBuilder();
		str.append(did).append(Constant.INFO_SEPARATOR_INNER);
		str.append(count).append(Constant.INFO_SEPARATOR_INNER);
		str.append(offsetList.toString());
		return str.toString();
	}

	public MultiInfo(String info) throws Exception {
		if (StringUtils.isEmpty(info)) {
			throw new Exception("Info error->" + info);
		}
		String[] infoArray = info.split(Constant.INFO_SEPARATOR_INNER);
		if (infoArray.length != 3) {
			throw new Exception("Info error->" + info);
		}
		this.did = infoArray[0];
		this.count = Integer.valueOf(infoArray[1]);
		this.offsetList.append(infoArray[2]);
	}

	public void appendOffset(String offset) {
		if (offsetList.length() == 0) {
			offsetList.append(offset);
		} else {
			offsetList.append(",").append(offset);
		}
	}

	public String getOffset() {
		return offsetList.toString();
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
}