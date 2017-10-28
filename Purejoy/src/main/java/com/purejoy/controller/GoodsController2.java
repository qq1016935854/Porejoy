package com.purejoy.controller;

import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.purejoy.model.Goods;
import com.purejoy.service.IGoodsService;
import com.purejoy.utils.WoException;
import com.purejoy.utils.WoResultCode;

@Controller
@RequestMapping("/control/goods")
public class GoodsController2 {
	private final static Logger LOG = LogManager.getLogger(GoodsController2.class);

	@Autowired
	private IGoodsService goodsService;

	@RequestMapping("/list")
	public ModelAndView getGoodses() {

		ModelAndView mav = new ModelAndView();
		// 下面是jsp地址，通过视图解析器添加前后缀
		mav.setViewName("control/goods/list");
		List<Goods> goodses = goodsService.getGoodses();
		mav.addObject("goodses", goodses);
		return mav;
	}

	@RequestMapping("/loadCreateForm")
	public String loadCreateForm() {
		return "control/goods/createForm";
	}

	@ResponseBody // 讲方法返回的Object对象映射为json
	@RequestMapping("/create")
	public Object createGoods(Goods goods) {
		try {

			goodsService.createGoods(goods);
			return WoResultCode.getSuccess().setMsg("创建商品成功!");
		} catch (WoException e) {
			return e.getCode();
		} catch (Exception e) {
			return WoResultCode.getUnknown().setMsg("创建商品失败!");
		}

	}

	@RequestMapping("/loadUpdateForm")
	public ModelAndView loadUpdateForm(String goodsId) {
		ModelAndView mav = new ModelAndView();
		Goods goods = goodsService.getGoodsById(goodsId);
		mav.setViewName("control/goods/updateForm");
		mav.addObject("goods", goods);
		return mav;
	}

	@ResponseBody
	@RequestMapping("/update")

	public Object updateGoods(Goods goods){
		
		try {
			goodsService.updateGoods(goods);	
			return WoResultCode.getSuccess().setMsg("商品更新成功!");
		} catch (WoException e) {
			return e.getCode();
		}catch (Exception e) {
			return WoResultCode.getUnknown().setMsg("商品更新失败!");
		}
				
	}

	@ResponseBody
	@RequestMapping("/delete")
	public Object deletegoods(String[] goodsIds) {
		try {
			for (String goodsId : goodsIds) {
				Goods goods = new Goods();
				goods.setId(goodsId);
				goodsService.deleteGoods(goods);
			}
			return WoResultCode.getSuccess().setMsg("商品删除成功!");
		} catch (WoException e) {
			return e.getCode();
		} catch (Exception e) {
			return WoResultCode.getUnknown().setMsg("商品删除失败!");
		}

	}

	@ResponseBody // 讲方法返回的Object对象映射为json
	@RequestMapping("/search")
	public ModelAndView searchGoods(String name) {
		ModelAndView mav = new ModelAndView();
		List<Goods> goodses = goodsService.getGoodsByName(name);
		mav.setViewName("control/goods/search");
		mav.addObject("goodses", goodses);
		return mav;
	}
}
