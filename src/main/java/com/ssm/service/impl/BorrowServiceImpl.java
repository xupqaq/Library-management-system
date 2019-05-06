package com.ssm.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.BorrowDao;
import com.ssm.pojo.Borrow;
import com.ssm.pojo.User;
import com.ssm.service.BorrowService;

@Service
public class BorrowServiceImpl implements BorrowService {

	@Autowired
	BorrowDao dao;
	
	@Override
	public List<Borrow> getMyBorrow(User u) {
		return dao.getMyBorrow(u);
	}

	@Override
	public List<Borrow> getBorrowList(User u) {
		return dao.getBorrowList(u);
	}

	@Override
	public List<Borrow> isBorrow(String userid) {
		return dao.isBorrow(userid);
	}

	@Override
	public void borrowBook(String userid, String bookid, Date returntime) {
		dao.borrowBook(userid, bookid, returntime);
	}

	@Override
	public void returnBook(String borrowid) {
		dao.returnBook(borrowid);
	}

	@Override
	public List<Borrow> isBorrowed(String userid, String bookid) {
		return dao.isBorrowed(userid, bookid);
	}

}
