package com.purejoy.service.impl;
import java.util.List;

import javax.transaction.Transactional;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.purejoy.dao.OrderDao;
import com.purejoy.model.OrderItem;
import com.purejoy.model.Orders;
import com.purejoy.service.OrderService;

@Service
@Transactional
public class OrderServiceImpl implements OrderService {
	private final static Logger LOG = LogManager.getLogger(OrderServiceImpl.class);

	@Autowired
	private OrderDao dao;
	
	@Override
	public void save(Orders order) {
		// TODO Auto-generated method stub
		dao.save(order);
//		List<OrderItem> list = order.getList();
//		for (OrderItem orderItem : list) {
//			dao.saveOrderItems(orderItem);
//		}
		
	}
}
