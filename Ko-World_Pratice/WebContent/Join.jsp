<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Join</title>
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
	<section id="contact" class="home-section nopadd-bot color-dark bg-gray text-center">
		<div class="container marginbot-50">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="animatedParent">
						<h1>Join</h1>
						<div class="divider-header"></div>
					</div>
				</div>
			</div>
		</div>
	
	
	
	
		<div class="container">
			<div class="row marginbot-80">
				<div class="col-md-8 col-md-offset-2">
					<form id="contact-form" action="join.mem" method="post">
					
					
					<!-- 공통 ID/PW 입력 -->
						<div class="row marginbot-20">
							<div class="col-md-6 xs-marginbot-20">
								<input type="text" class="form-control input-lg" name="id"
									placeholder="ID" required="required" />
							</div>
							<div class="col-md-6">
								<input type="password" class="form-control input-lg" name="pw"
									placeholder="Password" required="required" />
							</div>
							<!-- 숨기기 -->
							<div class="col-md-6 xs-marginbot-20">
								<input type="hidden" class="form-control input-lg" id="hidden"
									placeholder="hidden" required="required" />
							</div>

							<div class="col-md-6 xs-marginbot-20">
								<input type="password" class="form-control input-lg" name="pwch"
									placeholder="Password check" required="required" />
							</div>
						</div>
						
						
						<!-- 사람1 개인정보 -->
						<div class="row marginbot-20">
							<div class="col-md-6 xs-marginbot-20">
								<input type="text" name="name1" class="form-control input-lg"
									placeholder="Name1" required="required" />
							</div>
							<div class="col-md-6 xs-marginbot-20">
								<a>Phone Number</a> <a>:</a> <select name="tel1">
									<option label="" selected="selected">앞자리</option>
									<option label="010">010</option>
									<option label="011">011</option>
									<option label="017">017</option>
								</select> <a>-</a> <input type="text" name="tel2" id="id" placeholder=""
									required="required" size="4" /> <a>-</a> <input type="text"
									name="tel3" id="id" placeholder="" required="required" size="4" />
							</div>
						</div>
						<div class="row marginbot-20">
							<div class="col-md-6 xs-marginbot-20">
								<input type="text" class="form-control input-lg" name="birth1"
									placeholder="date of birth (Ex. 920616)" required="required" />
							</div>
							<div class="col-md-6 xs-marginbot-20">
								<input type="email" class="form-control input-lg" name="email1"
									placeholder="Email" required="required" />
							</div>
						</div>
						
						
						<!-- 사람2 개인정보 -->
						<div>
						<a>팀원이 있을경우에만 아래의 팀원의 정보를 기입해주세요.</a>
						<div class="row marginbot-20">
							<div class="col-md-6 xs-marginbot-20">
								<input type="text" class="form-control input-lg" name="name2"
									placeholder="Name2" required="required" />
							</div>
							<div class="col-md-6 xs-marginbot-20">
								<a>Phone Number</a> <a>:</a> <select name="tel4">
									<option label="" selected="selected">앞자리</option>
									<option label="010">010</option>
									<option label="011">011</option>
									<option label="017">017</option>
								</select>
								 <a>-</a> 
								<input type="text" name="tel5" placeholder="" required="required" size="4" />
									 <a>-</a> 
									 <input type="text" name="tel6" placeholder="" required="required" size="4" />
							</div>
						</div>
						<div class="row marginbot-20">
							<div class="col-md-6 xs-marginbot-20">
								<input type="text" class="form-control input-lg" name="birth2"
									placeholder="date of birth (Ex. 920616)" required="required" />
							</div>
							<div class="col-md-6 xs-marginbot-20">
								<input type="email" class="form-control input-lg" name="email2"
									placeholder="Email" required="required" />
							</div>				
						</div>
						</div>


						<!-- 가입 완료버튼 -->
						<div class="row">
								<button type="submit" class="btn btn-skin btn-lg btn-block"
									id="btnContactUs">Joining</button>
							</div>
					</form>
				</div>
			</div>
		</div>
	</section>


</body>
</html>