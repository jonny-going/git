package priv.gzz.web.search.action;

import priv.gzz.web.search.bean.BBSContent;
import priv.gzz.web.search.bean.Paging;
import priv.gzz.web.search.serivce.BBSSerivce;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SearchAction extends ActionSupport {
	private int maxSize = 10;
	private int currentPage;
	private int totalPage;
	private String keyword;
	/**
	 * 
	 */
	private static final long serialVersionUID = 6617314458545527317L;

	@Override
	public String execute() throws Exception {
		ActionContext context = ActionContext.getContext();
		// HttpServletRequest request = (HttpServletRequest)
		// context.get(ServletActionContext.HTTP_REQUEST);
		// String keyword = request.getParameter("keyword");
		System.out.println(keyword);
		Paging<BBSContent> paging = new Paging<BBSContent>();
		paging.setCurrentPage(currentPage);
		paging.setMaxSize(maxSize);
		BBSSerivce.queryByKeyword(keyword, paging);
		context.put("resultList", paging.getResult());
		System.out.println(paging.getResult());
		totalPage = paging.getTotalPage();
		context.put("totalPage", totalPage);
		return SUCCESS;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

}
