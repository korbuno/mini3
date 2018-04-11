package com.omp.repository.domain;

import java.util.Date;

public class Member {
	private int memberNo;
	private String id;
	private String pass;
	private String name;
	private String phone;
	private int auth;
	@Override
	public String toString() {
		return "Member [memberNo=" + memberNo + ", id=" + id + ", pass=" + pass + ", name=" + name + ", phone=" + phone
				+ ", auth=" + auth + ", regDate=" + regDate + ", updateDate=" + updateDate + "]";
	}
	private Date regDate;
	private Date updateDate;
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getAuth() {
		return auth;
	}
	public void setAuth(int auth) {
		this.auth = auth;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	
}
