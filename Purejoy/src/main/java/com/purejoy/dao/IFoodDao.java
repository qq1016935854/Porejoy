package com.purejoy.dao;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.purejoy.model.Food;
public interface IFoodDao extends IBaseDao<Food	, String>{

	List<Food> getFoodByName(String name);

}
