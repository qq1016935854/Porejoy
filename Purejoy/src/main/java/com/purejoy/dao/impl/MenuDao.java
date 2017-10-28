package com.purejoy.dao.impl;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import com.purejoy.dao.IMenuDao;
import com.purejoy.model.Menu;

@Repository
@Primary
public class MenuDao extends BaseDao<Menu, String> implements IMenuDao{
	private final static Logger LOG = LogManager.getLogger(MenuDao.class);

	@Resource
	private SessionFactory sessionFactory;
	
	@Override
	public List<Menu> getTopMenus() {
		// TODO Auto-generated method stub
		String hsql = "from Menu m where m.parent.id is null or m.parent.id='' order by m.index";
		return sessionFactory.getCurrentSession().
				createQuery(hsql,Menu.class).getResultList();
	}

	@Override
	public List<Menu> getSubMenus(String parentId) {
		// 有参数的时候用setParameter替换 (:参数)
		String hsql = "from Menu m where m.parent.id=:parentId order by m.no";

		return sessionFactory.getCurrentSession().
				createQuery(hsql,Menu.class).setParameter("parentId", parentId).
				getResultList();
	}

	@Override
	public List<Menu> getMenus() {
		// TODO Auto-generated method stub
		String hql = "from Menu m order by m.no";
		return sessionFactory.getCurrentSession().createQuery(hql,Menu.class).getResultList();
	}

//	@Override
//	public void createMenu(Menu menu) {
//		// TODO Auto-generated method stub
//		sessionFactory.getCurrentSession().persist(menu);
//	}
//	
//	@Override
//	public Menu getMenuById(String menuId) {
//		// TODO Auto-generated method stub
//		String hql = "from Menu m where m.id=:menuId";
//		List<Menu> list = sessionFactory.getCurrentSession().createQuery(hql,Menu.class).setParameter("menuId", menuId).getResultList();
//		return list.get(0);
//	}
//	
//	@Override
//	public void updateMenu(Menu menu) {
//		// TODO Auto-generated method stub
//		Menu menu2 = sessionFactory.getCurrentSession().find(Menu.class, menu.getId());
//		sessionFactory.getCurrentSession().merge(menu);
//	}
//	
//	@Override
//	public void deleteMenu(Menu menu) {
//		// TODO Auto-generated method stub
//		sessionFactory.getCurrentSession().delete(menu);
//
//	}
	
	@Override
	public List<Menu> getMenusByName(String name) {
		// TODO Auto-generated method stub
		String hql = "from Menu m where m.name like :name";
		return sessionFactory.getCurrentSession().createQuery(hql,Menu.class).setParameter("name", "%"+name+"%").getResultList();
	}

	@Override
	public Session getSession() {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession();
	}
}
