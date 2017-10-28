package com.purejoy.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * @author cailei
 *
 * @param <E> 实体类型
 * @param <K> 主键类型
 */
public interface IBaseDao<E, K extends Serializable> {
	
	/**
	 * 增加
	 * @param entity 业务实体对象
	 * @return 增加成功返回实体对象的标识
	 */
	public void create(E entity);
	
	/**
	 * 删除
	 * @param entity 业务实体对象
	 * @return 删除成功返回true否则返回false
	 */
	public void delete(E entity);
	
	/**
	 * 根据ID删除
	 * @param id 业务实体对象的标识
	 * @return 删除成功返回true否则返回false
	 */
	public boolean deleteById(K id);
	
	/**
	 * 修改
	 * @param entity 业务实体对象
	 * @return 修改成功返回true否则返回false
	 */
	public void update(E entity);
	
	/**
	 * 根据ID查找业务实体对象
	 * @param id 业务实体对象的标识
	 * @return 业务实体对象对象或null
	 */
	public E findById(K id);
	
	/**
	 * 
	 * @param props
	 * @return
	 */
	public E findBy (Map<String, Object >props);
	
	public List<E> findAll();
	
	public List<E> findAllBy(Map<String, Object> props);

}
