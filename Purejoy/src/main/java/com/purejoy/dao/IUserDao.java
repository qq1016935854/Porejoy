package com.purejoy.dao;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.purejoy.model.User;
import com.purejoy.utils.WoResultCode;

import javassist.expr.NewArray;
public interface IUserDao extends IBaseDao<User, String>{
	public List<User> getUsers();

	public User getUserByLogin(String loginName,String password);
	
	public final static WoResultCode USER_PWD = new WoResultCode(1, "用户名或密码不正确！");
	
//	public void createUser(User u);
//	
//	public void updateUser(User user);
//	
//	public User getUser(String userId);
//
//	public void deleteUser(User user);

	public List<User> getUserByLoginName(String loginName);

//	public User getUserByName(String principleMobile);

}
