package com.purejoy.controller;
import static org.hamcrest.CoreMatchers.nullValue;

import java.util.Map;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.purejoy.model.User;
import com.purejoy.service.IAdminService;
import com.purejoy.service.IMenuService;
import com.purejoy.service.IUserService;
import com.purejoy.utils.WoException;


@Controller
@RequestMapping("/admin")
public class AdminController {
	private final static Logger LOG = LogManager.getLogger(AdminController.class);
	@Autowired
	private IAdminService adminService;
	@Autowired
	private IMenuService menuService;
	
	@RequestMapping("/login")
	public ModelAndView login(String username,String password){
		ModelAndView mav = new ModelAndView();
		
		User user = null;
		try {
			adminService.getAdminByLogin(username, password);
			Map<String, Object> m = menuService.getMenuData(null, null);
			mav.setViewName("control/index");
			mav.addAllObjects(m);
			return mav;
		} catch (WoException e) {
			mav.addObject("error", "认证失败！");	
			mav.setViewName("control/login");
			return mav;
		}
		
	}
	
	
	@RequestMapping("control/index")
	public ModelAndView goHome(String currentTopId,String currentSubId){
		ModelAndView mav = new ModelAndView();
		Map<String, Object> m = menuService.getMenuData(currentTopId, currentSubId);
		mav.setViewName("control/index");
		mav.addAllObjects(m);
		return mav;
		
	}
	
	@RequestMapping("/loadLoginForm")
	public String loadCreateForm(){
		return "control/menu/list";
	}
}
