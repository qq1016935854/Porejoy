package com.purejoy.service.impl;
import java.util.List;

import javax.transaction.Transactional;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.purejoy.dao.IFoodDao;
import com.purejoy.model.Food;
import com.purejoy.service.IFoodService;

@Service
@Transactional
public class FoodService implements IFoodService {
	private final static Logger LOG = LogManager.getLogger(FoodService.class);

	@Autowired
	private IFoodDao foodDao;
	
	@Override
	public List<Food> getFoods() {
		// TODO Auto-generated method stub
		return foodDao.findAll();
	}

	@Override
	public void createFood(Food food) {
		// TODO Auto-generated method stub
		foodDao.create(food);
	}

	@Override
	public Food getFoodById(String foodId) {
		// TODO Auto-generated method stub
		return foodDao.findById(foodId);
	}

	@Override
	public void updateFood(Food food) {
		// TODO Auto-generated method stub
		foodDao.update(food);
		
	}

	@Override
	public void deleteFood(Food food) {
		// TODO Auto-generated method stub
		foodDao.delete(food);
	}

	@Override
	public List<Food> getFoodByName(String name) {
		// TODO Auto-generated method stub
		return foodDao.getFoodByName(name);
	}
}
