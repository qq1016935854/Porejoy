package com.purejoy.controller;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.purejoy.model.User;
import com.purejoy.service.IFileUploadService;
import com.purejoy.service.IUserService;
import com.purejoy.utils.WoException;
import com.purejoy.utils.WoResultCode;


@Controller
@RequestMapping("/control/user")
public class UserController2 {
	private final static Logger LOG = LogManager.getLogger(UserController2.class);
	
	@Autowired 
	private IFileUploadService fileUploadService;
	
	@Autowired
	private IUserService userService;
	
	@RequestMapping("/list")
	public ModelAndView getUsers (){
		
		ModelAndView mav = new ModelAndView();
		//下面是jsp地址，通过视图解析器添加前后缀
		mav.setViewName("control/user/list");
		mav.addObject("users", userService.getUsers());
		return mav;
	}
	
	
	@RequestMapping("/loadCreateForm")
	public String loadCreateForm(){
		return "control/user/createForm";
	}

	@ResponseBody	//讲方法返回的Object对象映射为json
	@RequestMapping("/create")
	public Object createUser(User user){
		try {
			user.setUid(UUID.randomUUID().toString());
			userService.createUser(user);
			return WoResultCode.getSuccess().setMsg("创建用户成功!");
		} catch (WoException e) {
			return e.getCode();
		}catch (Exception e) {
			return WoResultCode.getUnknown().setMsg("创建用户失败!");
		}
		
	}


	@RequestMapping("/loadUpdateForm")
	public ModelAndView loadUpdateForm(String userId){
		ModelAndView mav = new ModelAndView();
		User user = userService.getUser(userId);
		mav.setViewName("control/user/updateForm");
		mav.addObject("user",user);
		return mav;
	}
	
	@ResponseBody
	@RequestMapping("/update")
	public Object updateUser(User user){
		try {
			
			userService.updateUser(user);	
			
			return WoResultCode.getSuccess().setMsg("用户更新成功!");
		} catch (WoException e) {
			return e.getCode();
		}catch (Exception e) {
			return WoResultCode.getUnknown().setMsg("用户更新失败!");
		}
		
	}

	@ResponseBody
	@RequestMapping("/delete")
	public Object deleteUser(String[] userIds){
		try {
			for (String userId : userIds) {
				User user = new User();
				user.setUid(userId);
				userService.deleteUser(user);
			}			
			return WoResultCode.getSuccess().setMsg("用户删除成功!");
		} catch (WoException e) {
			return e.getCode();
		}catch (Exception e) {
			return WoResultCode.getUnknown().setMsg("用户删除失败!");
		}
		
	}
	
	@ResponseBody	//讲方法返回的Object对象映射为json
	@RequestMapping("/search")
	public ModelAndView searchUser(String uname){
		ModelAndView mav = new ModelAndView();
		List<User> users = userService.getUserByLoginName(uname);
		mav.setViewName("control/user/search");
		mav.addObject("users", users);
		return mav;
	}
}
