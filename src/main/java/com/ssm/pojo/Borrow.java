package com.ssm.pojo;

import java.util.Date;

public class Borrow {

	private String borrowid;
	private String userid;
	private String bookid;
	private Date borrowtime;
	private Date returntime;
	private Date realreturntime;
	private String isreturn;
	
	public Borrow() {
		super();
	}
	
	public Date getRealreturntime() {
		return realreturntime;
	}

	public void setRealreturntime(Date realreturntime) {
		this.realreturntime = realreturntime;
	}

	public String getBorrowid() {
		return borrowid;
	}
	public void setBorrowid(String borrowid) {
		this.borrowid = borrowid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getBookid() {
		return bookid;
	}
	public void setBookid(String bookid) {
		this.bookid = bookid;
	}
	public Date getBorrowtime() {
		return borrowtime;
	}
	public void setBorrowtime(Date borrowtime) {
		this.borrowtime = borrowtime;
	}
	public Date getReturntime() {
		return returntime;
	}
	public void setReturntime(Date returntime) {
		this.returntime = returntime;
	}
	public String getIsreturn() {
		return isreturn;
	}
	public void setIsreturn(String isreturn) {
		this.isreturn = isreturn;
	}
	
}
