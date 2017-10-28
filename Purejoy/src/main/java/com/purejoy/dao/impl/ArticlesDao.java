package com.purejoy.dao.impl;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.purejoy.dao.IArticlesDao;
import com.purejoy.model.Articles;
@Repository
public class ArticlesDao extends BaseDao<Articles, String> implements IArticlesDao {
	private final static Logger LOG = LogManager.getLogger(ArticlesDao.class);

	private SessionFactory sessionFactory;
	
	@Override
	public Session getSession() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession();
	}
	
	
}
