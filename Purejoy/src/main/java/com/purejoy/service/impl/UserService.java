package com.purejoy.service.impl;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.purejoy.dao.IUserDao;

import com.purejoy.model.User;
import com.purejoy.service.IUserService;
import com.purejoy.utils.WoException;
import com.purejoy.utils.WoResultCode;

@Service
@Transactional
public class UserService implements IUserService {
	private final static Logger LOG = LogManager.getLogger(UserService.class);
	public final static WoResultCode MOBILE = new WoResultCode(2001,"相同手机号码的人员信息已经存在！");
	public final static WoResultCode SAME_KINDERGARTEN = new WoResultCode(2021,"相同幼儿园的人员信息已经存在！");

	@Resource // @Autowired
	private IUserDao userdao;
	
	

	@Override
	public List<User> getUsers() {
		// TODO Auto-generated method stub
		return userdao.getUsers();
	}

	
	@Override
	public User getUserByLogin(String username, String password) {
		// TODO Auto-generated method stub
		return userdao.getUserByLogin(username,password);
	}

	@Override
	public void createUser(User user) {
		// TODO Auto-generated method stub
		
		userdao.create(user);
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		userdao.update(user);
	}

	@Override
	public User getUser(String userId) {
		// TODO Auto-generated method stub
		return userdao.findById(userId);
	}

	@Override
	public void deleteUser(User user) {
		// TODO Auto-generated method stub
		userdao.delete(user);
	}

	@Override
	public List<User> getUserByLoginName(String loginName) {
		// TODO Auto-generated method stub
		return userdao.getUserByLoginName(loginName);
	}

	
	
}
