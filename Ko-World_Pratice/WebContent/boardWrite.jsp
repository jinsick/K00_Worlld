<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.poly.board.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = (String) session.getAttribute("id");
	SimpleDateFormat dateform = new SimpleDateFormat("yyyy.MM.dd. hh:mm");
	String nowTime = dateform.format(new Date());

	/* request.setCharacterEncoding("UTF-8");
	System.out.print(id);
	if (id.equals(null)) {
		out.print("<script>");
		out.print("alert('로그인 되어있지 않습니다. 로그인 후 작성해 주시기 바랍니다.')");
		out.print("<location.href='loginPage.html'");
		out.print("</script>");
	} */
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
							<h1>게시글 작성</h1>
							<div class="divider-header"></div>
						</div>
					</div>
				</div>
			</div>

		</div>

		<div class="container">
			<div class="row marginbot-80">
				<div class="col-md-8 col-md-offset-2">
					<form id="contact-form" action="boardWrite.board" method="post">
						<div class="row marginbot-20">
							<div class="col-md-6 xs-marginbot-20">
								<input type="text" class="form-control input-lg" id="writer"
									value="<%=id%>" required="required" name="writer" />
							</div>
							<div class="col-md-6">
								<input type="text" class="form-control input-lg" id="writeday"
									value="<%=nowTime%>" name="writeday" readonly="readonly" />
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input type="text" class="form-control input-lg" id="title"
										placeholder="제목" required="required" name="title"/>
								</div>
								<div class="form-group">
									<textarea name="content" id="message" class="form-control"
										rows="4" cols="25" required="required" placeholder="Message"></textarea>
								</div>
								<button type="submit" class="btn btn-skin btn-lg btn-block"
									id="btnContactUs">작성 완료</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

</body>
</html>