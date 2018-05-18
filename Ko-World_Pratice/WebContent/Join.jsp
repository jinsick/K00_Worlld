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
<script>
	function change() {
		if (document.getElementById('test').style.display == 'none') {
			document.getElementById('test').style.display = 'block';
		} else {
			document.getElementById('test').style.display = 'none';
		}
	}
</script>
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-custom">

	<!-- 가입 문구 -->
	<section id="contact"
		class="home-section nopadd-bot color-dark bg-gray text-center">
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
							<!-- 중복확인 onclick 수정 -->
							<div>
								<input type="button" class="" name="id" placeholder="ID"
									onclick="" />
							</div>

							<div class="col-md-6">
								<input type="password" class="form-control input-lg" name="pw"
									placeholder="Password" required="required" />
							</div>
							<div class="col-md-6 xs-marginbot-20">
								<input type="password" class="form-control input-lg" name="pwch"
									placeholder="Password check" required="required" />
							</div>
						</div>





						<div class="row marginbot-20">
							<div class="col-lg-8 col-lg-offset-2">
								<a>- 참가자 신상정보 기입란 -</a>
							</div>
						</div>

						<!-- 참가자 1 - 개인신상정보 기입란 -->
						<div class="row marginbot-20">
							<div class="col-md-6 xs-marginbot-20">
								<input type="text" name="name1" class="form-control input-lg"
									placeholder="Name1" required="required" />
								<div></div>
							</div>

							<div class="col-md-6 xs-marginbot-20">
								<input type="text" class="form-control input-lg" name="birth1"
									placeholder="date of birth (Ex. 920616)" required="required" />
							</div>
						</div>
						<div class="row marginbot-20">
							<div class="col-md-6 xs-marginbot-20">
								<input type="text" class="form-control input-lg" name="job1"
									placeholder="JOB" required="required" />
							</div>
							<div class="col-md-6 xs-marginbot-20">
								<input type="email" class="form-control input-lg" name="email1"
									placeholder="Email" required="required" />
							</div>
						</div>



					<!-- 학교 학년 정보 입력란 ////////////////////////////파라미터값 확인 할것//////////////////////////////////-->
						<div class="row marginbot-20">
							<div class="col-md-6 xs-marginbot-20">
								<a>출신학교</a>&nbsp;&nbsp;<a>:</a>&nbsp;&nbsp; <input type="text"
									name="school1" id="id" placeholder="학교이름" required="required"
									size="10" /> 
									<select name="school2">
									<option label="" selected="selected">학교</option>
									<option label="중학교">middle</option>
									<option label="고등학교">high</option>
									</select> &nbsp; 
									
									<select name="grade">
									<option label="" selected="selected">학년</option>
									<option label="1학년">1</option>
									<option label="2학년">2</option>
									<option label="3학년">3</option>
								</select>
							</div>
							<div class="col-md-6 xs-marginbot-20">
								<a>성별 입력 :</a>&nbsp;&nbsp; 
								<a>남성 </a>&nbsp; 
								<input type="radio" name="sex" value="man"> &nbsp;&nbsp; 
								<a>여성 </a>&nbsp;
								<input type="radio" name="sex" value="girl">
							</div>
						</div>

						<div class="row marginbot-20">
							<div>
								<input type="text" class="form-control input-lg"
									style="font-size: 16px; text-align: center"
									placeholder="집 전화번호  (02-1234-1234)" name="hphone1">
							</div>
						</div>
						<div class="row marginbot-20">
							<div>
								<input type="text" class="form-control input-lg"
									style="font-size: 16px; text-align: center"
									placeholder="개인 휴대폰 번호   (010-1234-1234)" name="tphone1">
							</div>
						</div>
						<div class="row marginbot-20">
							<div>
								<input type="text" class="form-control input-lg"
									style="font-size: 16px; text-align: center"
									placeholder="긴급 연락처   (010-1234-1234)" name="ephone1">
							</div>
						</div>
						<div class="row marginbot-20">
							<div>
								<input type="text" class="form-control input-lg"
									style="text-align: center" name="address1"
									placeholder="집주소   (서울특별시 강서구 화곡로 354-3)" required="required" />
							</div>
						</div>





						<!-- 사람2 개인정보 -->
						<div>
							<div id='btn' onclick='change()' style="color: blue">팀원이
								있을경우에만 이 문구를 클릭해서 팀원의 정보를 입력해주세요.</div>
							<br>
							<!-- 참가자 1 - 개인신상정보 기입란 -->
							<div id='test' style='display: none'>
								<div class="row marginbot-20">
									<div class="col-md-6 xs-marginbot-20">
										<input type="text" name="name2" class="form-control input-lg"
											placeholder="Name1" required="required" />
										<div></div>
									</div>

									<div class="col-md-6 xs-marginbot-20">
										<input type="text" class="form-control input-lg" name="birth2"
											placeholder="date of birth (Ex. 920616)" required="required" />
									</div>
								</div>
								<div class="row marginbot-20">
									<div class="col-md-6 xs-marginbot-20">
										<input type="text" class="form-control input-lg" name="job2"
											placeholder="JOB" required="required" />
									</div>
									<div class="col-md-6 xs-marginbot-20">
										<input type="email" class="form-control input-lg"
											name="email2" placeholder="Email" required="required" />
									</div>
								</div>




								<div class="row marginbot-20">
									<div class="col-md-6 xs-marginbot-20">
										<a>출신학교</a>&nbsp;&nbsp;<a>:</a>&nbsp;&nbsp; <input type="text"
											name="tel2" id="id" placeholder="학교이름" required="required"
											size="10" /> <select name="tel1">
											<option label="" selected="selected">학교</option>
											<option label="중학교">중학교</option>
											<option label="고등학교">고등학교</option>
										</select> &nbsp; <select name="tel1">
											<option label="" selected="selected">학년</option>
											<option label="1학년">초등학교</option>
											<option label="2학년">중학교</option>
											<option label="3학년">고등학교</option>
										</select>
									</div>
									<div class="col-md-6 xs-marginbot-20">
										<a>성별 입력 :</a>&nbsp;&nbsp; <a>남성 </a>&nbsp; <input
											type="radio" name="chk_info" value="man">
										&nbsp;&nbsp; <a>여성 </a>&nbsp;<input type="radio"
											name="chk_info" value="girl">
									</div>
								</div>

								<div class="row marginbot-20">
									<div>
										<input type="text" class="form-control input-lg"
											style="font-size: 16px; text-align: center"
											placeholder="집 전화번호  (02-1234-1234)">
									</div>
								</div>
								<div class="row marginbot-20">
									<div>
										<input type="text" class="form-control input-lg"
											style="font-size: 16px; text-align: center"
											placeholder="개인 휴대폰 번호   (010-1234-1234)">
									</div>
								</div>
								<div class="row marginbot-20">
									<div>
										<input type="text" class="form-control input-lg"
											style="font-size: 16px; text-align: center"
											placeholder="긴급 연락처   (010-1234-1234)">
									</div>
								</div>
								<div class="row marginbot-20">
									<div>
										<input type="text" class="form-control input-lg"
											style="text-align: center" name="address"
											placeholder="집주소   (서울특별시 강서구 화곡로 354-3)" required="required" />
									</div>
								</div>
							</div>
						</div>


						<!-- 가입 완료버튼 -->
						<div class="row">
							<button type="submit" class="btn btn-skin btn-lg btn-block"
								id="btnContactUs">Joining</button>
						</div>

						<!-- 	</div> -->
					</form>
				</div>





			</div>
		</div>
	</section>


</body>
</html>