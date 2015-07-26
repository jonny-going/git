package priv.gzz.mine.sentence.model;

/**
 * 句法分析树标注集
 * 
 * @author Administrator
 *
 */
public enum TreeRemark {
	DEFAULT, // 默认
	ROOT, // 要处理文本的语句
	IP, // 简单从句
	NP, // 名词短语
	VP, // 动词短语
	PU, // 断句符，通常是句号、问号、感叹号等标点符号
	LCP, // 方位词短语
	PP, // 介词短语
	CP, // 由‘的’构成的表示修饰性关系的短语
	DNP, // 由‘的’构成的表示所属关系的短语
	ADVP, // 副词短语
	ADJP, // 形容词短语
	JJ, // 算形容词？
	DP, // 限定词短语
	QP, // 量词短语
	AD, // 副词
	LC, // 方位词

	NN, // 常用名词
	NR, // 固有名词
	NT, // 时间名词
	PN, // 代词
	VV, // 动词
	VC, // 是
	CC, // 不是
	VE, // 有
	VA, // 表语形容词
	AS, // 内容标记（如：了）
	VRD, // 动补复合词
	CD, VPT, SP // unknown
}