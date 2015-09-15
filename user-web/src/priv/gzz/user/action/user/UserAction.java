package priv.gzz.user.action.user;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.opensymphony.xwork2.ActionSupport;

import priv.gzz.user.bean.User;

public class UserAction extends ActionSupport {
	private static final long serialVersionUID = -4987136000387786191L;

	private static Logger logger = LogManager.getLogger(UserAction.class.getName());

	private User user;

	private String userName;

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	public String save() {
		logger.debug(user);
		return "save";
	}

	public String search() {
		logger.debug("search user-->" + userName);
		return "search";
	}

	public String delete() {
		logger.debug("delete user.");
		return "delete";
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
}
