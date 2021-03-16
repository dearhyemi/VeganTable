<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Exception e = (Exception)request.getAttribute("error");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 
<meta http-equiv="Refresh" content="2;url=../Allshop/list.do">
화면 최적화 -->
<meta name="viewport" content="width-device-width" , initial-scale="2">
<!-- 루트 폴더에 부트스트랩을 참조하는 링크 -->
<link rel="stylesheet" href="../css/bootstrap.css">
<title>Error</title>
<style>
* {
	text-decoration: none;
	user-select: none;
	font-family: "Noto Sans KR", sans-serif;
	font-family: "Roboto", sans-serif;
}

.full {
	clear: both;
	background: url(../images/bg3.jfif);
	background-size: cover;
	width: 100%;
	height: 100%;
}

.containerform {
	padding: 150px 0px;
}

.jumbotron {
	padding: 30px 15px;
	margin-bottom: 30px;
	background-color: rgba(213, 238, 189, 0.396);
	backgorund-position: center;
	position: veritcal-center;
	text-align: center;
}

.jumbotron h3 {
	font-color: #fff;
}

.jumbotron p {
	font-size: 14px;
}
.back {
	padding-top: 20px;
	padding-right : 20px;
	color: gray;
	background-color:transparent;
}

</style>

</head>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="../js/bootstrap.js"></script>
<body>

 <jsp:include page="/Header.jsp"/>
 
 <div class="full">
		<div class="containerform">

			<div class="jumbotron center-block"
				style="width: 400px; padding-bottom:20px;">
				<h4>
					<strong>예상치 못한 오류 입니다.<br></strong>
				</h4>
				<br>
				<p>필수입력사항을 모두 입력하셨나요?</p>
				<p>혹은 로그인 상태가 맞으신가요?</p>
				<p class="back"><input type="button" value="뒤로가기" onclick="history.back(-1);"></p>

			</div>
			</form>
		</div>

 <jsp:include page="/Tail.jsp"/>
</body>
</html>