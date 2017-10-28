package com.purejoy.dao.impl;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.purejoy.dao.IUserDao;
import com.purejoy.model.User;
import com.purejoy.utils.WoException;

@Repository
public class UserDao extends BaseDao<User, String> implements IUserDao {
	private final static Logger LOG = LogManager.getLogger(UserDao.class);
	
	@Resource
	private SessionFactory sessionFactory;
	
	@Override
	public List<User> getUsers() {
		// TODO Auto-generated method stub		
		return sessionFactory.getCurrentSession().createQuery("from User u",User.class).getResultList();
	}

	@Override
	public User getUserByLogin(String username, String password) {
		// TODO Auto-generated method stub
		String hsql = "from User u where u.username = :username and u.password= :password";
		
		List<User> users = sessionFactory.getCurrentSession().createQuery(hsql,User.class).setParameter("username", username).setParameter("password", password).getResultList();
		
		if (users.size() ==1) {
			return users.get(0);
		}
		
		throw new WoException(USER_PWD);
	}

	
	
	@Override
	public List<User> getUserByLoginName(String loginName) {
		// TODO Auto-generated method stub
		String hsql = "from User u where u.uname like :loginName";
		
		return sessionFactory.getCurrentSession().createQuery(hsql,User.class).setParameter("loginName", "%"+loginName+"%").getResultList();
	}
	

	@Override
	public Session getSession() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession();
	}
}
