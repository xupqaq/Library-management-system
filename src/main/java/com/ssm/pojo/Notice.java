package com.ssm.pojo;

import java.util.Date;

public class Notice {

	private String noticeid;
	private String notiename;
	private String content;
	private Date updatetime;
	private String userid;
	private String username;
	private String status;
	
	private Notice(){}

	public String getNoticeid() {
		return noticeid;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setNoticeid(String noticeid) {
		this.noticeid = noticeid;
	}

	public String getNotiename() {
		return notiename;
	}

	public void setNotiename(String notiename) {
		this.notiename = notiename;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	};
	
	
	
}
