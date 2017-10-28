package com.purejoy.controller;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.purejoy.model.User;
import com.purejoy.service.IMenuService;
import com.purejoy.service.IUserService;
import com.purejoy.utils.WoException;



@Controller
@RequestMapping("/")
public class HomeController {
	private final static Logger LOG = LogManager.getLogger(HomeController.class);
	
	@RequestMapping("/index")
	public String goIndex(){
		return "index";
	}
	@RequestMapping("/admin")
	public String goAdminLogin(){
		return "control/login";
	}
	
	@RequestMapping("/brand")
	public String goBrand(){
		return "jsp/brand";
	}
	
	@Resource
	private IUserService userservice;
	
	@Autowired
	private IMenuService menuService;
	
	
	@RequestMapping("/authenticate")
	public ModelAndView authenticate(String username,String password,HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		User user2 =null;	
		try {
			user2 = userservice.getUserByLogin(username, password);
			Map<String, Object>m  = menuService.getMenuData(null, null);
			mav.setViewName("control/index");
			mav.addAllObjects(m);
			return mav;
		} catch (WoException we) {
			// TODO: handle exception
			mav.setViewName("control/login");
			mav.addObject("error", "认证失败！");	
			return mav;
		}
	}
	
}
