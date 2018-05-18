package com.poly.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class MemberDAO {
	public DataSource dataFactory;
	private Connection conn;
	private String sql;
	private PreparedStatement pstmt;
	private int cnt;
	private ResultSet rs;
	private boolean result;

	public MemberDAO() {// �깮�꽦�옄
		
			try {
				Context ctx = new InitialContext();
				dataFactory = (DataSource) ctx.lookup(ConstVal.DB_name);
				conn = dataFactory.getConnection();
			} catch (NamingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}// �깮�꽦�옄

	public void memberJoin(MemberDTO memberDTO) {
		try {
			
			sql = "INSERT INTO member(id, pw, name, birth1, email1, phone1, name2, birth2, email2, phone2) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberDTO.getId());
			pstmt.setString(2, memberDTO.getPw());
			pstmt.setString(3, memberDTO.getName1());
			pstmt.setString(4, memberDTO.getBirth1());
			pstmt.setString(5, memberDTO.getEmail1());
			pstmt.setString(6, memberDTO.getPhone1());
			pstmt.setString(7, memberDTO.getName2());
			pstmt.setString(8, memberDTO.getBirth2());
			pstmt.setString(9, memberDTO.getEmail2());
			pstmt.setString(10, memberDTO.getPhone2());
			cnt = pstmt.executeUpdate();
			System.out.println("A");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	
	public String memberSearchId(MemberDTO memberDTO) {
		try {
			sql = "insert into student(id,pw,name1,birth1,email1,phone1,name2,birth2,email2,phone2) values(?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(3, memberDTO.getName1());
			pstmt.setString(4, memberDTO.getBirth1());
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return memberDTO.getId();
	}

	

	

	
	
	
	
}