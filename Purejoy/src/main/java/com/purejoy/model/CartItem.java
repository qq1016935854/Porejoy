package com.purejoy.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Table;

public class CartItem implements Serializable {
	/**
	 * 购物车项
	 */
	private static final long serialVersionUID = 1L;

	private Goods goods;
	private int count; // 数量
	private double total; // 小计

	public CartItem() {

	}

	public CartItem(Goods goods, int count) {
		this.goods = goods;
		this.count = count;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	/**
	 * 小计是计算出来的
	 * 
	 * @return
	 */
	public double getTotal() {
		 return goods.getPrice() * count;

	}

}
