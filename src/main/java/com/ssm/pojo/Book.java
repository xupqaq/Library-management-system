package com.ssm.pojo;

import java.util.Date;

public class Book {

	private String bookid;
	private String bookname;
	private String bookauthor;
	private String bookpub;
	private String booknum;
	private String booksort;
	private Date bookrecord;
	private String status;
	private Integer borrownum;
	private String dec;
	
	
	public Book() {
		super();
	}
	
	public Integer getBorrownum() {
		return borrownum;
	}

	public void setBorrownum(Integer borrownum) {
		this.borrownum = borrownum;
	}

	public String getDec() {
		return dec;
	}

	public void setDec(String dec) {
		this.dec = dec;
	}

	public String getBookid() {
		return bookid;
	}
	public void setBookid(String bookid) {
		this.bookid = bookid;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getBookauthor() {
		return bookauthor;
	}
	public void setBookauthor(String bookauthor) {
		this.bookauthor = bookauthor;
	}
	public String getBookpub() {
		return bookpub;
	}
	public void setBookpub(String bookpub) {
		this.bookpub = bookpub;
	}
	public String getBooknum() {
		return booknum;
	}
	public void setBooknum(String booknum) {
		this.booknum = booknum;
	}
	public String getBooksort() {
		return booksort;
	}
	public void setBooksort(String booksort) {
		this.booksort = booksort;
	}
	
	public Date getBookrecord() {
		return bookrecord;
	}
	public void setBookrecord(Date bookrecord) {
		this.bookrecord = bookrecord;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Book [bookid=" + bookid + ", bookname=" + bookname + ", bookauthor=" + bookauthor + ", bookpub="
				+ bookpub + ", booknum=" + booknum + ", booksort=" + booksort + ", bookrecord=" + bookrecord
				+ ", status=" + status + ", borrownum=" + borrownum + ", dec=" + dec + "]";
	}
	
	
	
}
