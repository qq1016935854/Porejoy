package com.purejoy.dao.impl;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.purejoy.dao.FoodDao;
import com.purejoy.model.Food;

@Repository
public class FoodDaoImpl implements FoodDao{
	private final static Logger LOG = LogManager.getLogger(FoodDaoImpl.class);

	@Resource
	private SessionFactory sessionFactory;
	
	@Override
	public List<Food> getFood() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("from Food f", Food.class).list();
	}
}
