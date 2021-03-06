<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	String id = (String)session.getAttribute("id");
	%>
<!DOCTYPE html>
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
								
						<% if(id != null){ %>
						
									<li><a href="logout.mem">logout</a></li>
									<h3 style="font-size: 10px;text-align:right;"><%=id %>님이 로그인 하셨습니다.</h3>
									<%}else { %>
								<li><a href="loginPage.html#login">Login</a></li>
						<%} %>
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

	<!-- Section: about -->
	<section id="about" class="home-section color-dark bg-white">
		<div class="container marginbot-50">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="animatedParent">
						<div class="section-heading text-center animated bounceInDown">
							<h2 class="h-bold">Caution</h2>
							<div class="divider-header"></div>
						</div>
					</div>
				</div>
			</div>

		</div>

		<div class="container">


			<div class="row">


				<div class="col-lg-8 col-lg-offset-2 animatedParent">
					<div class="text-center">
						<p>1) 경고문구 작성</p>
						<p>2) 경고문구 작성</p>
						<a href="#service" class="btn btn-skin btn-scroll">What we do</a>
					</div>
				</div>


			</div>
		</div>

	</section>
	<!-- /Section: about -->


	<!-- Section: services -->
	<section id="service" class="home-section color-dark bg-gray">
		<div class="container marginbot-50">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div>
						<div class="section-heading text-center">
							<h2 class="h-bold">problem</h2>
							<div class="divider-header"></div>
						</div>
					</div>
				</div>
			</div>

		</div>

		<div class="text-center">
			<div class="container">

				<div class="row animatedParent">
					<div class="col-xs-6 col-sm-4 col-md-4">
						<div class="animated rotateInDownLeft">
							<div class="service-box">
								<div class="service-icon">
									<!-- 그림제거 <span class="fa fa-laptop fa-2x"></span>  -->
								</div>
								<div class="service-desc">
									<h5>문제 1</h5>
									<div class="divider-header"></div>
									<p>문제 1 내용</p>
									<a href="#" class="btn btn-skin">Learn more</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-4 col-md-4">
						<div class="animated rotateInDownLeft slow">
							<div class="service-box">
								<div class="service-icon">
									<!-- 그림삭제<span class="fa fa-camera fa-2x"></span>  -->
								</div>
								<div class="service-desc">
									<h5>문제2</h5>
									<div class="divider-header"></div>
									<p>문제 2 내용</p>
									<a href="#" class="btn btn-skin">Learn more</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-6 col-sm-4 col-md-4">
						<div class="animated rotateInDownLeft slower">
							<div class="service-box">
								<div class="service-icon">
									<!-- 그림삭제 <span class="fa fa-code fa-2x"></span> -->
								</div>
								<div class="service-desc">
									<h5>문제3</h5>
									<div class="divider-header"></div>
									<p>문제 3 내용</p>
									<a href="#" class="btn btn-skin">Learn more</a>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!-- /Section: services -->


	<!-- Section: works -->
	<section id="works"
		class="home-section color-dark text-center bg-white">
		<div class="container marginbot-50">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div>
						<div class="animatedParent">
							<div class="section-heading text-center">
								<h2 class="h-bold animated bounceInDown">promotion</h2>
								<div class="divider-header"></div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>

		<div class="container">

			<div class="row animatedParent">
				<div class="col-sm-12 col-md-12 col-lg-12">

					<div class="row gallery-item">
						<!--     <div class="col-md-3 animated fadeInUp">
							<a href="img/works/1.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/1@2x.jpg">
								<img src="img/works/1.jpg" class="img-responsive" alt="img">
							</a>
						</div> -->
						<div style="left: 50%" class="col-md-3 animated fadeInUp slow">
							<a href="img/works/ko-1.jpg" title="제 1회 Ko-World 해킹 방어대회 설명 앞"
								data-lightbox-gallery="gallery1"
								data-lightbox-hidpi="img/works/1@2x.jpg"> <img
								src="img/works/ko-1.jpg" class="img-responsive" alt="img">
							</a>
						</div>
						<div class="col-md-3 animated fadeInUp slower">
							<a href="img/works/ko-2.jpg" title="제 1회 Ko-World 해킹 방어대회 설명 뒤"
								data-lightbox-gallery="gallery1"
								data-lightbox-hidpi="img/works/1@2x.jpg"> <img
								src="img/works/ko-2.jpg" class="img-responsive" alt="img">
							</a>
						</div>
						<!-- <div class="col-md-3 animated fadeInUp">
							<a href="img/works/4.jpg" title="This is an image title" data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/1@2x.jpg">
								<img src="img/works/4.jpg" class="img-responsive" alt="img">
							</a>
						</div> -->
					</div>

				</div>
			</div>
		</div>

	</section>
	<!-- /Section: works -->

	<!-- Section: contact -->
	<section id="contact"
		class="home-section nopadd-bot color-dark bg-gray text-center">
		<div class="container marginbot-50">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="animatedParent">
						<div class="section-heading text-center">
							<h2 class="h-bold animated bounceInDown">Question</h2>
							<div class="divider-header"></div>
						</div>
					</div>
				</div>
			</div>

		</div>

		<div class="container">
			<div class="row marginbot-80">
				<div class="col-md-8 col-md-offset-2">
					<form id="contact-form">
						<div class="row marginbot-20">
							<div class="col-md-6 xs-marginbot-20">
								<input type="text" class="form-control input-lg" id="name"
									placeholder="Enter name" required="required" />
							</div>
							<div class="col-md-6">
								<input type="email" class="form-control input-lg" id="email"
									placeholder="Enter email" required="required" />
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<input type="text" class="form-control input-lg" id="subject"
										placeholder="Subject" required="required" />
								</div>
								<div class="form-group">
									<textarea name="message" id="message" class="form-control"
										rows="4" cols="25" required="required" placeholder="Message"></textarea>
								</div>
								<button type="submit" class="btn btn-skin btn-lg btn-block"
									id="btnContactUs">Send a Question</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>











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
						&copy;제1회 KO-WORLD 해킹방어 대회 개최 2018 - Kopo. <a href="http://www.kopo.ac.kr/kangseo/index.do">한국폴리텍대학</a><br> by Department of Information Security
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
