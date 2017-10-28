package com.purejoy.service.impl;
import java.util.List;

import javax.transaction.Transactional;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.purejoy.dao.IRecipeDao;
import com.purejoy.model.Recipe;
import com.purejoy.service.IRecipeService;

@Service
@Transactional
public class RecipeService implements IRecipeService {
	private final static Logger LOG = LogManager.getLogger(RecipeService.class);

	@Autowired
	private IRecipeDao recipeDao;
	
	@Override
	public List<Recipe> getRecipe() {
		// TODO Auto-generated method stub
		return recipeDao.findAll();
	}

	@Override
	public void createRecipe(Recipe recipe) {
		// TODO Auto-generated method stub
		recipeDao.create(recipe);
		
	}

	@Override
	public Recipe getRecipeById(String recipeId) {
		// TODO Auto-generated method stub
		return recipeDao.findById(recipeId);
	}

	@Override
	public void updateRecipe(Recipe recipe) {
		// TODO Auto-generated method stub
		recipeDao.update(recipe);
	}

	@Override
	public void deleteRecipe(Recipe recipe) {
		// TODO Auto-generated method stub
		recipeDao.delete(recipe);
	}

	@Override
	public List<Recipe> getRecipeByWeekday(String title) {
		// TODO Auto-generated method stub
		return recipeDao.getRecipeByWeekday(title);
	}
}
