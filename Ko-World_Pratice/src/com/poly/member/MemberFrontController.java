package com.poly.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.mem")
public class MemberFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MemberDTO memberDTO;
	private MemberDAO memberDAO;

	public MemberFrontController() {
		memberDTO = new MemberDTO();
		memberDAO = new MemberDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");// 요청할때 UTF-8로
		response.setContentType("text/html;charset=utf-8");// 받아올때도 UTF-8로
		PrintWriter out = response.getWriter();

		   String requestURI = request.getRequestURI();
		   String contextPath = request.getContextPath();
		   String command = requestURI.substring(contextPath.length());
		   
		   
		if (command.equals("/join.mem")) { // 회원가입 시작
			System.out.println("bbbbbbbbbbbbbbbbbbbb");
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String pwch = request.getParameter("pwch");
			String name1 = request.getParameter("name1");
			String birth1 = request.getParameter("birth1");
			String email1 = request.getParameter("email1");
			String tel1 = request.getParameter("tel1");
			String tel2 = request.getParameter("tel2");
			String tel3 = request.getParameter("tel3");
			String phone1 = tel1.concat("-" + tel2 + "-" + tel3);
			String name2 = request.getParameter("name2");
			String birth2 = request.getParameter("birth2");
			String email2 = request.getParameter("email2");
			String tel4 = request.getParameter("tel4");
			String tel5 = request.getParameter("tel5");
			String tel6 = request.getParameter("tel6");
			String phone2 = tel4.concat("-" + tel5 + "-" + tel6);
			memberDTO.setId(id);
			memberDTO.setPw(pw);
			memberDTO.setPwch(pwch);
			memberDTO.setName1(name1);
			memberDTO.setBirth1(birth1);
			memberDTO.setEmail1(email1);
			memberDTO.setPhone1(phone1);
			memberDTO.setName2(name2);
			memberDTO.setBirth2(birth2);
			memberDTO.setEmail2(email2);
			memberDTO.setPhone2(phone2);
			memberDAO.memberJoin(memberDTO);
			System.out.println("aaaaaaaaa");
		
		} // 회원가입 끝

		if (command.equals("/searchId.mem")) { // 아이디찾기 시작
			String name1 = request.getParameter("name1");
			String birth1 = request.getParameter("birth1");

			memberDTO.setName1(name1);
			memberDTO.setBirth1(birth1);

		} // 아이디찾기 끝
	}

}