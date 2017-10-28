package com.purejoy.service.impl;
import java.util.List;

import javax.transaction.Transactional;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.purejoy.dao.IGoodsDao;
import com.purejoy.model.Goods;
import com.purejoy.service.IGoodsService;

@Service
@Transactional
public class GoodsService implements IGoodsService {
	private final static Logger LOG = LogManager.getLogger(GoodsService.class);

	@Autowired
	private IGoodsDao goodsDao;
	
	@Override
	public List<Goods> getGoodses() {
		// TODO Auto-generated method stub
		return goodsDao.findAll();
	}

	@Override
	public void createGoods(Goods goods) {
		// TODO Auto-generated method stub
		goodsDao.create(goods);
		
	}

	@Override
	public Goods getGoodsById(String goodsId) {
		// TODO Auto-generated method stub
		return goodsDao.findById(goodsId);
	}

	@Override
	public void updateGoods(Goods goods) {
		// TODO Auto-generated method stub
		goodsDao.update(goods);
	}

	@Override
	public void deleteGoods(Goods goods) {
		// TODO Auto-generated method stub
		goodsDao.delete(goods);
	}

	@Override
	public List<Goods> getGoodsByName(String name) {
		// TODO Auto-generated method stub
		return goodsDao.getGoodsByName(name);
	}
	
	@Override
	public List<Goods> getChickens() {
		// TODO Auto-generated method stub
		return goodsDao.getChickens();
	}
	
	@Override
	public List<Goods> getFitnessfood() {
		// TODO Auto-generated method stub
		return goodsDao.getFitnessfood();
	}
	
	@Override
	public Goods showInfo(String id) {
		// TODO Auto-generated method stub
		return goodsDao.findById(id);
	}
}
