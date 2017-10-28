package com.purejoy.dao.impl;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.purejoy.dao.RecipeDao;
import com.purejoy.model.Recipe;

@Repository
public class RecipeDaoImpl implements RecipeDao{
	private final static Logger LOG = LogManager.getLogger(RecipeDaoImpl.class);

	@Resource
	private SessionFactory sessionFactory;
	
	@Override
	public List<Recipe> getRecipe() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("from Recipe r",Recipe.class).list();
	}
}
