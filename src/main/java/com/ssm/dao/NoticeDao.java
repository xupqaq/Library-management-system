package com.ssm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ssm.pojo.Notice;

public interface NoticeDao {
	
	List<Notice> getnotice();
	
	void updatenotice(Notice notice);
	
	void delnotice(@Param(value="noticeid")String noticeid);
	
	void addnotice(Notice notice);
}
