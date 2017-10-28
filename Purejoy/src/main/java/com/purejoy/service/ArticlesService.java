package com.purejoy.service;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.purejoy.model.Articles;

public interface ArticlesService {

	List<Articles> getArticles();

	void createArticles(Articles articles);

	Articles getArticlesById(String articlesId);

	void updateArticles(Articles articles);

	void deleteArticles(Articles articles);

	List<Articles> getArticlesByTitle(String title);

}
