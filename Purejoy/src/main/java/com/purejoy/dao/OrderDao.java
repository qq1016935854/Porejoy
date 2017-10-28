package com.purejoy.dao;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.purejoy.model.OrderItem;
import com.purejoy.model.Orders;

public interface OrderDao {

	void save(Orders order);

	void saveOrderItems(OrderItem orderItem);

}
