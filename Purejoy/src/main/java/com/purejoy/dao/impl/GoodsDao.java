package com.purejoy.dao.impl;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.purejoy.dao.IGoodsDao;
import com.purejoy.model.Goods;

@Repository
public class GoodsDao extends BaseDao<Goods, String> implements IGoodsDao {
	private final static Logger LOG = LogManager.getLogger(GoodsDao.class);

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Session getSession() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession();
	}

	@Override
	public List<Goods> getGoodsByName(String name) {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("from Goods g where g.name like :name",Goods.class).setParameter("name", "%"+name+"%").getResultList();
	}
	
	@Override
	public List<Goods> getChickens() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("from Goods g where g.id like '2%'",Goods.class).getResultList();
	}

	@Override
	public List<Goods> getFitnessfood() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().createQuery("from Goods g where g.id like '1%'", Goods.class).list();
	}
}
