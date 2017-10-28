package com.purejoy.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.purejoy.model.User;
import com.purejoy.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	private final static Logger LOG = LogManager.getLogger(UserController.class);

	@Autowired
	private UserService userService;

	@RequestMapping("/loadLoginForm")
	public String loadCreateForm() {
		return "jsp/login";
	}

	@RequestMapping("/login")
	public String login(String username, String password, HttpServletRequest request) {

		User user = userService.login(username, password);
		if (user != null) {
			request.getSession().setAttribute("user", user);
			return "index";
		} else {
			return "jsp/login";
		}

	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {

		HttpSession session = request.getSession();
		session.invalidate();
		return "jsp/login";
	}

	@RequestMapping("/register")
	public String register(String username, String password) {

		userService.register(username, password);
		return "jsp/login";
	}

	@RequestMapping("/bill")
	public String createBill(HttpServletRequest request) {

		User user = (User) request.getSession().getAttribute("user");

		if (user == null) {
			return "jsp/login";
		}

		return "jsp/bill";

	}
}
