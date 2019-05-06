package com.ssm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ssm.pojo.Book;
import com.ssm.pojo.Borrow;
import com.ssm.pojo.Search;
import com.ssm.pojo.User;

@Repository
public interface BookDao {
	//获得所有书籍
	List<Book> getAllBook(Search sea);
	//获取热门书籍
	List<Book> getHostBook(Search sea);
	//获取书名
	List<Book> getBookName(User u);
	//库存减一
	void decBookNum(@Param(value="bookid")String bookid);
	//库存加一
	void addBookNum(@Param(value="bookid")String bookid);
	
	Book getBookInfo(@Param(value="bookid")String bookid);
	
	void updatebook(Book book);
	
	void addbook(Book book);
	
}
