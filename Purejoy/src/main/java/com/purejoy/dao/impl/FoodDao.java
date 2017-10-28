package com.purejoy.dao.impl;
import java.util.List;
import java.util.Map;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.purejoy.dao.IFoodDao;
import com.purejoy.model.Articles;
import com.purejoy.model.Food;

@Repository
public class FoodDao extends BaseDao<Food, String> implements IFoodDao {
	private final static Logger LOG = LogManager.getLogger(FoodDao.class);

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Session getSession() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession();
	}

	@Override
	public List<Food> getFoodByName(String name) {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("from Food f where f.name like :title",Food.class).
				setParameter("title", "%"+name+"%").getResultList();
	}
}
