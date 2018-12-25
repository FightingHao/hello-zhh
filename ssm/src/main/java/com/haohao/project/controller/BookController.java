package com.haohao.project.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.haohao.project.bean.Book;
import com.haohao.project.service.BookService;
import com.haohao.project.service.BookTypeService;

@Controller
public class BookController {

	@Autowired
	BookService bookService;
	
	@Autowired
	BookTypeService bookTypeService;

	@RequestMapping("/books")
	public String listAllBooks(@RequestParam(value = "pn", defaultValue = "1") Integer pn, 
			Model model) {
		PageHelper.startPage(pn, 6);
		List<Book> books = bookService.getAllBooks();
		PageInfo<Book> page = new PageInfo<>(books, 5);
		model.addAttribute("pageInfo", page);
		model.addAttribute("book", new Book());
		model.addAttribute("bookTypes", bookTypeService.getBookTypes());
		return "list";
	}
	
	@RequestMapping(value = "/book", method = RequestMethod.POST)
	public String addBook(Book book) {
		bookService.addBook(book);
		return "redirect:/books";
	}
	
	@ResponseBody
	@RequestMapping(value = "/book/{id}", method = RequestMethod.GET)
	public Book getBook(@PathVariable("id") Integer id) {
		return bookService.getBook(id);
	}
	
	@RequestMapping(value = "/book", method = RequestMethod.PUT)
	public String update(Book book) {
		bookService.update(book);
		return "redirect:/books";
	}
	
	@RequestMapping(value = "/book/{ids}", method = RequestMethod.DELETE)
	public String delete(@PathVariable("ids") String ids) {
		if(ids.contains("-")){
			List<Integer> del_ids = new ArrayList<>();
			String[] str_ids = ids.split("-");
			for (String string : str_ids) {
				del_ids.add(Integer.parseInt(string));
			}
			bookService.deleteBatch(del_ids);
		}else{
			Integer id = Integer.parseInt(ids);
			bookService.delete(id);
		}
		return "redirect:/books";
	}
	
	@ResponseBody
	@RequestMapping("/bookName")
	public List<String> getBookNames(){
		List<String> bookNames = new ArrayList<>();
		List<Book> books = bookService.getBookNames();
		for (Book book : books) {
			bookNames.add(book.getBookName());
		}
		return bookNames;
	}
}
