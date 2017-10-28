package com.purejoy.dao;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.purejoy.model.Menu;

public interface IMenuDao extends IBaseDao<Menu, String>{

	
	public List<Menu> getTopMenus();
	
	public List<Menu> getSubMenus(String parentId);
/**
 *
 * 获取所有菜单，按照编号顺序排序
 *
 * @return
 */
	public List<Menu> getMenus();

	/**
	 * 通过获取的Menu对象，在数据库添加新的数据
	 * @param menu
	 */
//	public void createMenu(Menu menu);
//
//	public Menu getMenuById(String menuId);
//
//	public void updateMenu(Menu menu);
//
//	public void deleteMenu(Menu menu);

	public List<Menu> getMenusByName(String name);
}
