<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- 화면 최적화 -->
<meta name="viewport" content="width-device-width" , initial-scale="2">
<!-- 루트 폴더에 부트스트랩을 참조하는 링크 -->
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
   rel="stylesheet">
<title>MyPage</title>
<style>

* {
   text-decoration: none;
   user-select: none;
   font-family: "Noto Sans KR", sans-serif;
   font-family: "Roboto", sans-serif;
}

.full{
clear: both;
 background:url(../images/bg2.jfif);
 background-size:cover;
 
 }

.containerform{
 padding: 100px 0px;
"C:/Users/sujeongyang/AppData/Local/Temp/fz3-16121620936740"
 
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
.deleteMember {
	float: right;
	padding-top: 45px;
	padding-right : 20px;
}
.deleteMember a{
	color: gray;
}


</style>
</head>
	<!-- 부트스트랩 참조 영역 -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="../js/bootstrap.js"></script>

<script>
function Mypage__submit(form) {
	
	let submit_save = 1;
	if(submit_save = 1){
		
		form.pw.value = form.pw.value.trim(); 
		if(form.pw.value.length == 0) {
			alert('비밀번호를 입력해주세요');
			form.pw.focus();
			submit_save=0;
			return;
		}
	
		form.name.value = form.name.value.trim(); 
		if(form.name.value.length == 0) {
			alert('이름을 입력해주세요.');
			form.name.focus();
			submit_save=0;
			return;
		}
		form.phone.value = form.phone.value.trim();
		if(form.pheon.value.length == 0) {
			alert('전화번호를 입력해주세요.');
			form.phone.focus();
			submit_save=0;
			return;
		}
		form.email.value = form.email.value.trim(); 
		if(form.email.value.length == 0) {
			alert('이메일 주소를 입력해주세요.');
			form.email.focus();
			submit_save=0;
			return;
		}
		//입력값이 모두 있을 경우에만 submit
		
		
			form.submit();
		
		} else {
			save();
		}
}

function save()
		{	
			alert('저장되었습니다!');
		}
		
</script>
<body>
<jsp:include page="/Header.jsp" />
<div class="full">
	<!-- 마이페이지 양식 -->
	<div class="containerform">
		<div class="jumbotron center-block"
			style="width: 600px; padding-top: 20px; padding-bottom: 80px;">
			<form method="post" action="update.do"  onsubmit="Mypage__submit(this); return false">
				<h3 style="text-align: center;">My Page</h3>
				</br>
				<div class="form-group">
					<img src="../images/profile.png" class="img-circle center-block"
						style="width: 100px;">
				</div>


				<div class="form-group">
					<label class="col-sm-5 control-label">아이디</label> 
					<input type='text' class="form-control" name='id'
						value="${member.id}" readonly>
				</div>
				<div class="form-group center-block">
					<label class="col-sm-5 control-label">비밀번호</label>
					 <input type='text' class="form-control" name='pw'
						placeholder='******'>
				</div>
				<div class="form-group center-block">
					<label class="col-sm-5 control-label">이름</label> 
					<input type='text' class="form-control" name='name'
						value='${member.name}'>
				</div>
				<div class="form-group center-block">
					<label class="col-sm-5 control-label">전화번호</label>
					<input type='tel' class="form-control" name='phone'
						value='${member.phone}'>
				</div>
				<div class="form-group center-block">
					<label class="col-sm-5 control-label">생년월일</label>
					 <input type='date' class="form-control" name='birth'
						value='${member.birth}'>
				</div>
				<div class="form-group center-block">
					<label class="col-sm-5 control-label">이메일</label>
					<input type='text' class="form-control" name='email'
						value='${member.email}'>
				</div>
				</br>
				<div class="col-md-4 col-md-offset-4 text-center">

					<button type="button" class="btn btn-default"
						onclick='location.href="mypage.do?id=${member.id}"'>취소</button>
					<button type='submit' class="btn btn-success" >저장</button>
				</div>
			</form>
					<br>
					<div class="deleteMember">
					<a href="../member/delete.do?id=${member.id}">회원 탈퇴</a>
					</div>	
		</div>
	</div>
</div>
<jsp:include page="/Tail.jsp"/>
</body>
</html>




