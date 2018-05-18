<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-custom">

	<!-- 가입 문구 -->
	<section id="contact"
		class="home-section nopadd-bot color-dark bg-gray text-center">
		<div class="container marginbot-50">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="animatedParent">
						<h2>Search ID/PW</h2>
						<div class="divider-header"></div>
					</div>
				</div>
			</div>
		</div>


		<!-- 아이디 찾기 -->
		<h2>Search ID</h2>
		<div class="container">
			<div class="row marginbot-80">
				<div class="col-md-8 col-md-offset-2">
					<form id="contact-form">
						<div class="row marginbot-20">
							<div class="col-md-6 xs-marginbot-20">
								<input type="text" name="name1" class="form-control input-lg"
									placeholder="Name1" required="required" />
							</div>
							<div class="col-md-6 xs-marginbot-20">
								<input type="text" class="form-control input-lg" name="birth1"
									placeholder="date of birth (Ex. 920616)" required="required" />
							</div>
						</div>
						<div class="row">
							<button type="submit" class="btn btn-skin btn-lg btn-block"
								id="btnContactUs">ID Search</button>
						</div>
						<div class="row marginbot-20"></div>
					</form>

					<!-- 비밀번호 찾기 -->
					<h2>Search Password</h2>
					<form id="contact-form">
						<div>
							<div class="row marginbot-20">
								<div class="col-md-6 xs-marginbot-20">
									<input type="email" class="form-control input-lg" name="id"
										placeholder="id" required="required" />
								</div>
							</div>
							<div class="row marginbot-20">
								<div class="col-md-6 xs-marginbot-20">
									<input type="text" class="form-control input-lg" id="name"
										placeholder="Name2" required="required" />
								</div>
								<div class="col-md-6 xs-marginbot-20">
									<input type="text" class="form-control input-lg" id="birth"
										placeholder="date of birth (Ex. 920616)" required="required" />
								</div>
							</div>
						</div>
						<!-- 가입 완료버튼 -->
						<div class="row">
							<button type="submit" class="btn btn-skin btn-lg btn-block"
								id="btnContactUs">Password Search</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>


</body>
</html>