package com.purejoy.service.impl;
import javax.transaction.Transactional;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.purejoy.dao.IAdminDao;
import com.purejoy.model.Admin;
import com.purejoy.service.IAdminService;

@Service
@Transactional
public class AdminService implements IAdminService {
	private final static Logger LOG = LogManager.getLogger(AdminService.class);

	
	@Autowired
	private IAdminDao adminDao;
	@Override
	public Admin getAdminByLogin(String username, String password) {
		return adminDao.getAdminByLogin(username,password);
	}
}
