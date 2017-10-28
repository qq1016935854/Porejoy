package com.purejoy.service.impl;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.purejoy.dao.ArticlesDao;
import com.purejoy.model.Articles;
import com.purejoy.service.ArticlesService;

@Service
@Transactional
public class ArticlesServiceImpl implements ArticlesService {
	private final static Logger LOG = LogManager.getLogger(ArticlesServiceImpl.class);

	@Autowired
	private ArticlesDao dao;
	
	
	@Override
	public List<Articles> getArticles() {
		// TODO Auto-generated method stub
		return dao.getArticles();
	}


	@Override
	public void createArticles(Articles articles) {
		// TODO Auto-generated method stub
		dao.create(articles);
		
	}


	@Override
	public Articles getArticlesById(String articlesId) {
		// TODO Auto-generated method stub
		return dao.findById(articlesId);
	}


	@Override
	public void updateArticles(Articles articles) {
		// TODO Auto-generated method stub
		dao.update(articles);
	}


	@Override
	public void deleteArticles(Articles articles) {
		// TODO Auto-generated method stub
		dao.delete(articles);
	}


	@Override
	public List<Articles> getArticlesByTitle(String title) {
		// TODO Auto-generated method stub
		
		return dao.findArticlesByTitle(title);
	}
}
