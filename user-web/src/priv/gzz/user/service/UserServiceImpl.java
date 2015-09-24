package priv.gzz.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import priv.gzz.user.dao.IUserDao;
import priv.gzz.user.po.User;

public class UserServiceImpl implements IUserService {
	@Autowired
	private IUserDao userDao;

	@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
	public List<User> searchAllUsers() {
		return userDao.getUsers();
	}

	public IUserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}
}