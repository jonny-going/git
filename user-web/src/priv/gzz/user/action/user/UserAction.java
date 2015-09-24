package priv.gzz.user.action.user;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;

import com.opensymphony.xwork2.ActionSupport;

import priv.gzz.user.po.User;
import priv.gzz.user.service.IUserService;

@Scope(value = "request")
public class UserAction extends ActionSupport {
	private static final long serialVersionUID = -4987136000387786191L;

	private static Logger logger = LogManager.getLogger(UserAction.class.getName());
	@Autowired
	private IUserService userService;

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
		List<User> users = userService.searchAllUsers();
		logger.debug("search user result-->" + users);
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

	public IUserService getUserService() {
		return userService;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
}
