package com.purejoy.service.impl;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;
import javax.websocket.server.ServerEndpoint;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.purejoy.dao.IArticlesDao;
import com.purejoy.model.Articles;
import com.purejoy.service.IArticlesService;

@Service
@Transactional
public class ArticlesService implements IArticlesService {
	private final static Logger LOG = LogManager.getLogger(ArticlesService.class);
	
	private IArticlesDao articlesDao;
	
	@Override
	public List<Articles> getArticleses() {
		// TODO Auto-generated method stub
		return articlesDao.findAll();
	}

	@Override
	public void deleteArticles(Articles articles) {
		// TODO Auto-generated method stub
		articlesDao.delete(articles);
		
	}

	@Override
	public List<Articles> getArticlesByTitle(String uname) {
		// TODO Auto-generated method stub
		Map<String, Object> props = new HashMap<String, Object>();
		props.put("title", uname);
		return articlesDao.findAllBy(props);
	}

	@Override
	public void updateArticles(Articles articles) {
		// TODO Auto-generated method stub
		articlesDao.update(articles);
	}

	@Override
	public Articles getArticlesById(String articlesId) {
		// TODO Auto-generated method stub
		return articlesDao.findById(articlesId);
	}

	@Override
	public void createArticles(Articles articles) {
		// TODO Auto-generated method stub
		articlesDao.create(articles);
	}
}
