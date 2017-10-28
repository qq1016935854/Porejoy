package com.purejoy.service;
import java.util.List;
import java.util.Map;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.purejoy.utils.WoResultCode;
import com.purejoy.model.Menu;

import javassist.expr.NewArray;



public interface IMenuService {
	/**
	 * 
	 * @param topId	顶级菜单Id
	 * @param subId	子菜单Id
	 * @return	4个对象，分别是顶级菜单列表，topId对应的子菜单列表，当前顶级菜单，当前子菜单
	 */
	public Map<String, Object> getMenuData(String currentTopId,String currentSubId);
	
	public final static WoResultCode NO_TOP = new WoResultCode(51,"顶级菜单不存在");
	public final static WoResultCode NOT_EXIST = new WoResultCode(52,"ID为%s的菜单未找到");
	/**
	 * 获取所有menu，并且按no排序
	 * @return
	 */
	public List<Menu> getMenus();
	/**
	 * 通过获取的Menu对象，在数据库添加新的数据
	 * @param menu
	 */
	public void createMenu(Menu menu);
	public Menu getMenuById(String menuId);
	public void updateMenu(Menu menu);
	public void deleteMenu(Menu menu);
	public List<Menu> getMenusByName(String name);

}
