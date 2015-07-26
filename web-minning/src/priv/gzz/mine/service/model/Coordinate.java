package priv.gzz.mine.service.model;

/**
 * 词坐标实体
 * 
 * @author Administrator
 *
 */
public class Coordinate {
	/* 所在文档 */
	private String doc;
	/* 在文档中的位置(第几个词) */
	private int index;

	public Coordinate(String doc, int index) {
		this.doc = doc;
		this.index = index;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append("(").append(doc).append("->").append(index).append(")");
		return sb.toString();
	}

	public String getDoc() {
		return doc;
	}

	public void setDoc(String doc) {
		this.doc = doc;
	}

	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}
}