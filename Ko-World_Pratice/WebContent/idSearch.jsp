<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<title>Polytech 2018 제 1회 Ko-World 해킹 방어 대회</title>

<!-- css -->
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
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#menu">
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
		<!-- /.container --> </nav>
	</div>
	<!-- /Navigation -->

	<!-- Section: contact -->
	<section id="contact"
		class="home-section nopadd-bot color-dark bg-gray text-center">
	<div class="container marginbot-50">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2">
				<div class="animatedParent">
					<div class="section-heading text-center">
						<h2 class="h-bold animated bounceInDown">ID 찾기</h2>
						<div class="divider-header"></div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<div class="container">

		<div class="row marginbot-80">
			<div class="col-md-8 col-md-offset-2">
				<form id="contact-form" action="Search.jsp" method="post">

					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<input style="text-align: center;" type="text" class="form-control input-lg" id="subject"
									value="ID : " readonly="readonly" />
							</div>
							<button style="height: 50px; font-size: 20px; margin-bottom: 10px;"type="submit" class="btn btn-skin btn-lg btn-block"
								id="btnContactUs">비밀번호 찾기</button>
						</div>
					</div>
				</form>
				<div class="row marginbot-20">
					<div class="col-md-6 xs-marginbot-20">
						<input type="submit" class="btn btn-skin btn-lg btn-block"
							id="btnContactUs" value="로그인 " onclick="location.href='loginPage.html'">
					</div>
					<div class="col-md-6">
						<input type="submit" class="btn btn-skin btn-lg btn-block"
							id="btnContactUs" value="홈페이지"
							onclick="location.href='index.jsp'">
					</div>
				</div>

			</div>
		</div>


	</div>
	</section>
	<!-- /Section: contact -->


	<footer>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<ul class="footer-menu">
					<li><a href="#">Home</a></li>
					<li><a href="#">Press release</a></li>
				</ul>
			</div>
			<div class="col-md-6 text-right">
				<p>
					&copy;Copyright 2014 - Bocor. <a href="http://bootstraptaste.com/">Bootstrap
						Themes</a> by BootstrapTaste
				</p>
				<!-- 
                        All links in the footer should remain intact. 
                        Licenseing information is available at: http://bootstraptaste.com/license/
                        You can buy this theme without footer links online at: http://bootstraptaste.com/buy/?theme=Bocor
                    -->
			</div>
		</div>
	</div>
	</footer>

	<!-- Core JavaScript Files -->
	<script src="js/jquery.min.js"></script>
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/jquery.easing.min.js"></script>
	<script src="js/jquery.scrollTo.js"></script>
	<script src="js/jquery.appear.js"></script>
	<script src="js/stellar.js"></script>
	<script src="js/nivo-lightbox.min.js"></script>

	<script src="js/custom.js"></script>
	<script src="js/css3-animate-it.js"></script>

</body>

</html>
