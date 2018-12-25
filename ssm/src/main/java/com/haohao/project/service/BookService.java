package com.haohao.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haohao.project.bean.Book;
import com.haohao.project.dao.BookMapper;

@Service
public class BookService {
	
	@Autowired
	BookMapper bookMapper;
	
	public List<Book> getAllBooks(){
		return bookMapper.selectByExampleWithType(null);
	}
	
	public void addBook(Book book) {
		bookMapper.insertSelective(book);
	}
	
	public Book getBook(Integer id) {
		return bookMapper.selectByPrimaryKeyWithType(id);
	}
	
	public void update(Book book) {
		bookMapper.updateByPrimaryKeySelective(book);
	}
	
	public void delete(Integer id) {
		bookMapper.deleteByPrimaryKey(id);
	}
	
	public List<Book> getBookNames(){
		List<Book> books = bookMapper.selectByExampleWithType(null);
		return books;
	}
	
	public void deleteBatch(List<Integer> del_ids) {
		for (Integer id : del_ids) {
			bookMapper.deleteByPrimaryKey(id);
		}
	}
}
