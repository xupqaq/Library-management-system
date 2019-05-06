package com.ssm.service;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ssm.pojo.Borrow;
import com.ssm.pojo.User;

@Repository
public interface BorrowService {

	List<Borrow> getMyBorrow(User u);
	
	List<Borrow> getBorrowList(User u);
	
	List<Borrow> isBorrow(String userid);
	
	List<Borrow> isBorrowed(String userid,String bookid);
	
	void borrowBook(String userid, String bookid, Date returntime);
	
	void returnBook(String borrowid);
}
