package com.purejoy.controller;
import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.purejoy.model.Recipe;

import com.purejoy.service.IRecipeService;
import com.purejoy.utils.WoException;
import com.purejoy.utils.WoResultCode;

@Controller
@RequestMapping("/control/recipe")
public class RecipeController2 {
	private final static Logger LOG = LogManager.getLogger(RecipeController2.class);
	
	

	@Autowired
	private IRecipeService recipeService;

	
	@RequestMapping("/list")
	public ModelAndView getrecipes (){
		
		ModelAndView mav = new ModelAndView();
		//下面是jsp地址，通过视图解析器添加前后缀
		mav.setViewName("control/recipe/list");
		List<Recipe> recipes = recipeService.getRecipe();
		mav.addObject("recipes", recipes);
		return mav;
	}
	
	
	@RequestMapping("/loadCreateForm")
	public String loadCreateForm(){
		return "control/recipe/createForm";
	}

	@ResponseBody	//讲方法返回的Object对象映射为json
	@RequestMapping("/create")
	public Object createrecipe(Recipe recipe){
		try {
		
			recipeService.createRecipe(recipe);
			return WoResultCode.getSuccess().setMsg("创建食谱成功!");
		} catch (WoException e) {
			return e.getCode();
		}catch (Exception e) {
			return WoResultCode.getUnknown().setMsg("创建食谱失败!");
		}
		
	}


	@RequestMapping("/loadUpdateForm")
	public ModelAndView loadUpdateForm(String recipeId){
		ModelAndView mav = new ModelAndView();
		Recipe recipe = recipeService.getRecipeById(recipeId);
		mav.setViewName("control/recipe/updateForm");
		mav.addObject("recipe",recipe);
		return mav;
	}
	
	@ResponseBody
	@RequestMapping("/update")
	public Object updateRecipe(Recipe recipe){
		
			
			recipeService.updateRecipe(recipe);	
			
			return WoResultCode.getSuccess().setMsg("食谱更新成功!");
		
	}

	@ResponseBody
	@RequestMapping("/delete")
	public Object deleterecipe(String[] recipeIds){
		try {
			for (String recipeId : recipeIds) {
				Recipe recipe = new Recipe();
				recipe.setId(recipeId);
				recipeService.deleteRecipe(recipe);
			}			
			return WoResultCode.getSuccess().setMsg("食谱删除成功!");
		} catch (WoException e) {
			return e.getCode();
		}catch (Exception e) {
			return WoResultCode.getUnknown().setMsg("食谱删除失败!");
		}
		
	}
	
	@ResponseBody	//讲方法返回的Object对象映射为json
	@RequestMapping("/search")
	public ModelAndView searchRecipe(String recipe_weekday){
		ModelAndView mav = new ModelAndView();
		List<Recipe> recipes = recipeService.getRecipeByWeekday(recipe_weekday);
		mav.setViewName("control/recipe/search");
		mav.addObject("recipes", recipes);
		return mav;
	}
}

