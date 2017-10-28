package com.purejoy.controller;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.purejoy.model.Menu;
import com.purejoy.service.IMenuService;
import com.purejoy.utils.WoException;
import com.purejoy.utils.WoResultCode;

@Controller
@RequestMapping("/sys/menu")
public class MenuController {
	private final static Logger LOG = LogManager.getLogger(MenuController.class);
	
	@Autowired
	private IMenuService menuService;
	
	@RequestMapping("/list")
	public ModelAndView getUsers (){
		
		ModelAndView mav = new ModelAndView();
		//下面是jsp地址，通过视图解析器添加前后缀
		mav.setViewName("menu/list");
		mav.addObject("menus", menuService.getMenus());
		return mav;
	}
	
	@RequestMapping("/loadCreateForm")
	public String loadCreateForm(){
		return "menu/createForm";
	}
	
	@RequestMapping("/create")
	@ResponseBody
	public Object createMenu(Menu menu){
		try {
			menuService.createMenu(menu);
			return WoResultCode.getSuccess().setMsg("创建菜单成功!");
		} catch (WoException e) {
			return e.getCode();
		}catch (Exception e) {
			return WoResultCode.getUnknown().setMsg("创建菜单失败!");
		}
		
	}
	
	@RequestMapping("/loadUpdateForm")
	public ModelAndView loadCreateForm(String menuId){
		ModelAndView mav = new ModelAndView();
		Menu menu = menuService.getMenuById(menuId);
		mav.setViewName("menu/updateForm");
		mav.addObject("menu", menu);
		return mav;
	}
	
	@RequestMapping("/update")
	@ResponseBody
	public Object updateMenu(Menu menu,String name,String icon,String url,String no){		
		try {
			menu.setName(name);
			menu.setIcon(icon);
			menu.setUrl(url);
			menu.setNo(no);
			menuService.updateMenu(menu);
			return WoResultCode.getSuccess().setMsg("菜单更新成功!");
		} catch (WoException e) {
			return e.getCode();
		}catch (Exception e) {
			return WoResultCode.getUnknown().setMsg("菜单更新失败!");
		}
	}
	
	@ResponseBody
	@RequestMapping("/delete")
	public Object deleteUser(String[] menuIds){
		try {
			for (String menuId : menuIds) {
				Menu menu = new Menu();
				menu.setId(menuId);
				menuService.deleteMenu(menu);
			}			
			return WoResultCode.getSuccess().setMsg("菜单删除成功!");
		} catch (WoException e) {
			return e.getCode();
		}catch (Exception e) {
			return WoResultCode.getUnknown().setMsg("菜单删除失败!");
		}
		
	}
	
	@ResponseBody	//讲方法返回的Object对象映射为json
	@RequestMapping("/search")
	public ModelAndView searchUser(String name){
		ModelAndView mav = new ModelAndView();
		List<Menu> menus = menuService.getMenusByName(name);
		mav.setViewName("menu/search");
		mav.addObject("menus", menus);
		return mav;
	}
	
	
	@RequestMapping("/loadCreateChildForm")
	public ModelAndView loadCreateChildForm(String menuId){
		ModelAndView mav = new ModelAndView();
		Menu parent = menuService.getMenuById(menuId);
		mav.setViewName("menu/createChildForm");
		mav.addObject("parentMenu", parent);
		return mav;
	}
	
	@RequestMapping("/createChildMenu")
	@ResponseBody
	public Object createChildMenu(Menu menu){
		try {
			menuService.createMenu(menu);
			return WoResultCode.getSuccess().setMsg("创建菜单成功!");
		} catch (WoException e) {
			return e.getCode();
		}catch (Exception e) {
			return WoResultCode.getUnknown().setMsg("创建菜单失败!");
		}
		
	}
}
