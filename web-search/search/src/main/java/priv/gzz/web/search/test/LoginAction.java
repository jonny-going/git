package priv.gzz.web.search.test;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	/**
	 * Ä¬ÈÏ°æ±¾ÐòÁÐºÅ
	 */
	private static final long serialVersionUID = 1L;

	private String username;
	private String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String execute() throws Exception {
		if (getUsername().equals("baidu") && getPassword().equals("baidu")) {
			ActionContext.getContext().getSession().put("user", getUsername());
			return "success";
		} else {
			return "error";
		}
	}
}
