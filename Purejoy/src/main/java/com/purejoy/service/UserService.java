package com.purejoy.service;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.purejoy.model.User;

public interface UserService {

	User login(String username, String password);

	void register(String username, String password);

}
