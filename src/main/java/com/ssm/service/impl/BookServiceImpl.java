package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.BookDao;
import com.ssm.pojo.Book;
import com.ssm.pojo.Borrow;
import com.ssm.pojo.Search;
import com.ssm.pojo.User;
import com.ssm.service.BookService;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	BookDao dao;
	
	@Override
	public List<Book> getAllBook(Search sea) {
		return dao.getAllBook(sea);
	}

	@Override
	public List<Book> getHostBook(Search sea) {
		return dao.getHostBook(sea);
	}

	@Override
	public List<Book> getBookName(User u) {
		return dao.getBookName(u);
	}

	@Override
	public void decBookNum(String bookid) {
		dao.decBookNum(bookid);
	}

	@Override
	public void addBookNum(String bookid) {
		dao.addBookNum(bookid);
	}

	@Override
	public Book getBookInfo(String bookid) {
		return dao.getBookInfo(bookid);
	}

	@Override
	public void updatebook(Book book) {
		dao.updatebook(book);
	}

	@Override
	public void addbook(Book book) {
		dao.addbook(book);
	}

}
