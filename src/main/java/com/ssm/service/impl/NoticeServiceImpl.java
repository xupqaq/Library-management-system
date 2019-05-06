package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.NoticeDao;
import com.ssm.pojo.Notice;
import com.ssm.service.NoticeService;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	NoticeDao dao;

	@Override
	public List<Notice> getnotice() {
		return dao.getnotice();
	}

	@Override
	public void updatenotice(Notice notice) {
		dao.updatenotice(notice);

	}

	@Override
	public void delnotice(String noticeid) {
		dao.delnotice(noticeid);

	}

	@Override
	public void addnotice(Notice notice) {
		dao.addnotice(notice);

	}

}
