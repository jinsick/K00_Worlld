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

		request.setCharacterEncoding("utf-8");// 요청할때 UTF-8로
		response.setContentType("text/html;charset=utf-8");// 받아올때도 UTF-8로
		PrintWriter out = response.getWriter();

		   String requestURI = request.getRequestURI();
		   String contextPath = request.getContextPath();
		   String command = requestURI.substring(contextPath.length());
		   
		   
		if (command.equals("/join.mem")) { // 회원가입 시작
	
			memberDTO.setId(request.getParameter("id"));
			memberDTO.setPw(request.getParameter("pw"));
			memberDTO.setPwch(request.getParameter("pwch"));
			memberDTO.setName1(request.getParameter("name1"));
			
			
			
			
			memberDAO.memberJoin(memberDTO);
			response.sendRedirect("index.html");
		
		} // 회원가입 끝

		else if (command.equals("/searchId.mem")) { // 아이디찾기 시작

			memberDTO.setName1(request.getParameter("name1"));
			memberDTO.setBirth1(request.getParameter("brith1"));
			memberDAO.memberSearchId(memberDTO);
			RequestDispatcher dispatcher = request.getRequestDispatcher("idSearch.jsp");
			request.setAttribute("id", memberDTO.getId());
			dispatcher.forward(request, response);

		} // 아이디찾기 끝
		
		else if(command.equals("/searchPW.mem")) {//비밀번호 찾기 시작
			memberDTO.setId(request.getParameter("id"));
			memberDTO.setName1(request.getParameter("name1"));
			memberDTO.setBirth1(request.getParameter("birth1"));
			memberDAO.memberSearchPW(memberDTO);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("pwSearch.jsp");
			request.setAttribute("pw", memberDTO.getPw());
			dispatcher.forward(request, response);
		}// 비밀번호 찾기 끝
		
		else if(command.equals("/login.mem")) {
			HttpSession session = request.getSession(true);
			boolean result = false;
			String id = request.getParameter("id");
			memberDTO.setId(id);
			memberDTO.setPw(request.getParameter("pw"));
			result = memberDAO.memberLogin(memberDTO);
			
			if (result==true) {
				System.out.println("bbbbbbbb"+id);
				session.setAttribute("id", id);
				response.sendRedirect("index.html");
			} else {
				out.println("<html>");
				out.print("<script language='javascript'>");
				out.print("alert('회원정보가 일치하지 않습니다. 다시 시도해 주십시오')");
				out.print("location.href='loginPage.html'");
				out.print("</script>");
				out.println("</html>");
				
			}
			
		}
		
		
	}

}