package priv.gzz.user.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import priv.gzz.user.po.User;

public class UserDaoImpl implements IUserDao {
	@Resource
	private SessionFactory sessionFactory;

	private Session currentSession() {
		return sessionFactory.getCurrentSession();
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public User searchUserById(String id) {
		return (User) currentSession().createQuery("from User where id=?").setParameter(0, id).uniqueResult();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> getUsers() {
		return currentSession().createQuery("from User").list();
	}
}