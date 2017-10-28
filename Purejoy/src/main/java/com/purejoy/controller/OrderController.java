package com.purejoy.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.purejoy.model.Cart;
import com.purejoy.model.CartItem;
import com.purejoy.model.OrderItem;
import com.purejoy.model.Orders;
import com.purejoy.model.User;
import com.purejoy.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	private final static Logger LOG = LogManager.getLogger(OrderController.class);

	@Autowired
	private OrderService service;

	@RequestMapping("/create")
	public String create(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
//		HttpSession session = request.getSession();
//		User user = (User) session.getAttribute("user");

		// 1.将购物车数据转移到订单
//		Orders order = new Orders();
//		Cart cart = (Cart) session.getAttribute("cart");
//		order.setOid(UUID.randomUUID().toString());
//		order.setOrdertime(new Date());
//		order.setUser(user);
//		order.setTotal(cart.getTotalCount());
//		List<OrderItem> list = order.getList();
//		Collection<CartItem> items = cart.getItems();
//		for (CartItem cartItem : items) {
//			OrderItem item = new OrderItem();
//			item.setItemid(UUID.randomUUID().toString());
//			item.setCount(cartItem.getCount());
//			item.setSubtotal(cartItem.getTotal());
//			item.setGoods(cartItem.getGoods());
//			item.setOrder(order);
//			list.add(item);
//		}
//		service.save(order);
//
//		session.removeAttribute("cart");
//
//		session.setAttribute("order", order);

		return "index";

	}
}
