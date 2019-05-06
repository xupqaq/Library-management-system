package com.ssm.pojo;

public class Search {

	private String bookName;
	
	private String author;
	
	private String bookSort;
	
	private String cpage;
	
	public Search(){};
	
	

	public String getCpage() {
		return cpage;
	}



	public void setCpage(String cpage) {
		this.cpage = cpage;
	}



	public String getAuthor() {
		return author;
	}



	public void setAuthor(String author) {
		this.author = author;
	}



	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getBookSort() {
		return bookSort;
	}

	public void setBookSort(String bookSort) {
		this.bookSort = bookSort;
	}
	
	
}
