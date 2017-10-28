
package com.purejoy.controller;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.purejoy.model.Food;
import com.purejoy.service.IFoodService;
import com.purejoy.utils.WoException;
import com.purejoy.utils.WoResultCode;

@Controller
@RequestMapping("control/food")
public class FoodController2 {
	private final static Logger LOG = LogManager.getLogger(FoodController2.class);
	
	@Autowired
	private IFoodService foodService;
	
	@RequestMapping("/list")
	public ModelAndView getfoods (){
		
		ModelAndView mav = new ModelAndView();
		//下面是jsp地址，通过视图解析器添加前后缀
		mav.setViewName("control/food/list");
		List<Food> foods = foodService.getFoods();
		mav.addObject("foods", foods);
		return mav;
	}
	
	
	@RequestMapping("/loadCreateForm")
	public String loadCreateForm(){
		return "control/food/createForm";
	}

	@ResponseBody	//讲方法返回的Object对象映射为json
	@RequestMapping("/create")
	public Object createfood(Food food){
		try {
		
			foodService.createFood(food);
			return WoResultCode.getSuccess().setMsg("创建食谱成功!");
		} catch (WoException e) {
			return e.getCode();
		}catch (Exception e) {
			return WoResultCode.getUnknown().setMsg("创建食谱失败!");
		}
		
	}


	@RequestMapping("/loadUpdateForm")
	public ModelAndView loadUpdateForm(String foodId){
		ModelAndView mav = new ModelAndView();
		Food food = foodService.getFoodById(foodId);
		mav.setViewName("control/food/updateForm");
		mav.addObject("food",food);
		return mav;
	}
	
	@ResponseBody
	@RequestMapping("/update")
	public Object updateFood(Food food){
		
		try {
			
			foodService.updateFood(food);	
			
			return WoResultCode.getSuccess().setMsg("食品更新成功!");
		} catch (WoException e) {
			return e.getCode();
		}catch (Exception e) {
			return WoResultCode.getUnknown().setMsg("食品更新失败!");
		}
			
					
	}

	@ResponseBody
	@RequestMapping("/delete")
	public Object deleteFood(String[] foodIds){
		try {
			for (String foodId : foodIds) {
				Food food = new Food();
				food.setId(foodId);
				foodService.deleteFood(food);
			}			
			return WoResultCode.getSuccess().setMsg("食物删除成功!");
		} catch (WoException e) {
			return e.getCode();
		}catch (Exception e) {
			return WoResultCode.getUnknown().setMsg("食物删除失败!");
		}
		
	}
	
	@ResponseBody	//讲方法返回的Object对象映射为json
	@RequestMapping("/search")
	public ModelAndView searchFood(String name){
		ModelAndView mav = new ModelAndView();
		List<Food> foods = foodService.getFoodByName(name);
		mav.setViewName("control/food/search");
		mav.addObject("foods", foods);
		return mav;
	}
}

