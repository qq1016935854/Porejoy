package com.purejoy.controller;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.purejoy.model.Cart;
import com.purejoy.model.CartItem;
import com.purejoy.model.Goods;
import com.purejoy.service.IGoodsService;


@RequestMapping("/cart")
@Controller
public class CartController {
	private final static Logger LOG = LogManager.getLogger(CartController.class);
	
	@Autowired
	private IGoodsService service;
	
	
	@RequestMapping("/showcart")
	public String showCart() {
		return "jsp/cart";
	}
	
	@RequestMapping("/addcart")
	public ModelAndView addCart(String id,String count,HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		int num=Integer.parseInt(count);
		LOG.info(num);
		Goods goods = service.showInfo(id);
		CartItem item = new CartItem(goods,num);
		System.out.println(item);
		Cart cart = getCart(request);
		
		cart.add(item);
		
		Collection<CartItem> items = cart.getItems();
		
		for (CartItem cartItem : items) {
			System.out.println(cartItem.getGoods());
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsp/cart");
		mav.addObject("cart",cart);
		 
		return mav;

	}
	
	
	public Cart getCart(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		Cart cart = (Cart) session.getAttribute("cart");
		
		if(cart == null){
			cart = new Cart();
			session.setAttribute("cart", cart);
		}
		
		return cart;
	}
	
	@RequestMapping("/remove")
	public ModelAndView remove(String id,HttpServletRequest request){
		
		Cart cart = getCart(request);
		cart.remove(id);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("jsp/cart");
		
		return mav;
	}
	
	@RequestMapping("/changeNum")
	@ResponseBody
	public Object changeNum(String id,String count,HttpServletRequest request){
		int num = Integer.parseInt(count);
		Cart cart = getCart(request);
		cart.updateCount(id, num);
		double totalCount = cart.getTotalCount();
		
		return totalCount;
	}
	
}
