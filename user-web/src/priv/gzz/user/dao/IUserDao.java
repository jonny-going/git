package priv.gzz.user.dao;

import java.util.List;

import priv.gzz.user.po.User;

public interface IUserDao {
	public List<User> getUsers();

	public User searchUserById(String id);
}