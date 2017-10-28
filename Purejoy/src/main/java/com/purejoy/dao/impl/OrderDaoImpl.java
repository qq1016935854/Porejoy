package com.purejoy.dao.impl;
import javax.annotation.Resource;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.purejoy.dao.OrderDao;
import com.purejoy.model.OrderItem;
import com.purejoy.model.Orders;

@Repository
public class OrderDaoImpl implements OrderDao {
	private final static Logger LOG = LogManager.getLogger(OrderDaoImpl.class);

	@Resource
	private SessionFactory sessionFactory;
	
	@Override
	public void save(Orders order) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().persist(order);
	}

	@Override
	public void saveOrderItems(OrderItem orderItem) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().persist(orderItem);
	}
}
