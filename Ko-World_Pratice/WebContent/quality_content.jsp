<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.poly.board.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	
	
	
	BoardDTO boardDTO = new BoardDTO();
	ArrayList<BoardDTO> boardList = (ArrayList) request.getAttribute("boardList");
	boardDTO = boardList.get(0);
	String id = (String)session.getAttribute("id");
	



%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 작성</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<link href="css/nivo-lightbox.css" rel="stylesheet" />
<link href="css/nivo-lightbox-theme/default/default.css"
	rel="stylesheet" type="text/css" />
<link href="css/animations.css" rel="stylesheet" />
<link href="css/style.css" rel="stylesheet">
<link href="color/default.css" rel="stylesheet">
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-custom">

	<!-- 가입 문구 -->
	<section id="contact"
		class="home-section nopadd-bot color-dark bg-gray text-center">
		<div class="container marginbot-50">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="animatedParent">
						<div class="animatedParent">
							<h1>내용확인</h1>
							<div class="divider-header"></div>
						</div>
					</div>
				</div>
			</div>

		</div>

		<div class="container">
			<div class="row marginbot-80">
				<div class="col-md-8 col-md-offset-2">
					<form id="contact-form" action="boardList.board" method="post">
						<div class="row marginbot-20">
							<div class="col-md-6 xs-marginbot-20">

								<input type="text" class="form-control input-lg" id="writer"
									placeholder="<%=
									
									
									boardDTO.getWriter()
								
								
								%>"
									required="required" name="writer" readonly="readonly" />
							</div>
							<div class="col-md-6">
								<input type="text" class="form-control input-lg" id="writeday"
									placeholder="<%=
									
									
									boardDTO.getWirteday()
								
								
								%>"
									name="wirteday" readonly="readonly" />
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input type="text" class="form-control input-lg" id="title"
										placeholder="<%=
										
										
										boardDTO.getTitle() 
									
									
									%>"
										readonly="readonly" name="title" />
								</div>
								<div class="form-group">
									<textarea name="message" id="message" class="form-control"
										rows="4" cols="25" readonly="readonly"><%=
											
											
											boardDTO.getContent()
										
										
										%></textarea>
								</div>
								<button type="submit" class="btn btn-skin btn-lg btn-block"
									id="btnContactUs" style="height: 100px; margin-bottom: 10px">돌아가기</button>
							</div>
						</div>
					</form>
					<div class="row marginbot-20">
						<div class="col-md-6 xs-marginbot-20">
							<input type="submit" class="btn btn-skin btn-lg btn-block"
								id="btnContactUs" value="글쓰기"
								onclick="location.href='boardWrite.board'">
						</div>
						<div class="col-md-6">
							<input type="submit" class="btn btn-skin btn-lg btn-block"
								id="btnContactUs" value="삭제"
								onclick="location.href='boardDelete.board?sequence=<%=
								boardDTO.getSequence()
							%>&&title=<%=boardDTO.getTitle()%>'">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

</body>
</html>