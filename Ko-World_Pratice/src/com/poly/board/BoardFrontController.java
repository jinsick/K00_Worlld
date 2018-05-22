package com.poly.board;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.member.MemberDTO;

/**
 * Servlet implementation class BoardFrontController
 */
@WebServlet("*.board")
public class BoardFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private BoardDTO boardDTO;
	private BoardDAO boardDAO;
	private ArrayList<BoardDTO> boardList;

	public BoardFrontController() {

		boardDAO = new BoardDAO();
		boardDTO = new BoardDTO();
		boardList = new ArrayList<BoardDTO>();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");// �슂泥��븷�븣 UTF-8濡�
		response.setContentType("text/html;charset=utf-8");// 諛쏆븘�삱�븣�룄 UTF-8濡�
		PrintWriter out = response.getWriter();

		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());

		if (command.equals("/boardList.board")) {
			boardList = boardDAO.boardList(boardDTO);
			RequestDispatcher dispatcher = request.getRequestDispatcher("quality.jsp");
			request.setAttribute("boardList", boardList);
			dispatcher.forward(request, response);

		} else if (command.equals("/boardDelete.board")) {
			System.out.println(Integer.parseInt(request.getParameter("sequence")));
			boardDTO.setSequence(Integer.parseInt(request.getParameter("sequence")));
			boardDTO.setTitle(request.getParameter("title"));
			boardDAO.boardDelete(boardDTO);
			response.sendRedirect("boardList.board");

			
			
		} else if (command.equals("/boardWrite.board")) {
			String writer = request.getParameter("writer");
			String writeday = request.getParameter("writeday");
			String title = request.getParameter("title");
			String content = request.getParameter("content");

			boardDTO.setWriter(writer);
			boardDTO.setWirteday(writeday); //변수값 DB랑 다름(오타)
			boardDTO.setTitle(title);
			boardDTO.setContent(content);
			boardDAO.boardWrite(boardDTO);
			response.sendRedirect("boardList.board");

		} else if (command.equals("/boardContent.board")) {
			boardDTO.setSequence(Integer.parseInt(request.getParameter("sequence")));
			boardDTO.setTitle(request.getParameter("title"));
			boardList = boardDAO.boardContent(boardDTO);
			System.out.println(boardList);

			RequestDispatcher dispatcher = request.getRequestDispatcher("quality_content.jsp");
			request.setAttribute("boardList", boardList);
			dispatcher.forward(request, response);

		}

	}

}
