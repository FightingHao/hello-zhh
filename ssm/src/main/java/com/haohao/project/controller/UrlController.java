package com.haohao.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class UrlController extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String username = (String) request.getSession().getAttribute("username");
		if(username == null) {
			String contextPath = request.getContextPath();
			response.sendRedirect(contextPath + "/index.jsp");
			return false;
		}
		return true;
	}
}
