package com.poly.member;

import java.io.Serializable;

public class MemberDTO implements Serializable {

	private String id;
	private String pw;
	private String pwch;
	private String name1;
	private String birth1;
	private String email1;
	private String phone1;
	private String name2;
	private String birth2;
	private String email2;
	private String phone2;

	public MemberDTO() {
		super();

	}

	public MemberDTO(String id, String pw, String pwch, String name1, String birth1, String email1, String phone1,
			String name2, String birth2, String email2, String phone2) {
		super();
		this.id = id;
		this.pw = pw;
		this.pwch = pwch;
		this.name1 = name1;
		this.birth1 = birth1;
		this.email1 = email1;
		this.phone1 = phone1;
		this.name2 = name2;
		this.birth2 = birth2;
		this.email2 = email2;
		this.phone2 = phone2;
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

	public String getEmail1() {
		return email1;
	}

	public void setEmail1(String email1) {
		this.email1 = email1;
	}

	public String getPhone1() {
		return phone1;
	}

	public void setPhone1(String phone1) {
		this.phone1 = phone1;
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

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
	}

	public String getPhone2() {
		return phone2;
	}

	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

}