package com.haohao.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haohao.project.bean.BookType;
import com.haohao.project.dao.BookTypeMapper;

@Service
public class BookTypeService {
	
	@Autowired
	BookTypeMapper bookTypeMapper;
	
	public List<BookType> getBookTypes(){
		return bookTypeMapper.selectByExample(null);
	}
}
