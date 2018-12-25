package com.haohao.project.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.haohao.project.bean.User;
import com.haohao.project.service.LoginService;

@Controller
public class LoginController {
	
	@Autowired
	LoginService loginService;
	
	@RequestMapping("/login")
	public String yanzheng(String code, User user, HttpServletRequest request) {
		StringBuffer sessionCode = (StringBuffer)request.getSession().getAttribute("CHECK_CODE_KEY");
		if(loginService.getUsers().contains(user) && code.equalsIgnoreCase(sessionCode.toString())) {
			request.getSession().setAttribute("username", user.getUsername());
			return "redirect:books";
		}else {
			request.getSession().setAttribute("error", "用户名或密码错误！");
			return "redirect:index.jsp";
		}
	}
	
	@RequestMapping("/zhuce")
	public String zhuce(User user) {
		loginService.addUser(user);
		return "redirect:index.jsp";
	}
	
	@ResponseBody
	@RequestMapping("/code")
	public String getCode(String code, HttpServletRequest request) {
		StringBuffer sessionCode = (StringBuffer)request.getSession().getAttribute("CHECK_CODE_KEY");
		return sessionCode.toString();
	}
	
	@ResponseBody
	@RequestMapping("/username")
	public List<String> getUsername() {
		List<String> usernames = new ArrayList<>();
		List<User> users = loginService.getUsers();
		for (User user : users) {
			usernames.add(user.getUsername());
		}
		return usernames;
	}
}
