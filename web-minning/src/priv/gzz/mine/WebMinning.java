package priv.gzz.mine;

import java.io.BufferedInputStream;
import java.util.Scanner;

import org.apache.log4j.Logger;

import priv.gzz.mine.classify.PmiClassifier;
import priv.gzz.mine.sentence.EWordsRecognition;
import priv.gzz.mine.sentence.SentenceParser;

public class WebMinning {
	private static Logger logger = Logger.getLogger(WebMinning.class);
	/* 分词器 */
	// private Segmentation segment = new Segmentation();
	/* 词法分析器 */
	private SentenceParser parser = new SentenceParser();
	/* 情感词识别器 */
	private EWordsRecognition recognition = new EWordsRecognition();
	/* 情感词分类器 */
	private PmiClassifier pmi = new PmiClassifier();

	public static void main(String[] args) {
		WebMinning minning = new WebMinning();
		if (args.length > 0 && "-console".equals(args[0])) {
			// 通过命令方式运行
			minning.stepByStep();
		} else {
			// 一步到位的方式运行
			minning.allInOne();
		}
	}

	/**
	 * 控制台中分步运行
	 */
	private void stepByStep() {
		printUsage();
		Scanner input = null;
		while (true) {
			input = new Scanner(new BufferedInputStream(System.in));
			int inputInt = 0;
			try {
				inputInt = Integer.parseInt(input.nextLine());
			} catch (Exception e) {
				inputInt = -1;
			}
			if (inputInt == 0) {
				break;
			} else if (inputInt > 0) {
				this.run(inputInt);
			}
			this.printUsage();
		}
		System.out.println("Byebye.");
		input.close();
	}

	/**
	 * 完整运行
	 */
	private void allInOne() {
		this.run(15);
	}

	/**
	 * 以掩码的方式运行程序的4个部分
	 * 
	 * @param mark
	 */
	private void run(int mark) {
		try {
			if ((mark & 1) == 1) {
				logger.info("////////////////////////Segmentation Begin///////////////////////////////");
				logger.info("由于运行斯坦福中文分词工具需要上传100多M的词典，且jar包与句法分析工具的");
				logger.info("jar包存在冲突，所以分词需要另外单独运行。");
				// segment.segment();
				logger.info("////////////////////////Segmentation End/////////////////////////////////");
			}
			if ((mark & 2) == 2) {
				logger.info("////////////////////////Sentence Parser Begin////////////////////////////");
				parser.parse();
				logger.info("////////////////////////Sentence Parser End//////////////////////////////");
			}
			if ((mark & 4) == 4) {
				logger.info("////////////////////////Emotional Words Recognition Begin////////////////");
				recognition.exceute();
				logger.info("////////////////////////Emotional Words Recognition End//////////////////");
			}
			if ((mark & 8) == 8) {
				logger.info("////////////////////////Emotional Words Classfing Begin//////////////////");
				pmi.classify();
				logger.info("////////////////////////Emotional Words Classfing End////////////////////");
			}
		} catch (Exception e) {
			logger.warn(e.getMessage(), e);
		}
	}

	/**
	 * 向控制台打印程序的使用方法
	 */
	private void printUsage() {
		System.out.println("Usage: ");
		System.out.println("\t0. exit");
		System.out.println("\t1. segment");
		System.out.println("\t2. sentence parse");
		System.out.println("\t4. emotional word recognition");
		System.out.println("\t8. emotional word classify");
		System.out.println("Please enter the sum of numbers to run this program. ");
		System.out.println("For example, enter 3 to run segment and sentence parse(1+2).");
	}
}