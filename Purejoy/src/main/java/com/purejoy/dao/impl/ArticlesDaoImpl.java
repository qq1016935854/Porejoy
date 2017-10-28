package com.purejoy.dao.impl;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.purejoy.dao.ArticlesDao;
import com.purejoy.model.Articles;

@Repository
public class ArticlesDaoImpl extends BaseDao<Articles, String> implements ArticlesDao {
	private final static Logger LOG = LogManager.getLogger(ArticlesDaoImpl.class);

	@Resource
	private SessionFactory sessionFactory;
	
	@Override
	public List<Articles> getArticles() {
		// TODO Auto-generated method stub
		
		return sessionFactory.getCurrentSession().createQuery("from Articles a",Articles.class).getResultList();
	}

	@Override
	public List<Articles> findArticlesByTitle(String title) {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("from Articles a where a.title like :title",Articles.class).
				setParameter("title", "%"+title+"%").getResultList();
	}
	
	@Override
	public Session getSession() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession();
	}
}
