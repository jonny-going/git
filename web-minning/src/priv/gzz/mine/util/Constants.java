package priv.gzz.mine.util;

public class Constants {
	public static final String AUTHOR_NAME = "龚召忠";

	public static final String STUDENT_NO = "1140332052";
	/* 字符编码 */
	public static final String ENCODING = "UTF-8";
	/* 句子分隔符 */
	public final static String SENTENCE_SEPERATORS = "，|。|；|？|！|,|\\.|;|\\?|!";
	/* 句法树间的分隔符 */
	public static final String SENTENCE_TREE_SEPERATOR = "####";
	/* 判断极性的阈值，即[-1,1]之间，在0左右超出多少则判断为极性情感词，否则为中性词 */
	public static final double POLAR_THRESHOLD = 0.1;
	/* 判断两个词同时出现时，词与词之间的距离最大值 */
	public static final int WORD_MAX_DISTANCE = 10;
	/* 语料库存放的路径 */
	public final static String INPUT_PATH = "test";
	/* 所有输出结果存放路径 */
	public final static String OUTPUT_PATH = "output";
	/* 分词结果输出路径 */
	public final static String OUTPUT_PATH_SEGMENT = OUTPUT_PATH + "/segment";
	/* 句法分析结果输出路径 */
	public final static String OUTPUT_PATH_SENTENCE = OUTPUT_PATH + "/trees";
	/* 情感词识别及情感倾向分析结果输出路径 */
	public final static String OUTPUT_PATH_EWORD = OUTPUT_PATH + "/ewords";
	/* 情感词输出文件 */
	public final static String EWROD_FILENAME = "ewords.txt";
	/* 最终结果输出文件 */
	public final static String RESULT_FILENAME = "result.txt";
}
