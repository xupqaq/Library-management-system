package com.ssm.service;

import java.util.List;

import com.ssm.pojo.Notice;

public interface NoticeService {

	
	List<Notice> getnotice();
	
	void updatenotice(Notice notice);
	
	void delnotice(String noticeid);
	
	void addnotice(Notice notice);
}
