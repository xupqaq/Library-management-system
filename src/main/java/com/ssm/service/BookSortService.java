package com.ssm.service;

import java.util.List;

import com.ssm.pojo.BookSort;

public interface BookSortService {

	List<BookSort> getsort();
	
	void add(BookSort bsort);
	
	void del(String sortid);
	
	void updatesort(BookSort sort);
}
