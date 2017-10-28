package com.purejoy.service;

import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.purejoy.dao.IUserDao;
import com.purejoy.model.User;
import com.purejoy.utils.WoResultCode;

public interface IUserService {
	public List<User> getUsers();

	public User getUserByLogin(String username, String password);

	public void createUser(User user);

	public void updateUser(User user);

	public User getUser(String userId);

	public void deleteUser(User user);

	public List<User> getUserByLoginName(String loginName);
	/**
	 * 
	 * @param name	老师或监护人姓名
	 * @param mobile	登录账号
	 * @return
	 */
}
