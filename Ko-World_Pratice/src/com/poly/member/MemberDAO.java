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
			
			sql = "INSERT INTO member(id, pw, name1, birth1, email1, phone1, name2, birth2, email2, phone2) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberDTO.getId());
			pstmt.setString(2, memberDTO.getPw());
			pstmt.setString(3, memberDTO.getName1());
			pstmt.setString(4, memberDTO.getBirth1());
			pstmt.setString(5, memberDTO.getEmail1());
			pstmt.setString(6, memberDTO.getTphone1());
			pstmt.setString(7, memberDTO.getName2());
			pstmt.setString(8, memberDTO.getBirth2());
			pstmt.setString(9, memberDTO.getEmail2());
			pstmt.setString(10, memberDTO.getTphone2());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	
	public void memberSearchId(MemberDTO memberDTO) {
		try {
			sql = "select * from member as sequence where name1=? and brith1=? ";
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(3, memberDTO.getName1());
				pstmt.setString(4, memberDTO.getBirth1());
				rs = pstmt.executeQuery();
				while (rs.next()) {
					memberDTO.setId(rs.getString("id"));
				}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void memberSearchPW(MemberDTO memberDTO) {
		sql = "select * from member as sequence where id=? name1=? and brith1=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberDTO.getId());
			pstmt.setString(2, memberDTO.getName1());
			pstmt.setString(3, memberDTO.getBirth1());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				memberDTO.setPw(rs.getString("pw"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public boolean memberLogin(MemberDTO memberDTO) {
		sql = "select id,pw from member where id=? and pw=?";
		try {
			result = false;
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberDTO.getId());;
			pstmt.setString(2, memberDTO.getPw());
			rs = pstmt.executeQuery();
		
			while (rs.next()) {
			result = true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	

	

	
	
	
	
}