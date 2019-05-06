package com.ssm.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ssm.pojo.Book;
import com.ssm.pojo.Borrow;
import com.ssm.pojo.Search;
import com.ssm.pojo.User;

@Repository
public interface BookService {

	List<Book> getAllBook(Search sea);
	
	List<Book> getHostBook(Search sea);
	
	List<Book> getBookName(User u);
	
	
	void decBookNum(String bookid);
	
	void addBookNum(String bookid);
	
	
	Book getBookInfo(String bookid);
	
	void updatebook(Book book);
	
	void addbook(Book book);
}
