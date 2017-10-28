package com.purejoy.service.impl;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.purejoy.utils.WoException;
import com.purejoy.dao.IMenuDao;
import com.purejoy.model.Menu;
import com.purejoy.service.IMenuService;


@Service
@Transactional
public class MenuService implements IMenuService{
	private final static Logger LOG = LogManager.getLogger(MenuService.class);

	@Autowired
	private IMenuDao menuDao;

	public void setMenuDao(IMenuDao menuDao) {
		this.menuDao = menuDao;
	}
	
	private List<Menu> getTopMenus(){
		
		return menuDao.getTopMenus();
	}
	
	private List<Menu> getSubMenus(String parentId){
		
		return menuDao.getSubMenus(parentId);
	}
	
	private Menu findMenu(List<Menu> menus,String menuId){
		
		for (Menu m : menus) {
			if (m.getId().equals(menuId)) {
				return m;
			}
		}
		
		return null;
	}
	@Override
	public Map<String, Object> getMenuData(String currentTopId, String currentSubId) {
		// TODO Auto-generated method stub
		List<Menu> topMenus = getTopMenus();
		if (topMenus.size() == 0) {
			throw new WoException(IMenuService.NO_TOP);
		}
		Menu currentTopMenu = null;
		List<Menu> subMenus = new ArrayList<Menu>();
		Menu currentSubMenu = null;
		if (StringUtils.isEmpty(currentTopId)) {
			currentTopMenu = topMenus.get(0);
			currentTopId = topMenus.get(0).getId();
			subMenus = getSubMenus(currentTopId);
			if (subMenus.size() > 0) {
				currentSubMenu = subMenus.get(0);
			}
		} else {
			currentTopMenu = findMenu(topMenus, currentTopId);
			if (currentTopMenu == null) {
				throw new WoException(IMenuService.NOT_EXIST, currentTopId);
			}
			subMenus = getSubMenus(currentTopId);
			if (subMenus.size() > 0) {
				if (StringUtils.isEmpty(currentSubId)) {
					currentSubMenu = subMenus.get(0);
				} else {
					currentSubMenu = findMenu(subMenus, currentSubId);
				}
			}
		}
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("topMenus", topMenus);
		data.put("currentTopMenu", currentTopMenu);
		data.put("subMenus", subMenus);
		if (currentSubMenu != null) {
			data.put("currentSubMenu", currentSubMenu);
		}
		return data;
	}

	@Override
	public List<Menu> getMenus() {
		// TODO Auto-generated method stub
		return menuDao.getMenus();
	}

	@Override
	public void createMenu(Menu menu) {
		// TODO Auto-generated method stub
		menuDao.create(menu);
	}

	@Override
	public Menu getMenuById(String menuId) {
		// TODO Auto-generated method stub
		return menuDao.findById(menuId);
	}
	@Override
	public void updateMenu(Menu menu) {
		// TODO Auto-generated method stub
		menuDao.update(menu);
	}
	@Override
	public void deleteMenu(Menu menu) {
		// TODO Auto-generated method stub
		menuDao.delete(menu);
	}
	
	@Override
	public List<Menu> getMenusByName(String name) {
		// TODO Auto-generated method stub
		return menuDao.getMenusByName(name);
	}
	}

