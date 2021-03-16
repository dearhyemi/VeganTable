<%-- 0127 양수정 페이지 추가 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Covered+By+Your+Grace&family=Lacquer&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap"
	rel="stylesheet">
<title>ReservationList</title>
<style>
* {
	margin: 0;
	padding: 0;
	text-decoration: none;
	color: #000000;
	font-family: 'Noto Sans', sans-serif;
}

.full {
	clear:both;
	min-height: 600px;
	height: auto;
	padding: 20px 0;
}

.content {
	width: 60%;
	margin: 0 auto;
	padding: 20px 0;
}
.title {
  color: #666;
  font-size: 23px;
  font-weight: 500;
  text-align: center;
  font-weight:700;
  vertical-align: middle;
  background-color: white;
  width:20%;
  margin:5% auto auto auto;
}
hr {
  display: block;
  margin: 0 auto;
  width:70%;
  z-index:-1;
  border-bottom:0;
  border:1px solid #666;
  border-radius:10px;
  position:relative;
  bottom:25px;
}

.btn {
	background-color: #beddc1;
	height: 1.7%;
	color: white;
	border: 2px solid #beddc1;
	border-radius: 2em;
	font-size: 15px;
	font-weight: bold;
	margin: 0.5em;
	padding: 0.5em 1.2em;
	float: right;
	text-decoration: none;
}

.btn:hover {
	background-color: white;
	border: 2px solid #beddc1;
	color: #beddc1;
}
.card {
	width: 900px;
	height: 200px;
	padding: 20px;
	background-color: rgb(241, 241, 227);
	border-radius: 10px;
	margin: 0 auto;
}

img {
	object-fit: cover;
	width: 30%;
	height: 200px;
	float: left;
	clear: both;
	border-radius: 10px;
}

.card-body {
	float: left;
	width: 300px;
	height: 200px;
	padding: 20px;
	line-height;
}

.cancle {
	display: inline-block;
	float: right;
}
</style>
</head>
<body>
	<jsp:include page="/Header.jsp" />
	<div class="full">
			<h2 class ="title">MY RESERVATION</h2><hr>
		<div class="content">
			<br>
			<c:set var="loginId" value="${sessionScope.member.id}" scope="page" />
			<c:forEach var="reservation" items="${reservation}">
				<c:if test="${reservation.id == loginId}">
					<div class="card">
						<a href="${pageContext.request.contextPath}/detailPage/list.do?shop_num=${reservation.shop_num}">
						<img class="card-img-top"
							src="../images/${reservation.shop_num}_1.jpg"
							alt="Card image cap">
						</a>
						<div class="card-body">
							<h2 class="card-title">${reservation.rsv_date}</h2>
							<p class="card-text">
							<h2>${reservation.shop_name}</h2>
							<p>예약번호 : ${reservation.rsv_num}</p>
							<p>예약자명 : ${member.name}</p>
							<p>예약인원 : ${reservation.rsv_totalnum} 명</p>
							</p>
						</div>
						<div class="cancle text-muted">
							<a href='delete.do?rsv_num=${reservation.rsv_num}'
								class="btn btn-primary">CANCLE</a>
						</div>
					</div>
					<br>
				</c:if>
			</c:forEach>
		</div>
	</div>
	<jsp:include page="/Tail.jsp" />
</body>
</html>





