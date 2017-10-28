package com.purejoy.service.impl;
import java.util.List;

import javax.transaction.Transactional;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.purejoy.dao.RecipeDao;
import com.purejoy.model.Recipe;
import com.purejoy.service.RecipeService;

@Service
@Transactional
public class RecipeServiceImpl implements RecipeService {
	private final static Logger LOG = LogManager.getLogger(RecipeServiceImpl.class);

	@Autowired
	private RecipeDao dao;
	
	@Override
	public List<Recipe> getRecipe() {
		// TODO Auto-generated method stub
		return dao.getRecipe();
	}

	
}
