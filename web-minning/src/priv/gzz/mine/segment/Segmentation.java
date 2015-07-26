package priv.gzz.mine.segment;

import java.io.File;
import java.util.List;
import java.util.Properties;

import org.apache.log4j.Logger;

import priv.gzz.mine.util.Constants;
import priv.gzz.mine.util.FileUtil;
import priv.gzz.mine.util.StringUtil;
import edu.stanford.nlp.ie.crf.CRFClassifier;
import edu.stanford.nlp.ling.CoreLabel;

public class Segmentation {
	private static Logger logger = Logger.getLogger(Segmentation.class);

	private static final String basedir = System.getProperty("SegDemo", "data");

	/**
	 * 提供单独运行分词程序
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		Segmentation segment = new Segmentation();
		try {
			segment.segment();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	}

	public void segment() throws Exception {
		String userPath = System.getProperty("user.dir") + File.separator;
		File inputPath = new File(userPath + Constants.INPUT_PATH);
		FileUtil.checkPathRead(inputPath);
		Properties props = new Properties();
		props.setProperty("sighanCorporaDict", basedir);
		props.setProperty("serDictionary", basedir + "/dict-chris6.ser.gz");
		props.setProperty("testFile", Constants.INPUT_PATH);
		props.setProperty("inputEncoding", Constants.ENCODING);
		props.setProperty("sighanPostProcessing", "true");

		CRFClassifier<CoreLabel> segmenter = new CRFClassifier<CoreLabel>(props);
		segmenter.loadClassifierNoExceptions(basedir + "/ctb.gz", props);
		File outputPath = new File(userPath + Constants.OUTPUT_PATH_SEGMENT);
		logger.info("The segment result will be write to: " + outputPath.getAbsolutePath());
		for (File inputFile : inputPath.listFiles()) {
			if (inputFile.getName().indexOf("txt") == -1) {
				continue;
			}
			String content = FileUtil.readFile(inputFile);
			List<String> segmented = segmenter.segmentString(content);
			FileUtil.writeFile(StringUtil.listToString(segmented), outputPath, inputFile.getName(), true);
		}
		logger.info("Segment finished.");
	}
}