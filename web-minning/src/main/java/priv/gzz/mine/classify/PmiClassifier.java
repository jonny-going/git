package priv.gzz.mine.classify;

import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.log4j.Logger;

import priv.gzz.mine.classify.model.OutputFormater;
import priv.gzz.mine.classify.model.Polarity;
import priv.gzz.mine.sentence.model.EWord;
import priv.gzz.mine.service.ReportService;
import priv.gzz.mine.util.Constants;
import priv.gzz.mine.util.FileUtil;
import priv.gzz.mine.util.StringUtil;

/**
 * JDK1.8版本的PMI情感词分类器
 * 
 * @author Administrator
 *
 */
public class PmiClassifier {
	private Logger logger = Logger.getLogger(PmiClassifier.class);

	private final String NEGATIVE_FILE = "data/negative.txt";

	private final String POSITIVE_FILE = "data/positive.txt";

	private String userPath;
	/* 贬义情感词集 */
	private Set<String> negativeSet;
	/* 褒义情感词集 */
	private Set<String> positiveSet;
	/* 待处理情感词 */
	private List<EWord> ewordsList;

	private ReportService report;

	/**
	 * 加载基础情感词集：褒义词集和贬义词集
	 */
	private void loadWordSet() throws Exception {
		File negativeFile = new File(userPath + NEGATIVE_FILE);
		FileUtil.checkFileRead(negativeFile);
		File positiveFile = new File(userPath + POSITIVE_FILE);
		FileUtil.checkFileRead(positiveFile);
		logger.info("Loading negative word set...");
		List<String> negativeList = FileUtil.readFileByLine(negativeFile);
		negativeSet = listToSet(negativeList);
		logger.info("Loading positive word set...");
		List<String> positiveList = FileUtil.readFileByLine(positiveFile);
		positiveSet = listToSet(positiveList);
	}

	/**
	 * 加载待处理的情感词集
	 * 
	 * @param path
	 * @throws Exception
	 */
	private void loadEWords() throws Exception {
		File ewordPath = new File(userPath + Constants.OUTPUT_PATH_EWORD);
		FileUtil.checkPathRead(ewordPath);
		logger.info("Loading emotional words...");
		ewordsList = new ArrayList<EWord>();
		for (File file : ewordPath.listFiles()) {
			List<String> tempList = FileUtil.readFileByLine(file);
			for (String str : tempList) {
				try {
					ewordsList.add(EWord.fromString(str));
				} catch (Exception e) {
					logger.error("Parsing eword error:" + str);
				}
			}
		}
	}

	/**
	 * List转为Set
	 * 
	 * @param list
	 * @return
	 */
	private static Set<String> listToSet(List<String> list) {
		Set<String> result = new HashSet<String>();
		for (String str : list) {
			if (!StringUtil.isEmpty(str)) {
				str = str.replace("\r\n", "").trim();
				result.add(str);
			}
		}
		return result;
	}

	public void classify() throws Exception {
		userPath = System.getProperty("user.dir") + File.separator;
		loadWordSet();
		loadEWords();
		report = new ReportService();
		report.init(userPath + Constants.OUTPUT_PATH_SEGMENT);
		recognizePolar();
		calulateConfidence();
		printTop(100);

		String outputPath = userPath + Constants.OUTPUT_PATH_EWORD + File.separator;
		logger.info("Write the emotional word result to file:" + outputPath + Constants.EWROD_FILENAME);
		String ewordResult = StringUtil.wordListToString(ewordsList);
		FileUtil.writeFile(ewordResult, new File(outputPath), Constants.EWROD_FILENAME, false);

		String resultPath = userPath + Constants.OUTPUT_PATH + File.separator;
		StringBuilder result = new StringBuilder();
		printTop(result, Integer.MAX_VALUE);
		logger.info("Write the final result to file: " + resultPath + Constants.RESULT_FILENAME);
		FileUtil.writeFile(result.toString(), new File(resultPath), Constants.RESULT_FILENAME, false);
		logger.info("Emotional word classifing finished.");
	}

	/**
	 * 识别情感词的极性
	 */
	private void recognizePolar() {
		logger.info("Start to analyse polar of the words.");
		for (EWord word : ewordsList) {
			if (positiveSet.contains(word.getWord())) {
				word.setPolarity(1);
				continue;
			}
			if (negativeSet.contains(word.getWord())) {
				word.setPolarity(-1);
				continue;
			}
			double positivePmi = calculatePmi(positiveSet, word.getWord());
			double negativePmi = calculatePmi(negativeSet, word.getWord());
			double coPmi = positivePmi - negativePmi;
			logger.debug(word.getWord() + ": PositivePMI=" + positivePmi + ", NegativePMI=" + negativePmi);
			if (coPmi > Constants.POLAR_THRESHOLD) {
				word.setPolarity(1); // 褒义
			} else if (coPmi < -Constants.POLAR_THRESHOLD) {
				word.setPolarity(-1); // 贬义
			} else {
				word.setPolarity(0); // 中性
			}
		}
	}

