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
<script src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">

	<!-- 가입 문구 -->
	<section id="contact"
		class="home-section nopadd-bot color-dark bg-gray text-center">
		<div class="container marginbot-50">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="animatedParent">
						<h1>대회 참가 주의사항</h1>
						<div class="divider-header"></div>
					</div>
				</div>
			</div>
		</div>




		<div class="container">
			<div class="row marginbot-80">
				<div class="col-md-8 col-md-offset-2">
					<form id="contact-form" action="join.mem" method="post">
						<div class="form-group">
							<textarea name="message" id="message" class="form-control"
								rows="4" cols="25" readonly="readonly" style="text-align: center; height: 170px; ">※ 개인정보 수집·이용 및 제3자 제공 동의서(지원자격 여부 확인 등)
  위의 참가 신청서 개인정보를 수집·이용에 동의하지 않을 권리가 있으며,
  동의하지 않을 경우 『2018년 제1회 KO-WORLD 해킹방어 대회 참가 신청서』 
  제출이 제한됩니다.
  
  ※ 참가 신청시 개인정보 제공에 동의 한 것으로 판정함.
  </textarea>
						</div>
					</form>
					<div class="row marginbot-20">
						<div class="col-md-6 xs-marginbot-20">
							<input type="submit" class="btn btn-skin btn-lg btn-block"
								id="btnContactUs" value="학생부 참가"
								onclick="location.href='Join.jsp'">
						</div>
						<div class="col-md-6">
							<input type="submit" class="btn btn-skin btn-lg btn-block"
								id="btnContactUs" value="일반부 참가"
								onclick="location.href='Join_normal.jsp'">
						</div>
					</div>
				</div>





			</div>
		</div>
	</section>


</body>
</html>