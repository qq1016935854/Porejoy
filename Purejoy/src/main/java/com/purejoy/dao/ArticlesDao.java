package com.purejoy.dao;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.purejoy.model.Articles;
import com.purejoy.dao.impl.BaseDao;

public interface ArticlesDao extends IBaseDao<Articles, String> {

	List<Articles> getArticles();

	List<Articles> findArticlesByTitle(String title);

}
