package com.purejoy.service;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.purejoy.model.Recipe;

public interface RecipeService {

	List<Recipe> getRecipe();

}
