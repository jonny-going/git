package priv.gzz.mine.sentence;

import java.io.File;
import java.io.PrintWriter;
import java.util.*;

import org.apache.log4j.Logger;

import priv.gzz.mine.util.Constants;
import priv.gzz.mine.util.FileUtil;
import edu.stanford.nlp.ling.HasWord;
import edu.stanford.nlp.ling.Word;
import edu.stanford.nlp.trees.*;
import edu.stanford.nlp.parser.lexparser.LexicalizedParser;

public class SentenceParser {
	private static Logger logger = Logger.getLogger(SentenceParser.class);

	private static String MODEL_FILE = "data/chineseFactored.ser.gz";

	private LexicalizedParser lp;

	public SentenceParser() {
	}

	/**
	 * This example shows a few more ways of providing input to a parser.
	 *
	 * Usage: ParserDemo2 [grammar [textFile]]
	 * 
	 * @throws Exception
	 */
	public void parse() throws Exception {
		String userPath = System.getProperty("user.dir") + File.separator;
		String[] options = { "-maxLength", "80" };
		lp = LexicalizedParser.loadModel(userPath + MODEL_FILE, options);
		File inputPath = new File(userPath + Constants.OUTPUT_PATH_SEGMENT);
		FileUtil.checkPathRead(inputPath);
		File outputPath = new File(userPath + Constants.OUTPUT_PATH_SENTENCE);
		if (!outputPath.exists()) {
			outputPath.mkdirs();
		} else {
			outputPath.delete();
			outputPath.mkdirs();
		}
		for (File source : inputPath.listFiles()) {
			logger.debug("Parsing file: " + source.getAbsolutePath());
			File output = new File(outputPath.getAbsolutePath() + File.separator + source.getName());
			parseDocument(source, new PrintWriter(output, Constants.ENCODING));
		}
		logger.info("Parse the sentence finished.");
	}

	/**
	 * 对文档中的句子进行句法分析，并将分析得到的句法树输出到输出流
	 * 
	 * @param doc
	 * @param output
	 */
	private void parseDocument(File doc, PrintWriter output) {
		String content = FileUtil.readFile(doc);
		Iterable<List<? extends HasWord>> sentences = parseSentences(content);

		for (List<? extends HasWord> sentence : sentences) {
			Tree parse = lp.parse(sentence);
			parse.pennPrint(output);
			output.write(Constants.SENTENCE_TREE_SEPERATOR);
			output.write("\r\n");
		}
	}

	/**
	 * 对文档进行分句，返回整个文档的按句子划分的词集
	 * 
	 * @param content
	 * @return
	 */
	private Iterable<List<? extends HasWord>> parseSentences(String content) {
		List<List<? extends HasWord>> result = new ArrayList<List<? extends HasWord>>();
		for (String sentence : content.split(Constants.SENTENCE_SEPERATORS)) {
			List<HasWord> s = new ArrayList<HasWord>();
			for (String word : sentence.split("\\s")) {
				s.add(new Word(word));
			}
			result.add(s);
		}
		return result;
	}
}