<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LikeList</title>
<link href="https://fonts.googleapis.com/css2?family=Covered+By+Your+Grace&family=Lacquer&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
<style>
*{
    margin:0;
    padding:0;
    text-decoration:none;
    color:#000000;
    font-family: 'Noto Sans', sans-serif;
  }	
.full {
	clear:both;
	min-height: 600px;
	height:auto;
	padding: 20px 0;
}
ul, li {
  margin: 0;
  list-style: none;
}
img {
  width: 173px;
  height: 250px;
  border-radius: 10px;
}
h2 {
  color: #666;
  font-size: 23px;
  font-weight: 500;
  text-align: center;
  font-weight:700;
  vertical-align: middle;
  background-color: white;
  width:20%;
  margin:7% auto auto auto;
}
hr {
  z-index:-1;
  border-bottom:0;
  border:1px solid #666;
  border-radius:10px;
  position:relative;
  bottom:25px;
}

/*Flex items*/
.content1 {
	width:70%;
	height:auto;
	margin: 0 auto;
}
.list {
  display: flex;
  flex-wrap: wrap;
}

.content {
   width: 33.33%;
   padding: 30px;
   box-sizing: border-box;
   overflow: hidden;
   flex-basis: auto;
}

.content img {
	object-fit: cover;
   width: 100%;
   cursor: pointer;
   transition: transform 1s;
}

.content h1 {
   padding: 10px;
   position: absolute;
   margin: 5px;
   font-size: 20px;
   color: #fff;
   background: rgba(47, 47, 49, 0.829);
   opacity: 0;
   z-index: 1;
   transition: 0.25 ease-in-out;
}

.content p {
   margin-top: 10px;
   font-size: 14px;
}

.content:hover h1 {
   opacity: 0.5;
}

.content img:hover {
   transform: scale(1.05);
   cursor: pointer;
   box-shadow: 0 2px 4px rgba(154, 223, 185, 0.849);
}

.card-button{
			background-color: red;
    		height: 10px;
		 	color: white;
	 	 	border: 2px solid red;
		 	border-radius: 2em;
		 	font-size: 15px;
		 	font-weight: bold;
		 	margin:1em;
		 	padding: 1em 1.2em;
		 	float : right;
		 	text-decoration : none;
		 	
}
.card-button:hover {
   		background-color: white;
   		border: 2px solid red;
   		color: red;
}

.content .fa-heart {
 	color: red;
	font-size: 40px;
	float: right;
}
.content .fa-heart:hover {
   	color: grey;
}

</style>
</head>
<body> 
<jsp:include page="/Header.jsp"/>
	<div class="full">
	<div class="content1">
	<h2>WISH LIST</h2><hr>
	<ul class="list">
				<c:set var="loginId" value="${sessionScope.member.id}" scope="page" />
				<c:forEach var="likeList" items="${likeList}">
					<c:if test="${likeList.id == loginId}">
						<div class="content">
							<h1>${likeList.shop_name}</br>
							</h1>
							<a
								href="${pageContext.request.contextPath}/detailPage/list.do?shop_num=${likeList.shop_num}">
								<img src="../images/${likeList.shop_num}_1.jpg">
							</a> <a href='delete.do?shop_num=${likeList.shop_num}'> <i
								class="fas fa-heart"></i>
							</a>
						</div>
					</c:if>
				</c:forEach>

			</ul>
	</div>
	</div>
<jsp:include page="/Tail.jsp"/>
</body>
</html>





