package com.purejoy.controller;
import java.util.List;
import java.util.UUID;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.purejoy.model.Articles;
import com.purejoy.service.ArticlesService;
import com.purejoy.service.IArticlesService;
import com.purejoy.service.IFileUploadService;
import com.purejoy.utils.WoException;
import com.purejoy.utils.WoResultCode;

@Controller
@RequestMapping("/control/articles")
public class ArticlesController2 {
	private final static Logger LOG = LogManager.getLogger(ArticlesController2.class);
	
//	@Autowired
//	private IArticlesService articlesService;
//	
	@Autowired 
	private IFileUploadService fileUploadService;
	@Autowired
	private ArticlesService articlesService;

	
	@RequestMapping("/list")
	public ModelAndView getArticless (){
		
		ModelAndView mav = new ModelAndView();
		//下面是jsp地址，通过视图解析器添加前后缀
		mav.setViewName("control/articles/list");
		List<Articles> articles = articlesService.getArticles();
		mav.addObject("articles", articles);
		return mav;
	}
	
	
	@RequestMapping("/loadCreateForm")
	public String loadCreateForm(){
		return "control/articles/createForm";
	}

	@ResponseBody	//讲方法返回的Object对象映射为json
	@RequestMapping("/create")
	public Object createArticles(Articles articles){
		try {
		
			articlesService.createArticles(articles);
			return WoResultCode.getSuccess().setMsg("创建文章信息成功!");
		} catch (WoException e) {
			return e.getCode();
		}catch (Exception e) {
			return WoResultCode.getUnknown().setMsg("创建文章信息失败!");
		}
		
	}


	@RequestMapping("/loadUpdateForm")
	public ModelAndView loadUpdateForm(String articlesId){
		ModelAndView mav = new ModelAndView();
		Articles articles = articlesService.getArticlesById(articlesId);
		mav.setViewName("control/articles/updateForm");
		mav.addObject("articles",articles);
		return mav;
	}
	
	@ResponseBody
	@RequestMapping("/update")
	public Object updateArticles(Articles articles){
		
			
			articlesService.updateArticles(articles);	
			
			return WoResultCode.getSuccess().setMsg("文章信息更新成功!");
		
	}

	@ResponseBody
	@RequestMapping("/delete")
	public Object deleteArticles(String[] articlesIds){
		try {
			for (String articlesId : articlesIds) {
				Articles articles = new Articles();
				articles.setId(articlesId);
				articlesService.deleteArticles(articles);
			}			
			return WoResultCode.getSuccess().setMsg("文章删除成功!");
		} catch (WoException e) {
			return e.getCode();
		}catch (Exception e) {
			return WoResultCode.getUnknown().setMsg("文章删除失败!");
		}
		
	}
	
	@ResponseBody	//讲方法返回的Object对象映射为json
	@RequestMapping("/search")
	public ModelAndView searchArticles(String title){
		ModelAndView mav = new ModelAndView();
		List<Articles> articles = articlesService.getArticlesByTitle(title);
		mav.setViewName("control/articles/search");
		mav.addObject("articles", articles);
		return mav;
	}
}
