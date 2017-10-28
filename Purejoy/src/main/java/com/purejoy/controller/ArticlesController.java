package com.purejoy.controller;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.purejoy.model.Articles;
import com.purejoy.service.ArticlesService;

import net.sf.json.JSONArray;
 
@Controller
@RequestMapping("/articles")
public class ArticlesController {
	private final static Logger LOG = LogManager.getLogger(ArticlesController.class);
	
	@Autowired
	private ArticlesService service;
	
	@RequestMapping("/list")
//	@ResponseBody
	public ModelAndView getArticles(){
		
		ModelAndView mav = new ModelAndView();
		List<Articles> articles = service.getArticles();
		mav.setViewName("jsp/article");
		mav.addObject("articles",articles);
//		JSONArray array = JSONArray.fromObject(articles);
		return mav;
		

//		JSONArray array = JSONArray.fromObject(articles);
//		
//		return array.toString();
		

	}
}
