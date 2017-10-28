package com.purejoy.controller;

import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.purejoy.model.Goods;
import com.purejoy.service.IGoodsService;

@Controller
@RequestMapping("/goods")
public class GoodsController {
	private final static Logger LOG = LogManager.getLogger(GoodsController.class);

	@Autowired
	private IGoodsService service;

	@RequestMapping("/fitnessfood")
	public ModelAndView getFitnessfood() {

		ModelAndView mav = new ModelAndView();

		List<Goods> list = service.getFitnessfood();
		mav.setViewName("jsp/fitnessfood");
		mav.addObject("fitnessfoods", list);
		return mav;
	}
	
//	@RequestMapping("/fitnessfood")
//	@ResponseBody
//	public Object getFitnessfood() {
//
//		List<Fitnessfood> list = service.getFitnessfood();
//		JSONArray array = JSONArray.fromObject(list);
//		return array.toString();
//	}

	

	@RequestMapping("/chicken")
	public ModelAndView getChickens() {
		ModelAndView mav = new ModelAndView();

		List<Goods> chickens = service.getChickens();
		mav.setViewName("jsp/chicken");
		mav.addObject("chickens", chickens);
		return mav;
	}

}
