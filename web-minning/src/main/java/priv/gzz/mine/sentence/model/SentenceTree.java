package priv.gzz.mine.sentence.model;

import java.util.ArrayList;
import java.util.List;

public class SentenceTree {
	private String wordClass;
	/* 词 */
	private String word;
	/* 父节点 */
	private SentenceTree parent;
	/* 左节点 */
	private SentenceTree left;
	/* 右节点 */
	private SentenceTree right;
	/* 子节点 */
	private List<SentenceTree> children;

	/**
	 * 从字符串构建一个树
	 * 
	 * @param string
	 * @return
	 */
	public static SentenceTree fromString(String string) {
		SentenceTree root = null;
		if (!checkFormat(string)) {
			return root;
		}
		string = deWrapString(string);
		int index = string.indexOf(" ");
		root = new SentenceTree();
		if (index == -1) {
			root.setWordClass(string);
			root.setWord("");
		} else {
			root.setWordClass(string.substring(0, index).trim());
			String[] childString = splitChildString(string.substring(index, string.length()));
			if (childString[0].indexOf("(") < 0) {
				root.setWord(string.substring(index, string.length()));
			} else {
				List<SentenceTree> child = new ArrayList<SentenceTree>();
				SentenceTree lastNode = null;
				for (String str : childString) {
					SentenceTree c = fromString(str);
					c.setParent(root);
					c.setLeft(lastNode);
					if (lastNode != null) {
						lastNode.setRight(c);
					}
					child.add(c);
					lastNode = c;
				}
				root.setChildren(child);
			}
		}
		return root;
	}

	/**
	 * 检查字符串格式的合法性
	 * 
	 * @param string
	 * @return
	 */
	private static boolean checkFormat(String string) {
		if (string.indexOf("(") == -1) {
			return false;
		}
		if (string.startsWith("(X")) {
			return false;
		}
		return true;
	}

	/**
	 * 解开字符串包装，即去除首尾的括号
	 * 
	 * @param string
	 * @return
	 */
	private static String deWrapString(String string) {
		string = string.trim().replace("\r\n", " ").replaceFirst("\\(", "");
		int index = string.lastIndexOf(")");
		if (index > 0) {
			string = string.substring(0, index);
		}
		return string.trim();
	}

	/**
	 * 把字符串拆解成子节点字符串数组
	 * 
	 * @param subString
	 * @return
	 */
	private static String[] splitChildString(String subString) {
		subString = subString.trim().replaceAll("\\s+", " ");
		String[] chars = subString.split("");
		int leftBrackets = 0;
		int lastIndex = 0;
		List<String> list = new ArrayList<String>();
		for (int i = 0; i < chars.length; i++) {
			if ("(".equals(chars[i])) {
				leftBrackets++;
			} else if (")".equals(chars[i])) {
				leftBrackets--;
			}
			if (leftBrackets == 0) {
				String testString = subString.substring(lastIndex, i + 1);
				if (testString != null && !"".equals(testString) && !" ".equals(testString)) {
					list.add(testString.trim());
					lastIndex = i + 1;
				}
			}
		}
		String[] result = new String[list.size()];
		list.toArray(result);
		return result;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append("(");
		sb.append(this.wordClass);
		if (this.word == null) {
			for (SentenceTree tree : this.children) {
				sb.append(" ").append(tree.toString());
			}
		} else {
			sb.append(this.word);
		}
		sb.append(")");
		return sb.toString();
	}

	public String getWordClass() {
		return wordClass;
	}

	public void setWordClass(String wordClass) {
		this.wordClass = wordClass;
	}

	public List<SentenceTree> getChildren() {
		return children;
	}

	public void setChildren(List<SentenceTree> children) {
		this.children = children;
	}

	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}

	public SentenceTree getParent() {
		return parent;
	}

	public void setParent(SentenceTree parent) {
		this.parent = parent;
	}

	public static void main(String[] args) {
		// String string =
		// "(ROOT (IP (VP (ADVP (AD ��)) (VP (VV ��) (NP (NP (NP (NR ����)) (NP (NN c))) (QP (CD 30)) (IP (VP (VE ��) (NP (NN ��)))) (NP (NN ����)))))))";
		String string = "(ROOT  (IP    (VP (VV ))))";
		SentenceTree tree = SentenceTree.fromString(string);
		System.out.println(tree);
	}

	public SentenceTree getLeft() {
		return left;
	}

	public void setLeft(SentenceTree left) {
		this.left = left;
	}

	public SentenceTree getRight() {
		return right;
	}

	public void setRight(SentenceTree right) {
		this.right = right;
	}
}