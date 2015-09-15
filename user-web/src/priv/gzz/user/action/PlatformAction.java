package priv.gzz.user.action;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import priv.gzz.user.bean.User;

import com.opensymphony.xwork2.ActionSupport;

public class PlatformAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	private Logger log = LogManager.getLogger(PlatformAction.class.getName());

	private User user;

	private String message;

	@Override
	public String execute() throws Exception {
		log.info("user login.");
		return "login";
	}

	public String login() {
		if (!"zhaozhong@gong".equalsIgnoreCase(user.getUserName())) {
			message = "用户名错误！";
			return "login";
		}
		return "main";
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}