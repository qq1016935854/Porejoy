package com.purejoy.service.impl;
import javax.transaction.Transactional;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.purejoy.dao.UserDao;
import com.purejoy.model.User;
import com.purejoy.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	private final static Logger LOG = LogManager.getLogger(UserServiceImpl.class);

	@Autowired
	private UserDao userDao;
	
	@Override
	public User login(String username, String password) {
		// TODO Auto-generated method stub
		
		return userDao.login(username,password);
	}

	@Override
	public void register(String username, String password) {
		// TODO Auto-generated method stub
		userDao.register(username,password);
	}
}
