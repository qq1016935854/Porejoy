package com.purejoy.service;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.purejoy.model.Goods;
public interface IGoodsService {

	List<Goods> getGoodses();

	void createGoods(Goods goods);

	Goods getGoodsById(String goodsId);

	void updateGoods(Goods goods);

	void deleteGoods(Goods goods);

	List<Goods> getGoodsByName(String name);

	Goods showInfo(String id);

	List<Goods> getFitnessfood();

	List<Goods> getChickens();

}
