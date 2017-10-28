package com.purejoy.dao;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.purejoy.model.Admin;
import com.purejoy.utils.WoResultCode;
public interface IAdminDao extends IBaseDao<Admin, String> {
	public final static WoResultCode USER_PWD = new WoResultCode(1, "管理员账号或密码不正确！");

	Admin getAdminByLogin(String username, String password);
	
}
