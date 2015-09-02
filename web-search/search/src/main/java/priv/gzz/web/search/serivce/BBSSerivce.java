package priv.gzz.web.search.serivce;

import java.io.StringReader;
import java.util.HashSet;
import java.util.Set;

import org.apache.lucene.analysis.TokenStream;
import org.apache.lucene.analysis.tokenattributes.CharTermAttribute;
import org.wltea.analyzer.lucene.IKAnalyzer;

import priv.gzz.web.search.bean.BBSContent;
import priv.gzz.web.search.bean.Paging;
import priv.gzz.web.search.dao.HdfsDao;
import priv.gzz.web.search.dao.MysqlDao;

public class BBSSerivce {

	public static Paging<BBSContent> queryByKeyword(String keyword, Paging<BBSContent> paging) {
		IKAnalyzer analyzer = new IKAnalyzer();
		Set<String> kyList = new HashSet<String>();
		try {
			TokenStream tokenStream = analyzer.tokenStream("content", new StringReader(keyword));
			tokenStream.addAttribute(CharTermAttribute.class);
			tokenStream.reset();
			while (tokenStream.incrementToken()) {
				CharTermAttribute charTermAttribute = (CharTermAttribute) tokenStream
						.getAttribute(CharTermAttribute.class);
				kyList.add(charTermAttribute.toString());
			}
			System.out.println(kyList);
			tokenStream.end();
			tokenStream.close();
			analyzer.close();
			Paging<Long> result = HdfsDao.findDidByKeywords(kyList, paging.getMaxSize(), paging.getCurrentPage());
			paging.setResult(MysqlDao.queryBbsList(result.getResult()));
			paging.setTotalPage(result.getTotalPage());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return paging;
	}
}
