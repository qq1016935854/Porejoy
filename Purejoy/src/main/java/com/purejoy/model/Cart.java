package com.purejoy.model;
import java.util.Collection;
import java.util.LinkedHashMap;

public class Cart {

	/**
	 * 购物车数据
	 */
	private static final long serialVersionUID = 1L;
	private double totalCount; 
	
	private LinkedHashMap<String, CartItem> map = 
			                new LinkedHashMap<String, CartItem>();
    
//	${cart.items}
	
	public Collection<CartItem> getItems(){
		
		return map.values();
	}
	
	
	public double getTotalCount() {
		return totalCount;
	}


	/**
	 * 添加到购物车的方法
	 */
	public void add(CartItem item){
		//1.分析是否包含
		 String id= item.getGoods().getId();		 
		 if(map.containsKey(id)){
			//2.有 修改 原来cartItem的数量 
			 //新添加item的数量
			 int count =  item.getCount();
			 //获取老的item
			 CartItem oldItem = map.get(id);
			 
			 oldItem.setCount(oldItem.getCount()+count);
		 }else{
			//2.没有put 
			map.put(id, item);
		 }
		 //总金额改变
		 totalCount += item.getTotal();
	}
	
	/**
	 * 移除单个产品
	 * @param pid
	 */
	public void remove(String pid){
		 //移除阐述
		 CartItem item = map.remove(pid);
		 totalCount -= item.getTotal();
	}
	
	/**
	 * 清空购物车
	 */
	public void clean(){
		map.clear();
		totalCount = 0;
	}
   
	
    /**
     * 
     * @param pid 要修改的购物车项
     * @param count 修改后的数量
     */
	public void updateCount(String id,int count){
		
		CartItem cartItem = map.get(id);
		
		totalCount -= cartItem.getTotal(); //减去
		
		cartItem.setCount(count);
		
		totalCount += cartItem.getTotal();
		
	}
	
	
	
}
