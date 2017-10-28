package com.purejoy.dao.impl;
import java.util.List;
import java.util.Map;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.purejoy.dao.IAdminDao;
import com.purejoy.model.Admin;
import com.purejoy.utils.WoException;

@Repository
public class AdminDao extends BaseDao<Admin, String> implements IAdminDao {
	private final static Logger LOG = LogManager.getLogger(AdminDao.class);

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Session getSession() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession();
	}

	@Override
	public Admin getAdminByLogin(String username, String password) {
		// TODO Auto-generated method stub
		String hql = "from Admin a where a.admin_name = :username and a.password =:password";
		List<Admin> admins = sessionFactory.getCurrentSession().createQuery(hql,Admin.class).setParameter("username", username).setParameter("password", password).getResultList();
		
		if (admins.size() ==1) {
			return admins.get(0);
		}
		
		throw new WoException(USER_PWD);
		
	}
}
