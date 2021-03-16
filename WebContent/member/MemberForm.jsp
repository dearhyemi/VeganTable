<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 화면 최적화 -->
<meta name="viewport" content="width-device-width", initial-scale="2">
<!-- 루트 폴더에 부트스트랩을 참조하는 링크 -->
<link rel="stylesheet" href="../css/bootstrap.css">
<title>Join</title>
<style>

* {
   text-decoration: none;
   user-select: none;
   font-family: "Noto Sans KR", sans-serif;
   font-family: "Roboto", sans-serif;
}

.full {
	clear:both;
 	background:url(../images/bg2.jfif);
	background-size:cover;
}

.containerform{
 padding: 100px 0px;

 
 }
 
.jumbotron {
  background-color:rgba(214, 216, 211, 0.796);
  backgorund-position :center;
   
}
.jumbotron h3{
font-color:#fff;
}
.form-group {
 	padding: 0 60px;
}



</style>
<body>
	<!-- 부트스트랩 참조 영역 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="../js/bootstrap.js"></script>
	<script>


	//회원가입 입력 값 모두 있는지 확인
	function MemberForm__submit(form) {
		form.id.value = form.id.value.trim(); // 공백 허용 x
		if(form.id.value.length == 0) {
			alert('아이디를 입력해주세요.');
			form.id.focus();
			return;
		}
		
		form.pw.value = form.pw.value.trim(); // 공백 허용 x
		if(form.pw.value.length == 0) {
			alert('비밀번호를 입력해주세요');
			form.pw.focus();
			return;
		}
		
		form.pwconfirm.value = form.pwconfirm.value.trim(); // 공백 허용 x
		if(form.pwconfirm.value.length == 0) {
			alert('비밀번호 확인 칸을 입력해주세요');
			form.pwconfirm.focus();
			return;
		}

		if(form.pw.value != form.pwconfirm.value ) {
			alert('입력하신 비밀번호가 일치하지 않습니다.');
			form.pw.focus();
			return;
		}
		
		form.name.value = form.name.value.trim(); // 공백 허용 x
		if(form.name.value.length == 0) {
			alert('이름을 입력해주세요.');
			form.name.focus();
			return;
		}
		form.phone.value = form.phone.value.trim(); // 공백 허용 x
		if(form.pheon.value.length == 0) {
			alert('전화번호를 입력해주세요.');
			form.phone.focus();
			return;
		}
		form.email.value = form.email.value.trim(); // 공백 허용 x
		if(form.email.value.length == 0) {
			alert('이메일 주소를 입력해주세요.');
			form.email.focus();
			return;
		}
		//입력값이 모두 있을 경우에만 submit
		
			form.submit();
		}

	</script>

</head>
<body>

<jsp:include page="/Header.jsp"/>
<div class="full">
	<!-- 회원가입 양식 -->
	<div class="containerform">		<!-- 하나의 영역 생성 -->

			<div class="jumbotron center-block" style="width:600px; padding-top: 40px; padding-bottom:100px;">
				<form method="post" action="add.do" onsubmit="MemberForm__submit(this); return false">
					<h3 style="text-align: center;">JOIN</h3>
					</br>
					</br>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="id" maxlength="20">
					</div>
					</br>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="pw" maxlength="20">
					</div>
					</br>
						<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호 확인" name="pwconfirm" maxlength="20">
					</div>
					</br>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름" name="name" maxlength="20">
					</div>
					</br>
						<div class="form-group">
						<input type="date" class="form-control" placeholder="생년월일" name="birth" maxlength="20">
					</div>
					</br>
					<div class="form-group">
						<input type="tel" class="form-control" placeholder="전화번호" name="phone" maxlength="20">
					</div>
					</br>
					<div class="form-group">
						<input type="email" class="form-control" placeholder="이메일 주소" name="email" maxlength="40">
					</div>
					</br>
					</br>
				 <div class="col-md-4 col-md-offset-4 text-center">
				 <button type="button" class="btn btn-default">
					<a href="../index.html">취소</a></button>
					<button type="submit" class="btn btn-success">가입</button>
					</div>
					</form>
			</div>
		</div>	
		</div>
<jsp:include page="/Tail.jsp"/>
</body>
</html>
	