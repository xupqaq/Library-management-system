package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.BookSortDao;
import com.ssm.pojo.Book;
import com.ssm.pojo.BookSort;
import com.ssm.pojo.User;
import com.ssm.service.BookService;
import com.ssm.service.BookSortService;

@Service
public class BookSortServiceImpl implements BookSortService {

	@Autowired
	BookSortDao dao;
	
	@Override
	public void add(BookSort bsort) {
		dao.add(bsort);
	}

	@Override
	public void del(String sortid) {
		dao.del(sortid);
	}

	@Override
	public void updatesort(BookSort sort) {
		dao.updatesort(sort);
	}

	@Override
	public List<BookSort> getsort() {
		return dao.getsort();
	}

	

}
