package com.purejoy.service;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.purejoy.model.Food;
public interface IFoodService {

	List<Food> getFoods();

	void createFood(Food food);

	Food getFoodById(String foodId);

	void updateFood(Food food);

	void deleteFood(Food food);

	List<Food> getFoodByName(String name);
	
}
