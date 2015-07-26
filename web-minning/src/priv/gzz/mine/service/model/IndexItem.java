package priv.gzz.mine.service.model;

import java.util.ArrayList;
import java.util.List;

/**
 * 索引项
 * 
 * @author Administrator
 *
 */
public class IndexItem {
	/* 词 */
	private String word;
	/* 词坐标集, 即当前词出现在哪个文档的什么位置 */
	private List<Coordinate> coordinateList;

	public void addCoordinate(Coordinate cod) {
		if (this.coordinateList == null) {
			this.coordinateList = new ArrayList<Coordinate>();
		}
		this.coordinateList.add(cod);
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append(word).append("@").append(coordinateList);
		return sb.toString();
	}

	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}

	public List<Coordinate> getCoordinateList() {
		return coordinateList;
	}

	public void setCoordinateList(List<Coordinate> coordinateList) {
		this.coordinateList = coordinateList;
	}
}