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
<script>
   //----------- 참가자2 정보 펼치기
	function change() {
		if (document.getElementById('test').style.display == 'none') {
			document.getElementById('test').style.display = 'block';
		} else {
			document.getElementById('test').style.display = 'none';
		}
	}

   //------------아이디
   function checkId() {
      //console.log("ok");
      var ckId = $("#id").val();
      var ckIdOk = ckId.replace(/ /gi, ""); //공백제거
      if ($("#id").val().length <= 1) {//아이디는 2자 이상
         document.getElementById('idch').innerHTML = '아이디는 2자 이상 입력하세요';
      } else if(ckId != ckIdOk){
         $("#id").val("");
         document.getElementById('idch').innerHTML = '공백은 입력하실 수 없습니다';
        } else if(ckIdOk.length > 15){
         $("#id").val("");
         document.getElementById('idch').innerHTML = '아이디는 15자 이내로 입력하세요';
      } else { //아이디 중복확인
         $.ajax({
            type : 'POST',
            url : "idcheck.mem",
            data : {
               id : ckIdOk
            },
            success : function(resultData) {
               if (resultData.trim() == "NO") {
                  document.getElementById('idch').innerHTML = '이미 사용중인 아이디입니다';
                  $("#idch").show();
                  $("#id").val("");
               } else {
                  $("#idch").show();
                  document.getElementById('idch').innerHTML = '사용가능한 아이디입니다';
               }
            }
         });
      }
   }
   
   //------------비밀번호
   function isSame() {
      
      var pwCh = $("#pw").val();
      var pwChOk = pwCh.replace(/ /gi, ""); //공백제거
      
      document.getElementById('same').style.color = 'black';
        if(pwCh != pwChOk){
         $("#pw").val("");
         document.getElementById('same').innerHTML = '공백은 입력하실 수 없습니다';
        } else if((pwCh.length < 3 || pwCh.length > 20)&&document.getElementById('pw').value != ''){
         $("#pw").val("");
         document.getElementById('same').innerHTML = '비밀번호는 3~20자로 하십시오';
      } else if (document.getElementById('pw').value != ''
               && document.getElementById('pwch').value != '') {
         if (document.getElementById('pw').value == document
               .getElementById('pwch').value) {
            document.getElementById('same').innerHTML = '비밀번호가 일치합니다';
         } else {
            document.getElementById('same').innerHTML = '비밀번호가 일치하지 않습니다';
            document.getElementById('same').style.color = 'red';
         }
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
						<h1>학생부 회원가입</h1>
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
								<input type="text" class="form-control input-lg" id="id"
									name="id" placeholder="ID" required="required"
									onchange="checkId()" />
							</div>
							<div class="col-md-6 xs-marginbot-20">
								<div>
									<span style="font-size: 13px" id="idch"></span>
								</div>
								<div>
									<span style="font-size: 13px" id="same"></span>
								</div>
							</div>
							<div class="row marginbot-20"></div>

							<div class="col-md-6">
								<input type="password" class="form-control input-lg" id="pw"
									name="pw" placeholder="Password" required="required"
									onchange="isSame()" />
							</div>

							<div class="col-md-6 xs-marginbot-20">
								<input type="password" class="form-control input-lg" id="pwch"
									name="pwch" placeholder="Password check" required="required"
									onchange="isSame()" />
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
									placeholder="이름" required="required" />
								<div></div>
							</div>

							<div class="col-md-6 xs-marginbot-20">
								<input type="text" class="form-control input-lg" name="birth1"
									placeholder="생년월일 (Ex. 920616)" required="required" />
							</div>
						</div>
						<div class="row marginbot-20">
							<div class="col-md-6 xs-marginbot-20">
								<input type="text" class="form-control input-lg" name="job1"
									placeholder="직업 (Ex. 학생)" required="required" />
							</div>
							<div class="col-md-6 xs-marginbot-20">
								<input type="email" class="form-control input-lg" name="email1"
									placeholder="이메일 (Ex.abc@naver.com)" required="required" />
							</div>
						</div>



						<!-- 학교 학년 정보 입력란 ////////////////////////////파라미터값 확인 할것//////////////////////////////////-->
						<div class="row marginbot-20">
							<div class="col-md-6 xs-marginbot-20">
								<a>출신학교</a>&nbsp;&nbsp;<a>:</a>&nbsp;&nbsp; <input type="text"
									name="school1" placeholder="학교명" required="required" size="10" />
								<select name="school11">
									<option label="중학교" value="middle"></option>
									<option label="고등학교" value="high" selected="selected"></option>
								</select> &nbsp; <select name="grade1">
									<option label="1학년" value="1grade" selected="selected"></option>
									<option label="2학년" value="2grade"></option>
									<option label="3학년" value="3grade"></option>
								</select>
							</div>
							<div class="col-md-6 xs-marginbot-20">
								<a>성별 입력 :</a>&nbsp;&nbsp; <a>남성 </a>&nbsp; <input type="radio"
									name="sex1" value="man"> &nbsp;&nbsp; <a>여성 </a>&nbsp;
								<input type="radio" name="sex1" value="girl">
							</div>
						</div>

						<div class="row marginbot-20">
							<div>
								<input type="text" class="form-control input-lg"
									style="font-size: 16px; text-align: center"
									placeholder="집 전화번호  (02-1234-1234)" name="hphone1"
									required="required">
							</div>
						</div>
						<div class="row marginbot-20">
							<div>
								<input type="text" class="form-control input-lg"
									style="font-size: 16px; text-align: center"
									placeholder="개인 휴대폰 번호   (010-1234-1234)" name="tphone1"
									required="required">
							</div>
						</div>
						<div class="row marginbot-20">
							<div>
								<input type="text" class="form-control input-lg"
									style="font-size: 16px; text-align: center"
									placeholder="긴급 연락처   (010-1234-1234)" name="ephone1"
									required="required">
							</div>
						</div>
						<div class="row marginbot-20">
							<div>
								<input type="text" class="form-control input-lg"
									style="text-align: center" name="homeaddress1"
									placeholder="집주소   (서울특별시 강서구 화곡로 354-3)" required="required" />
							</div>
						</div>





						<!-- 학생2 개인정보 -->
						<div>
							<div id='btn' onclick='change()' style="color: blue">팀원이
								있을경우에만 이 문구를 클릭해서 팀원의 정보를 입력해주세요.</div>
							<br>
							<!-- 참가자 2 - 개인신상정보 기입란 -->
							<div id='test' style='display: none'>
								<div class="row marginbot-20">
									<div class="col-md-6 xs-marginbot-20">
										<input type="text" name="name2" class="form-control input-lg"
											placeholder="이름" />
										<div></div>
									</div>

									<div class="col-md-6 xs-marginbot-20">
										<input type="text" class="form-control input-lg" name="birth2"
											placeholder="생년월일 (Ex. 920616)" />
									</div>
								</div>
								<div class="row marginbot-20">
									<div class="col-md-6 xs-marginbot-20">
										<input type="text" class="form-control input-lg" name="job2"
											placeholder="직업(Ex. 학생)" />
									</div>
									<div class="col-md-6 xs-marginbot-20">
										<input type="email" class="form-control input-lg"
											name="email2" placeholder="이메일 (Ex. abc@naver.com)" />
									</div>
								</div>




								<div class="row marginbot-20">
									<div class="col-md-6 xs-marginbot-20">
										<a>출신학교</a>&nbsp;&nbsp;<a>:</a>&nbsp;&nbsp; <input type="text"
									name="school2" placeholder="학교명" size="10" />
								<select name="school22">
									<option label="중학교" value="middle"></option>
									<option label="고등학교" value="high" selected="selected"></option>
								</select> &nbsp; <select name="grade1">
									<option label="1학년" value="1grade" selected="selected"></option>
									<option label="2학년" value="2grade"></option>
									<option label="3학년" value="3grade"></option>
								</select>
									</div>
									<div class="col-md-6 xs-marginbot-20">
										<a>성별 입력 :</a>&nbsp;&nbsp; <a>남성 </a>&nbsp; <input
											type="radio" name="sex2" value="man"> &nbsp;&nbsp; <a>여성
										</a>&nbsp;<input type="radio" name="sex2" value="girl">
									</div>
								</div>

								<div class="row marginbot-20">
									<div>
										<input type="text" class="form-control input-lg"
											style="font-size: 16px; text-align: center"
											placeholder="집 전화번호  (02-1234-1234)" name="hphone2">
									</div>
								</div>
								<div class="row marginbot-20">
									<div>
										<input type="text" class="form-control input-lg"
											style="font-size: 16px; text-align: center"
											placeholder="개인 휴대폰 번호   (010-1234-1234)" name="tphone2">
									</div>
								</div>
								<div class="row marginbot-20">
									<div>
										<input type="text" class="form-control input-lg"
											style="font-size: 16px; text-align: center"
											placeholder="긴급 연락처   (010-1234-1234)" name="ephone2">
									</div>
								</div>
								<div class="row marginbot-20">
									<div>
										<input type="text" class="form-control input-lg"
											style="text-align: center" name="homeaddress2"
											placeholder="집주소   (서울특별시 강서구 화곡로 354-3)" />
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