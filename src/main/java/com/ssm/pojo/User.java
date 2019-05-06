package com.ssm.pojo;

public class User {
	private String userid;
	private String uname;
	private String upwd;
	private Integer status;
	private Integer usex;
	private String phone;
	private String classno;
	private Integer uage;

	public User() {
		super();
	}

	public User(String userid, String uname, String upwd, Integer status, Integer usex, String phone, String classno,
			Integer uage) {
		super();
		this.userid = userid;
		this.uname = uname;
		this.upwd = upwd;
		this.status = status;
		this.usex = usex;
		this.phone = phone;
		this.classno = classno;
		this.uage = uage;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpwd() {
		return upwd;
	}

	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getUsex() {
		return usex;
	}

	public void setUsex(Integer usex) {
		this.usex = usex;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getClassno() {
		return classno;
	}

	public void setClassno(String classno) {
		this.classno = classno;
	}

	public Integer getUage() {
		return uage;
	}

	public void setUage(Integer uage) {
		this.uage = uage;
	}

	@Override
	public String toString() {
		return "User [userid=" + userid + ", uname=" + uname + ", upwd=" + upwd + ", status=" + status + ", usex="
				+ usex + ", phone=" + phone + ", classno=" + classno + ", uage=" + uage + "]";
	}
	
	
}
