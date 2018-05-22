package com.poly.member;

import java.io.Serializable;

public class MemberDTO implements Serializable {

	private String id;
	private String pw;
	private String pwch;
	private String name1;
	private String birth1;
	private String job1;
	private String email1;
	private String shcool1;
	private String grade1;
	private String sex1;
	private String hphone1;
	private String tphone1;
	private String ephone1;
	private String homeaddress1;

	private String name2;
	private String birth2;
	private String job2;
	private String email2;
	private String shcool2;
	private String grade2;
	private String sex2;
	private String hphone2;
	private String tphone2;
	private String ephone2;
	private String homeaddress2;

	public MemberDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberDTO(String id, String pw, String pwch, String name1, String birth1, String job1, String email1,
			String shcool1, String grade1, String sex1, String hphone1, String tphone1, String ephone1,
			String homeaddress1, String name2, String birth2, String job2, String email2, String shcool2, String grade2,
			String sex2, String hphone2, String tphone2, String ephone2, String homeaddress2) {
		super();
		this.id = id;
		this.pw = pw;
		this.pwch = pwch;
		this.name1 = name1;
		this.birth1 = birth1;
		this.job1 = job1;
		this.email1 = email1;
		this.shcool1 = shcool1;
		this.grade1 = grade1;
		this.sex1 = sex1;
		this.hphone1 = hphone1;
		this.tphone1 = tphone1;
		this.ephone1 = ephone1;
		this.homeaddress1 = homeaddress1;
		this.name2 = name2;
		this.birth2 = birth2;
		this.job2 = job2;
		this.email2 = email2;
		this.shcool2 = shcool2;
		this.grade2 = grade2;
		this.sex2 = sex2;
		this.hphone2 = hphone2;
		this.tphone2 = tphone2;
		this.ephone2 = ephone2;
		this.homeaddress2 = homeaddress2;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getPwch() {
		return pwch;
	}

	public void setPwch(String pwch) {
		this.pwch = pwch;
	}

	public String getName1() {
		return name1;
	}

	public void setName1(String name1) {
		this.name1 = name1;
	}

	public String getBirth1() {
		return birth1;
	}

	public void setBirth1(String birth1) {
		this.birth1 = birth1;
	}

	public String getJob1() {
		return job1;
	}

	public void setJob1(String job1) {
		this.job1 = job1;
	}

	public String getEmail1() {
		return email1;
	}

	public void setEmail1(String email1) {
		this.email1 = email1;
	}

	public String getHphone1() {
		return hphone1;
	}

	public void setHphone1(String hphone1) {
		this.hphone1 = hphone1;
	}

	public String getTphone1() {
		return tphone1;
	}

	public void setTphone1(String tphone1) {
		this.tphone1 = tphone1;
	}

	public String getEphone1() {
		return ephone1;
	}

	public void setEphone1(String ephone1) {
		this.ephone1 = ephone1;
	}

	public String getHomeaddress1() {
		return homeaddress1;
	}

	public void setHomeaddress1(String homeaddress1) {
		this.homeaddress1 = homeaddress1;
	}

	public String getName2() {
		return name2;
	}

	public void setName2(String name2) {
		this.name2 = name2;
	}

	public String getBirth2() {
		return birth2;
	}

	public void setBirth2(String birth2) {
		this.birth2 = birth2;
	}

	public String getJob2() {
		return job2;
	}

	public void setJob2(String job2) {
		this.job2 = job2;
	}

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
	}

	public String getHphone2() {
		return hphone2;
	}

	public void setHphone2(String hphone2) {
		this.hphone2 = hphone2;
	}

	public String getTphone2() {
		return tphone2;
	}

	public void setTphone2(String tphone2) {
		this.tphone2 = tphone2;
	}

	public String getEphone2() {
		return ephone2;
	}

	public void setEphone2(String ephone2) {
		this.ephone2 = ephone2;
	}

	public String getHomeaddress2() {
		return homeaddress2;
	}

	public void setHomeaddress2(String homeaddress2) {
		this.homeaddress2 = homeaddress2;
	}

	public String getShcool1() {
		return shcool1;
	}

	public void setShcool1(String shcool1) {
		this.shcool1 = shcool1;
	}

	public String getShcool2() {
		return shcool2;
	}

	public void setShcool2(String shcool2) {
		this.shcool2 = shcool2;
	}

	public String getGrade1() {
		return grade1;
	}

	public void setGrade1(String grade1) {
		this.grade1 = grade1;
	}

	public String getGrade2() {
		return grade2;
	}

	public void setGrade2(String grade2) {
		this.grade2 = grade2;
	}

	public String getSex1() {
		return sex1;
	}

	public void setSex1(String sex1) {
		this.sex1 = sex1;
	}

	public String getSex2() {
		return sex2;
	}

	public void setSex2(String sex2) {
		this.sex2 = sex2;
	}

}