package com.purejoy.service;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.purejoy.dao.IBaseDao;
import com.purejoy.model.Articles;
public interface IArticlesService {

	List<Articles> getArticleses();

	void deleteArticles(Articles articles);

	List<Articles> getArticlesByTitle(String uname);

	void updateArticles(Articles articles);

	Articles getArticlesById(String articlesId);

	void createArticles(Articles articles);

	
	
}
