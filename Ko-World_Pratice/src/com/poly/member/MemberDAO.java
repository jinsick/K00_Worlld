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
			
			sql = "INSERT INTO member(id, pw, name1, birth1, job1, email1, school1, grade1, sex1, hphone1, tphone1, ephone1, homeaddress1, name2, birth2, job2, email2, school2, grade2, sex2, hphone2, tphone2, ephone2, homeaddress2) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberDTO.getId());
			pstmt.setString(2, memberDTO.getPw());
			pstmt.setString(3, memberDTO.getName1());
			pstmt.setString(4, memberDTO.getBirth1());
			pstmt.setString(5, memberDTO.getJob1());
			pstmt.setString(6, memberDTO.getEmail1());
			pstmt.setString(7, memberDTO.getShcool1());
			pstmt.setString(8, memberDTO.getGrade1());
			pstmt.setString(9, memberDTO.getSex1());
			pstmt.setString(10, memberDTO.getHphone1());
			pstmt.setString(11, memberDTO.getTphone1());
			pstmt.setString(12, memberDTO.getEphone1());
			pstmt.setString(13, memberDTO.getHomeaddress1());
			pstmt.setString(14, memberDTO.getName2());
			pstmt.setString(15, memberDTO.getBirth2());
			pstmt.setString(16, memberDTO.getJob2());
			pstmt.setString(17, memberDTO.getEmail2());
			pstmt.setString(18, memberDTO.getShcool2());
			pstmt.setString(19, memberDTO.getGrade2());
			pstmt.setString(20, memberDTO.getSex2());
			pstmt.setString(21, memberDTO.getHphone2());
			pstmt.setString(22, memberDTO.getTphone2());
			pstmt.setString(23, memberDTO.getEphone2());
			pstmt.setString(24, memberDTO.getHomeaddress2());
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public boolean memberIdCheck(String id) {
		   boolean idcheck=false;
		   sql = "select id from member where id=?";   
		   try {
		      pstmt = conn.prepareStatement(sql);
		      pstmt.setString(1, id);
		      rs = pstmt.executeQuery();
		      if (rs.next()) {
		         String getId = rs.getString("id");
		         if (getId.equals(id)) {
		            idcheck=true;
		         }
		      }
		 
		   } catch (SQLException e) {
		      e.printStackTrace();
		   }
		   return idcheck;
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