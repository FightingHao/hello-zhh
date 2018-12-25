package com.haohao.project.dao;

import java.util.List;

import com.haohao.project.bean.User;

public interface UserMapper {
	
	List<User> getUsers();
	
	void addUser(User user);
}
