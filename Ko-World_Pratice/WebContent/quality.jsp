<%@page import="java.util.ArrayList"%>
<%@page import="com.poly.board.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	BoardDTO boardDTO = new BoardDTO();
	ArrayList<BoardDTO> boardList = (ArrayList) request.getAttribute("boardList");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search</title>
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
<style type="text/css">
<style>
    /* first-child : 첫번째  */
    body #container {width:700px;background: #fff; overflow: hidden; border: 4px solid #006699; }
    body #container table { font-size:18px; border-collapse: collapse; width: 700px; }
    body #container table thead tr th { padding: 15px 10px; }
    body #container table thead th {background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #006699), color-stop(1, #00557F) );background:-moz-linear-gradient( center top, #006699 5%, #00557F 100% );filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#006699', endColorstr='#00557F'); color:#FFFFFF; }
    body #container table thead th:first-child { border: none; text-align:center; }
 
    /* nth-child(odd) : 홀수번째, nth-child(even) : 짝수번째, last-child : 마지막, nth-child(2) : 2번째 */
    body #container table tbody tr td{ padding: 15px 10px; color: #00557F; }
    body #container table tbody tr td:first-child { width:120px; border-left: none; text-align:right; }
    body #container table tbody tr:nth-child(odd) td { background: #FFF; }
    body #container table tbody tr:nth-child(odd) td:last-child {  border-left: 2px solid #E1EEF4; }
    body #container table tbody tr:nth-child(even) td { background: #E1EEf4; }
    body #container table tbody tr:last-child td { border-bottom: none; }
    </style>

</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-custom">

	<section class="hero" id="intro">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-right navicon">
					<a id="nav-toggle" class="nav_slide_button" href="#"><span></span></a>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center inner">
					<div class="animatedParent">
						<h1 class="animated fadeInDown">Ko-World</h1>
						<p class="animated fadeInUp">제 1차 해킹 방어대회</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center">
					<a href="#about" class="learn-more-btn btn-scroll">Resolve
						Problem</a>
				</div>
			</div>
		</div>
	</section>


	<!-- Navigation -->
	<div id="navigation">
		<nav class="navbar navbar-custom" role="navigation">
			<div class="container">
				<div class="row">
					<div class="col-md-2">
						<div class="site-logo">
							<a href="index.jsp" class="brand"><img
								src="img/works/hankuk.png"></a>
						</div>
					</div>


					<div class="col-md-10">

						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target="#menu">
								<i class="fa fa-bars"></i>
							</button>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="menu">
						<ul class="nav navbar-nav navbar-right">
							<li class="active"><a href="index.jsp#intro">Home</a></li>
							<li><a href="index.jsp#about">caution</a></li>
							<li><a href="index.jsp#service">problem</a></li>
							<li><a href="index.jsp#works">promotion</a></li>

							<li><a href="boardList.board">quality assurance</a></li>
							<li><a href="loginPage.html#login">Login</a></li>
						</ul>
					</div>
						<!-- /.Navbar-collapse -->

					</div>
				</div>
			</div>
			<!-- /.container -->
		</nav>
	</div>
	<!-- /Navigation -->

	<!-- 가입 문구 -->
	<section id="contact"
		class="home-section nopadd-bot color-dark bg-gray text-center">
		<div class="container marginbot-50">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="animatedParent">
						<h2>Quality Assurance</h2>
						<div class="divider-header"></div>
					</div>
				</div>
			</div>
		</div>



		<div class="container">
			<div class="row marginbot-80">
				<div class="col-md-8 col-md-offset-2">
					<form id="contact-form">
						<div>
							<table style="font-size:18px; border-collapse: collapse;">
								<tr style="background-color:#28c3ab;filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#006699', endColorstr='#00557F'); color:#FFFFFF;">
									<td width="73" scope="row" >번호</td>
									<td width="379" scope="row" >제목</td>
									<td width="73" scope="row" >작성자</td>
									<td width="164" scope="row">작성일</td>
									<td width="58" scope="row">조회수</td>
								</tr>
							</table>
						</div>
						<div class="row marginbot-10"></div>


						<div class="row">
							<div class="col-md-12">
								<table>
									<%
										for (int i = 0; i < boardList.size(); i++) {
											if (i < boardList.size()) {
												boardDTO = boardList.get(i);
									%>
									<tr>

										<td width="73"><%=boardDTO.getSequence()%></td>
										<td width="379"><a href="boardContent.board?sequence=<%=boardDTO.getSequence()%>&&title=<%=boardDTO.getTitle()%>"><%=boardDTO.getTitle()%></a></td>
										<td width="73"><%=boardDTO.getWriter()%></td>
										<td width="164"><%=boardDTO.getWirteday()%></td>
										<td width="58"><%=boardDTO.getReadcount()%></td>
									</tr>
									<%
										}
										}
									%>
								</table>
								
								<div class="row marginbot-10"></div>		
								<button type="button" class="btn btn-skin btn-lg btn-block"
									id="btnContactUs" onclick="location.href='boardWrite.jsp'">게시글 작성하기</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
</body>
</html>