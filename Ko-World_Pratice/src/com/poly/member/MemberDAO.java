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
	//private boolean result;

	public MemberDAO() {// DB 연결 시작

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

	}// DB 연결 끝

	public void memberJoin(MemberDTO memberDTO) { // 회원가입 시작
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
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	} // 회원가입 끝

	public void memberSearchId(MemberDTO memberDTO) { // id찾기 시작
		try {
			sql = "select id from member where name1=? birth1=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberDTO.getName1());
			pstmt.setString(2, memberDTO.getBirth1());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				memberDTO.setId(rs.getString("id"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}// id찾기 끝

	public void memberSearchPw(MemberDTO memberDTO) { // pw찾기 시작
		try {
			sql = "select pw from member where id=? name1=? birth1=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberDTO.getId());
			pstmt.setString(2, memberDTO.getName1());
			pstmt.setString(3, memberDTO.getBirth1());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				memberDTO.setPw(rs.getString("pw"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	} // pw찾기 끝

}