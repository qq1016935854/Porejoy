package com.purejoy.service;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.purejoy.model.Recipe;
public interface IRecipeService {

	List<Recipe> getRecipe();

	void createRecipe(Recipe recipe);

	Recipe getRecipeById(String recipeId);

	void updateRecipe(Recipe recipe);

	void deleteRecipe(Recipe recipe);

	List<Recipe> getRecipeByWeekday(String title);

}
