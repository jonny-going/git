package priv.gzz.mine.sentence;

import java.io.File;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import org.apache.log4j.Logger;

import priv.gzz.mine.sentence.model.EWord;
import priv.gzz.mine.sentence.model.SentenceTree;
import priv.gzz.mine.sentence.model.TreeRemark;
import priv.gzz.mine.util.Constants;
import priv.gzz.mine.util.FileUtil;
import priv.gzz.mine.util.StringUtil;
import static priv.gzz.mine.sentence.model.TreeRemark.*;

public class EWordsRecognition {
	private static Logger logger = Logger.getLogger(EWordsRecognition.class);

	public void exceute() throws Exception {
		String userPath = System.getProperty("user.dir") + File.separator;
		File inputPath = new File(userPath + Constants.OUTPUT_PATH_SENTENCE);
		FileUtil.checkPathRead(inputPath);
		List<EWord> allEWords = new ArrayList<EWord>();
		for (File file : inputPath.listFiles()) {
			String content = FileUtil.readFile(file);
			String[] treeStrings = content.split(Constants.SENTENCE_TREE_SEPERATOR);
			for (int i = 0; i < treeStrings.length; i++) {
				SentenceTree tree = SentenceTree.fromString(treeStrings[i]);
				List<EWord> list = recognize(tree, file, i);
				addToList(list, allEWords);
			}
		}
		File outputPath = new File(userPath + Constants.OUTPUT_PATH_EWORD);
		logger.info("Write the recognition result to file:" + outputPath + Constants.EWROD_FILENAME);
		FileUtil.writeFile(StringUtil.wordListToString(allEWords), outputPath, Constants.EWROD_FILENAME, false);
		logger.info("Emotional word recognition finished.");
	}

	/**
	 * 从一棵句法树中识别出情感词
	 * 
	 * @param tree
	 *            待分析的句法树
	 * @param doc
	 *            句子所在文档
	 * @param index
	 *            句子在文档中的位置
	 * @return
	 */
	public List<EWord> recognize(SentenceTree tree, File doc, int index) {
		List<EWord> result = new ArrayList<EWord>();
		if (tree == null || tree.getChildren() == null) {
			return result;
		}
		LinkedList<SentenceTree> stack = new LinkedList<SentenceTree>();
		for (SentenceTree s : tree.getChildren()) {
			stack.push(s);
		}
		while (!stack.isEmpty()) {
			SentenceTree currNode = stack.poll();
			if (currNode.getChildren() != null) {
				for (SentenceTree n : currNode.getChildren()) {
					stack.push(n);
				}
			} else if (currNode.getWord() != null) {
				if (validate(currNode)) {
					EWord eword = new EWord();
					eword.setWord(currNode.getWord());
					eword.setOwner(doc.getName());
					eword.setIndex(index);
					result.add(eword);
				}
			}
		}
		return result;
	}

	/**
	 * 验证当前节点的词是否是情感词
	 * 
	 * @param currNode
	 * @return
	 */
	private boolean validate(SentenceTree currNode) {
		boolean result = false;
		TreeRemark currMark = null;
		try {
			currMark = TreeRemark.valueOf(currNode.getWordClass());
		} catch (Exception e) {
			currMark = TreeRemark.DEFAULT;
		}
		switch (currMark) {
		case VP:
		case VV: { // 动词
			result = validateVerb(currNode);
			break;
		}
		case VA: // 形容词
		case JJ:
		case ADJP: {
			result = validateAdjective(currNode);
			break;
		}
		case NP:
		case NN: { // 常用名词
			result = validateNoun(currNode);
			break;
		}
		case AD: // 副词
		case ADVP: {
			result = validateAdverb(currNode);
			break;
		}
		default: {
			result = false;
		}
		}
		return result;
	}

	/**
	 * 校验副词是否是情感词
	 * 
	 * @param currNode
	 * @return
	 */
	private boolean validateAdverb(SentenceTree currNode) {

		return false;
	}

	/**
	 * 校验名词是否是情感词
	 * 
	 * @param currNode
	 * @return
	 */
	private boolean validateNoun(SentenceTree currNode) {
		if (currNode.getLeft() != null && containedIn(currNode.getLeft().getWordClass(), NN, NR, NT)) {
			// 当前词是用来修饰其他名词
			return false;
		}
		if (currNode.getRight() != null && containedIn(currNode.getRight().getWordClass(), NN, NR, NT)) {
			// 当前词是用来修饰其他名词
			return false;
		}
		SentenceTree p = currNode.getParent();
		if (p == null) {
			return false;
		}
		if (NP.toString().equals(p.getWordClass())) {
			if (p.getLeft() != null && containedIn(p.getLeft().getWordClass(), NP, VV, VE, VP, CP, ADJP)) {
				// 当前词是被修饰的对象
				return false;
			}
			if (p.getRight() != null && containedIn(p.getRight().getWordClass(), LC, NP)) {
				return false;
			}
		}

		return true;
	}

	/**
	 * 校验形容词是否是情感词
	 * 
	 * @param currNode
	 * @return
	 */
	private boolean validateAdjective(SentenceTree currNode) {

		return true;
	}

	/**
	 * 校验动词是否是情感词
	 * 
	 * @param currNode
	 * @return
	 */
	private boolean validateVerb(SentenceTree currNode) {
		if (currNode.getRight() != null && containedIn(currNode.getRight().getWordClass(), NN, NP, NR, NT)) {
			// 谓语+宾语
			return false;
		}
		if (currNode.getRight() != null && containedIn(currNode.getRight().getWordClass(), AS)) {
			// 动词+了
			return true;
		}
		SentenceTree p = currNode.getParent();
		if (p == null) {
			return false;
		}
		if (VP.toString().equals(p.getWordClass())) {
			if (p.getRight() != null && containedIn(p.getRight().getWordClass(), NN, NP, NR, NT)) {
				// 谓语+宾语
				return false;
			}
			if (p.getRight() != null && containedIn(p.getRight().getWordClass(), AS)) {
				// 动词+了
				return true;
			}
			if (p.getLeft() != null && containedIn(p.getLeft().getWordClass(), ADVP, ADJP, AD)) {
				// 副词+动词
				return true;
			}
		}
		if (VPT.toString().equals(p.getWordClass())) {
			if (p.getRight() != null && containedIn(p.getRight().getWordClass(), IP)) {
				// 谓词+宾语从句
				return false;
			}
		}
		if (currNode.getLeft() != null && containedIn(currNode.getLeft().getWordClass(), ADVP, ADJP, AD)) {
			// 副词/名词+动词
			return true;
		}
		return false;
	}

	/**
	 * 判断字符串值是否在枚举值列表中
	 * 
	 * @param wordClass
	 * @param remarks
	 * @return
	 */
	private boolean containedIn(String wordClass, TreeRemark... remarks) {
		for (TreeRemark remark : remarks) {
			TreeRemark mark = null;
			try {
				mark = TreeRemark.valueOf(wordClass);
			} catch (Exception e) {
				mark = DEFAULT;
			}
			if (remark.equals(mark)) {
				return true;
			}
		}
		return false;
	}

	private void addToList(List<EWord> list, List<EWord> all) {
		for (EWord w : list) {
			if (!StringUtil.isEmpty(w.getWord())) {
				all.add(w);
			}
		}
	}
}