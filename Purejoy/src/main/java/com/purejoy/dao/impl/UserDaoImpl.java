package com.purejoy.dao.impl;
import java.util.UUID;

import javax.annotation.Resource;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.purejoy.dao.UserDao;
import com.purejoy.model.User;

@Repository
public class UserDaoImpl implements UserDao{
	private final static Logger LOG = LogManager.getLogger(UserDaoImpl.class);

	@Resource
	private SessionFactory sessionFactory;
	
	@Override
	public User login(String username, String password) {
		// TODO Auto-generated method stub
		String hql="from User u where u.username =? and u.password=?";
		return sessionFactory.getCurrentSession().createQuery(hql,User.class).setParameter(0, username).setParameter(1, password).uniqueResult();
	}

	@Override
	public void register(String username, String password) {
		// TODO Auto-generated method stub
		User user = new User();
		user.setUid(UUID.randomUUID().toString());
		user.setUsername(username);
		user.setPassword(password);
		sessionFactory.getCurrentSession().persist(user);
	}
}