	/**
	 * 计算每个情感词的置信度，并从高到低排名
	 */
	private void calulateConfidence() {
		logger.info("Calculate the confidence of the emotional words...");
		for (EWord word : ewordsList) {
			Set<String> wordSet = null;
			if (word.getPolarity() == 0) {
				continue;
			} else if (word.getPolarity() == -1) {
				wordSet = negativeSet;
			} else {
				wordSet = positiveSet;
			}
			int word1Count = report.countWord(word.getWord());
			int coexistsCount = 0;
			coexistsCount += report.countDistinctCoexist(word.getWord(), wordSet);
			word.setConfidence((float) coexistsCount / word1Count);
		}
		ewordsList.sort(new Comparator<EWord>() {
			@Override
			public int compare(EWord w1, EWord w2) {
				float gap = w1.getConfidence() - w2.getConfidence();
				if (gap > 0) {
					return -1;
				} else if (gap < 0) {
					return 1;
				}
				return 0;
			}
		});
	}

	/**
	 * 输出排名前N个情感词(按置信度排名)
	 * 
	 * @param num
	 */
	private void printTop(int num) {
		StringBuilder sb = new StringBuilder();
		sb.append("The emotional words of the top ").append(num).append(": \r\n");
		printTop(sb, num);
		logger.info(sb.toString());
	}

	/**
	 * 输出排名前N个情感词(按置信度排名)
	 * 
	 * @param sb
	 * @param topNum
	 */
	private void printTop(StringBuilder sb, int topNum) {
		OutputFormater.printTitle(sb);
		Set<String> distinctSet = new HashSet<String>();
		for (int i = 0; distinctSet.size() < topNum && i < ewordsList.size(); i++) {
			EWord eword = ewordsList.get(i);
			if (!distinctSet.contains(eword.getWord())) {
				OutputFormater format = formatEWord(ewordsList.get(i));
				format.setId(distinctSet.size() + 1);
				sb.append(format).append("\r\n");
				distinctSet.add(eword.getWord());
			}
		}
	}

	/**
	 * 格式化情感词的输出内容
	 * 
	 * @param eWord
	 * @return
	 */
	private OutputFormater formatEWord(EWord eWord) {
		OutputFormater format = new OutputFormater();
		format.setStudentNo(Constants.STUDENT_NO);
		format.setWordString(eWord.getWord());
		format.setDocId(eWord.getOwner());
		format.setWordPolarity(Polarity.getByValue(eWord.getPolarity()));
		format.setConfidenceScore(eWord.getConfidence());
		format.setContentString(getContextByEWord(eWord));
		return format;
	}

	/**
	 * 根据情感词属性，获取其上下文内容
	 * 
	 * @param eWord
	 * @return
	 */
	private String getContextByEWord(EWord eWord) {
		File doc = new File(userPath + Constants.OUTPUT_PATH_SEGMENT + File.separator + eWord.getOwner());
		String content = FileUtil.readFile(doc);
		if (!StringUtil.isEmpty(content)) {
			String[] sentences = content.split(Constants.SENTENCE_SEPERATORS);
			if (sentences.length >= eWord.getIndex()) {
				// 去除分词间的空白
				return sentences[eWord.getIndex()].replaceAll("\\s", "");
			}
		}
		return "";
	}

	/**
	 * 计算某个词与情感词集的PMI值
	 * 
	 * @param wordSet
	 * @param word
	 * @return
	 */
	private double calculatePmi(Set<String> wordSet, String word) {
		double sum = 0;
		float p1 = new Float(report.countWord(word)) / report.totalWords();
		for (String seed : wordSet) {
			float p2 = new Float(report.countWord(seed)) / report.totalWords();
			float p12 = new Float(report.countCoexist(word, seed)) / report.totalWords();
			sum += pmi(p1, p2, p12);
		}
		return sum;
	}

	/**
	 * 点互信息计算公式
	 * 
	 * @param p1
	 * @param p2
	 * @param p12
	 * @return
	 */
	private double pmi(float p1, float p2, float p12) {
		if (p1 == 0 || p2 == 0 || p12 == 0) {
			return 0;
		}
		return Math.log(p12 / (p1 * p2)) / Math.log(2);
	}
}