package com.purejoy.service;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.purejoy.model.Admin;
public interface IAdminService {

	Admin getAdminByLogin(String username, String password);

}
