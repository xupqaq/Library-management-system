package com.ssm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ssm.pojo.BookSort;

public interface BookSortDao {
	
	List<BookSort> getsort();

	void add(BookSort bsort);
	
	void del(@Param(value="sortid")String sortid);
	
	void updatesort(BookSort sort);
}
