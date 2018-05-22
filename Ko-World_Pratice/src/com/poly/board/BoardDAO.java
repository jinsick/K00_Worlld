package com.poly.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.poly.member.ConstVal;
import com.poly.member.MemberDTO;


public class BoardDAO {
	
	
	public DataSource dataFactory;
	private Connection conn;
	private String sql;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private boolean result;
	private ArrayList<BoardDTO> boardList;
	

	public BoardDAO() {

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
	}
	
	
	public ArrayList<BoardDTO> boardList(BoardDTO boardDTO){
		try {
			boardList = new ArrayList<BoardDTO>();
			sql = "SELECT sequence, title, content, writer, writeday, readcount FROM board where not display = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, 0);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				boardDTO = new BoardDTO();
				boardDTO.setSequence(rs.getInt("sequence"));
				boardDTO.setTitle(rs.getString("title"));
				boardDTO.setWriter(rs.getString("writer"));
				boardDTO.setWirteday(rs.getString("writeday"));
				boardDTO.setReadcount(rs.getInt("readcount"));
				boardList.add(boardDTO);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return boardList;
	}

	public ArrayList<BoardDTO> boardContent(BoardDTO boardDTO){
		sql = "select sequence, title, content, writer, writeday from board where sequence = ? and title = ? and not display = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardDTO.getSequence());
			pstmt.setString(2, boardDTO.getTitle());
			pstmt.setInt(3, 0);
			rs = pstmt.executeQuery();
			boardList = new ArrayList<BoardDTO>();
			while(rs.next()) {
				boardDTO = new BoardDTO();
				boardDTO.setSequence(rs.getInt("sequence"));
				boardDTO.setTitle(rs.getString("title"));
				boardDTO.setContent(rs.getString("content"));
				boardDTO.setWriter(rs.getString("writer"));
				boardDTO.setWirteday(rs.getString("writeday"));
				boardList.add(boardDTO);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return boardList;
	}
	
	public void boardWrite(BoardDTO boardDTO) {//글쓰기 메소드
	      try {
	         
	         sql="insert into board(title, content, writer, writeday, display) values(?,?,?,?,?)";
	         pstmt=conn.prepareStatement(sql);
	         pstmt.setString(1, boardDTO.getTitle());
	         pstmt.setString(2, boardDTO.getContent());
	         pstmt.setString(3, boardDTO.getWriter());
	         pstmt.setString(4, boardDTO.getWirteday());
	         pstmt.setInt(5, 1);
	         pstmt.executeUpdate();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	   }//글쓰기
	
	public void boardDelete(BoardDTO boardDTO) {
		try {
			sql = "update board set display = ? where sequence = ? and title = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, 0);
			pstmt.setInt(2, boardDTO.getSequence());
			pstmt.setString(3, boardDTO.getTitle());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
}
