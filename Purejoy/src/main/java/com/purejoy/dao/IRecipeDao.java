package com.purejoy.dao;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.purejoy.model.Recipe;
public interface IRecipeDao extends IBaseDao<Recipe, String>{

	List<Recipe> getRecipeByWeekday(String title);

}
