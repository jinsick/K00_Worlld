package com.poly.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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

		request.setCharacterEncoding("utf-8");// �슂泥��븷�븣 UTF-8濡�
		response.setContentType("text/html;charset=utf-8");// 諛쏆븘�삱�븣�룄 UTF-8濡�
		PrintWriter out = response.getWriter();

		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());

		if (command.equals("/join.mem")) { // 회원가입 학생부 시작

			memberDTO.setId(request.getParameter("id"));
			memberDTO.setPw(request.getParameter("pw"));
			memberDTO.setName1(request.getParameter("name1"));
			memberDTO.setBirth1(request.getParameter("birth1"));
			memberDTO.setJob1(request.getParameter("job1"));
			memberDTO.setEmail1(request.getParameter("email1"));
			String school1 = request.getParameter("school1");
			String school11 = request.getParameter("school11");
			String school111 = school1.concat(school11);
			memberDTO.setShcool1(school111);
			memberDTO.setGrade1(request.getParameter("grade1"));
			memberDTO.setSex1(request.getParameter("sex1"));
			memberDTO.setHphone1(request.getParameter("hphone1"));
			memberDTO.setTphone1(request.getParameter("tphone1"));
			memberDTO.setEphone1(request.getParameter("ephone1"));
			memberDTO.setHomeaddress1(request.getParameter("homeaddress1"));

			memberDTO.setName2(request.getParameter("name2"));
			memberDTO.setBirth2(request.getParameter("birth2"));
			memberDTO.setJob2(request.getParameter("job2"));
			memberDTO.setEmail2(request.getParameter("email2"));
			String school2 = request.getParameter("school2");
			String school22 = request.getParameter("school22");
			String school222 = school2.concat(school22);
			memberDTO.setShcool2(school222);
			memberDTO.setGrade2(request.getParameter("grade2"));
			memberDTO.setSex2(request.getParameter("sex2"));
			memberDTO.setHphone2(request.getParameter("hphone2"));
			memberDTO.setTphone2(request.getParameter("tphone2"));
			memberDTO.setEphone2(request.getParameter("ephone2"));
			memberDTO.setHomeaddress2(request.getParameter("homeaddress2"));
			memberDAO.memberJoin(memberDTO);
			response.sendRedirect("index.jsp");

		} // 회원가입 학생부 끝
		
		
		else if (command.equals("/joinNormal.mem")) { // 회원가입 일반부 시작

			memberDTO.setId(request.getParameter("id"));
			memberDTO.setPw(request.getParameter("pw"));
			memberDTO.setName1(request.getParameter("name1"));
			memberDTO.setBirth1(request.getParameter("birth1"));
			memberDTO.setJob1(request.getParameter("job1"));
			memberDTO.setEmail1(request.getParameter("email1"));
			String school1 = request.getParameter("school1");
			String school11 = request.getParameter("school11");
			String school111 = school1.concat(school11);
			memberDTO.setShcool1(school111);	
			String grade1 = request.getParameter("grade1");
			String grade11 = request.getParameter("grade11");
			String grade111 = grade1.concat(grade11);
			memberDTO.setGrade1(grade111);
			memberDTO.setSex1(request.getParameter("sex1"));
			memberDTO.setHphone1(request.getParameter("hphone1"));
			memberDTO.setTphone1(request.getParameter("tphone1"));
			memberDTO.setEphone1(request.getParameter("ephone1"));
			memberDTO.setHomeaddress1(request.getParameter("homeaddress1"));	
			memberDTO.setName2(request.getParameter("name2"));
			memberDTO.setBirth2(request.getParameter("birth2"));
			memberDTO.setJob2(request.getParameter("job2"));
			memberDTO.setEmail2(request.getParameter("email2"));
			String school2 = request.getParameter("school2");
			String school22 = request.getParameter("school22");
			String school222 = school2.concat(school22);
			memberDTO.setShcool2(school222);
			String grade2 = request.getParameter("grade2");
			String grade22 = request.getParameter("grade22");
			String grade222 = grade2.concat(grade22);
			memberDTO.setGrade1(grade222);
			memberDTO.setSex2(request.getParameter("sex2"));
			memberDTO.setHphone2(request.getParameter("hphone2"));
			memberDTO.setTphone2(request.getParameter("tphone2"));
			memberDTO.setEphone2(request.getParameter("ephone2"));
			memberDTO.setHomeaddress2(request.getParameter("homeaddress2"));
			memberDAO.memberJoin(memberDTO);
			response.sendRedirect("index.jsp");

		} // 회원가입 일반부 끝
		
		else if (command.equals("/idcheck.mem")) {  //실시간 ID중복체크 시작
	         String id = request.getParameter("id");

	         memberDTO.setId(id);
	         boolean idcheck = memberDAO.memberIdCheck(id);
	         if(idcheck==true) {
	            out.print("NO");
	         }else {  
	            out.print("OK");   
	         }
	        
	      } //실시간 ID중복체크 끝

		else if (command.equals("/searchId.mem")) { // 아이디 찾기 시작

			memberDTO.setName1(request.getParameter("name1"));
			memberDTO.setBirth1(request.getParameter("brith1"));
			memberDAO.memberSearchId(memberDTO);
			RequestDispatcher dispatcher = request.getRequestDispatcher("idSearch.jsp");
			request.setAttribute("id", memberDTO.getId());
			dispatcher.forward(request, response);

		} // 아이디 찾기 끝

		else if (command.equals("/searchPW.mem")) {// 비밀번호 찾기 시작
			memberDTO.setId(request.getParameter("id"));
			memberDTO.setName1(request.getParameter("name1"));
			memberDTO.setBirth1(request.getParameter("birth1"));
			memberDAO.memberSearchPW(memberDTO);

			RequestDispatcher dispatcher = request.getRequestDispatcher("pwSearch.jsp");
			request.setAttribute("pw", memberDTO.getPw());
			dispatcher.forward(request, response);
		} //  비밀번호 찾기 끝

		else if (command.equals("/login.mem")) { // 로그인 시작
			HttpSession session = request.getSession(true);
			boolean result = false;
			String id = request.getParameter("id");
			memberDTO.setId(id);
			memberDTO.setPw(request.getParameter("pw"));
			result = memberDAO.memberLogin(memberDTO);

			if (result == true) {
				session.setAttribute("id", id);
				response.sendRedirect("index.jsp");
			} else {
				out.println("<html>");
				out.print("<script language='javascript'>");
				out.print("alert('�쉶�썝�젙蹂닿� �씪移섑븯吏� �븡�뒿�땲�떎. �떎�떆 �떆�룄�빐 二쇱떗�떆�삤')");
				out.print("location.href='loginPage.html'");
				out.print("</script>");
				out.println("</html>");

			}  // 로그인 끝

		}
		
		else if(command.equals("/logout.mem")) {
			HttpSession session = request.getSession();
			session.removeAttribute("id");
			response.sendRedirect("index.jsp");
		}

	}

}