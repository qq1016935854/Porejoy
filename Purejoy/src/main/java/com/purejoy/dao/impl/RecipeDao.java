package com.purejoy.dao.impl;
import java.util.List;
import java.util.Map;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.purejoy.dao.IRecipeDao;
import com.purejoy.model.Articles;
import com.purejoy.model.Recipe;

@Repository
public class RecipeDao extends BaseDao<Recipe, String> implements IRecipeDao {
	private final static Logger LOG = LogManager.getLogger(RecipeDao.class);

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Recipe> getRecipeByWeekday(String title) {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("from Recipe r where r.recipe_weekday like :title",Recipe.class).
				setParameter("title", "%"+title+"%").getResultList();
	}



	@Override
	public Session getSession() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession();
	}
}
