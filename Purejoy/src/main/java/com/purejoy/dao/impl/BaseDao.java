package com.purejoy.dao.impl;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;
import java.util.Map;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.query.Query;

import com.purejoy.dao.IBaseDao;


// @Repository
@SuppressWarnings(value = { "unchecked" })
public abstract class BaseDao<E, K extends Serializable> implements IBaseDao<E, K> {
	private final static Logger LOG = LogManager.getLogger(BaseDao.class);

	private Class<?> entityClass;
	private String entityName;

	public BaseDao() {
		ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
		entityClass = (Class<?>) pt.getActualTypeArguments()[0];
		entityName = entityClass.getSimpleName();
	}

	// @Resource
	// private SessionFactory sessionFactory;

	/**
	 * 
	 * @return
	 */
	public abstract Session getSession();

	@Override
	public void create(E entity) {
		getSession().persist(entity);
	}

	@Override
	public void delete(E entity) {
		getSession().delete(entity);
	}

	@Override
	public boolean deleteById(K id) {
		E entity = findById(id);
		if (entity != null) {
			delete(entity);
			return true;
		}
		return false;
	}

	@Override
	public void update(E entity) {
		getSession().merge(entity);
	}

	@Override
	public E findById(K id) {
		return (E) getSession().get(entityClass, id);
	}

	@Override
	public E findBy(Map<String, Object> props) {
		// TODO Auto-generated method stub
		List<E> list = findAllBy(props);
		
		return list.size() == 1 ? list.get(0) : null;

	}
	
	@Override
	public List<E> findAll() {
		// TODO Auto-generated method stub
		String hql = "from "+entityName+" e";
		return (List<E>) getSession().createQuery(hql,entityClass).getResultList();
	}
	
	
	public List<E> findAllBy(Map<String, Object> props) {
		String hsql = "";
		if (props != null && props.size() > 0) {
			for (String key : props.keySet()) {
				if (!hsql.equals("")) {
					hsql += " and ";
				}
				hsql += " u." + key + " = :" + key.replace('.', '_');
			}
			hsql = "from " + entityName + " u where " + hsql;
		} else {
			hsql = "from " + entityName + " u";
		}
		LOG.info(hsql);
		Query query = getSession().createQuery(hsql, entityClass);
		if (props != null && props.size() > 0) {
			for (String key : props.keySet()) {
				query.setParameter(key.replace('.', '_'), props.get(key));
			}
		}
		return (List<E>) query.getResultList();
	}
}
