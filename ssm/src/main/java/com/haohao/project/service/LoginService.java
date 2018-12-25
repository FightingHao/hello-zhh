package com.haohao.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haohao.project.bean.User;
import com.haohao.project.dao.UserMapper;

@Service
public class LoginService {
	
	@Autowired
	UserMapper userMapper;
	
	public List<User> getUsers() {
		return userMapper.getUsers();
	}
	
	public void addUser(User user) {
		userMapper.addUser(user);
	}
	
}
