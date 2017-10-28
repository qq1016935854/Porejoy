package com.purejoy.service.impl;
import java.util.List;

import javax.transaction.Transactional;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.purejoy.dao.FoodDao;
import com.purejoy.model.Food;
import com.purejoy.service.FoodService;

@Service
@Transactional
public class FoodServiceImpl implements FoodService{
	private final static Logger LOG = LogManager.getLogger(FoodServiceImpl.class);

	@Autowired
	private FoodDao dao;
	
	@Override
	public List<Food> getFood() {
		// TODO Auto-generated method stub
		return dao.getFood();
	}
	
}
