package com.purejoy.controller;

import java.util.Map;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.purejoy.service.IMenuService;
import com.purejoy.service.IUserService;

@Controller
@RequestMapping("/control")
public class HomeController2 {
	private final static Logger LOG = LogManager.getLogger(HomeController2.class);

	@Autowired
	private IUserService userService;
	@Autowired
	private IMenuService menuService;

	@RequestMapping("/index")
	public ModelAndView goHome(String currentTopId, String currentSubId) {
		ModelAndView mav = new ModelAndView();
		Map<String, Object> m = menuService.getMenuData(currentTopId, currentSubId);
		mav.setViewName("control/index");
		mav.addAllObjects(m);
		return mav;

	}

}
