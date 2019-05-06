package com.ssm.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ssm.pojo.Borrow;
import com.ssm.pojo.User;

@Repository
public interface BorrowDao {

	List<Borrow> getMyBorrow(User u);
	
	List<Borrow> getBorrowList(User u);
	//查看借书数量
	List<Borrow> isBorrow(@Param(value="userid")String userid);
	//查看是否借过这本书
	List<Borrow> isBorrowed(@Param(value="userid")String userid,@Param(value="bookid")String bookid);
	//借书
	void borrowBook(@Param(value="userid")String userid,@Param(value="bookid")String bookid,@Param(value="returntime")Date returntime);
	//还书
	void returnBook(@Param(value="borrowid")String borrowid);
}
