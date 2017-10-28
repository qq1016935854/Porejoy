package com.purejoy.dao;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.purejoy.model.Goods;
public interface IGoodsDao extends IBaseDao<Goods, String>{

	List<Goods> getGoodsByName(String name);

	List<Goods> getChickens();

	List<Goods> getFitnessfood();

	
}
