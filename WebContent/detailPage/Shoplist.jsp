<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>ShopList</title>
<script src="css_js/jquery-1.12.4.min.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

<link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
   rel="stylesheet">
</head>
<style>
* {
   text-decoration: none;
   user-select: none;
   font-family: "Noto Sans KR", sans-serif;
   font-family: "Roboto", sans-serif;
   
}
.full {
	clear: both;
	padding:50px;
	padding-bottom:100px;	
	
}

.content-wrap {
   padding-left: 18%;
   padding-right: 10%;
   box-sizing: border-box;
}

.title{
font-size:30px;
font-weight:600;
margin:30px;
}
.title a{
border-bottom:3px solid #D2E5BF;
box-shadow:inset 0 -4px 0 #D2E5BF;
color:#465D52;
}
.restaurant_list {
   display: flex;
   flex-flow: column wrap;
   max-height: 1500px;
   max-width:1200px;
   margin: 0;
   width: 100%;
}

.content {
   width: 33.33%;
   padding: 15px;
   box-sizing: border-box;
   overflow: hidden;
   flex-basis: auto;
}

.content img {
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
   color: #fff;
}

.content:hover h1 {
   opacity: 0.5;
}

.content img:hover {
   transform: scale(1.05);
   cursor: pointer;
   box-shadow: 0 2px 4px rgba(154, 223, 185, 0.849);
}
</style>

<body>

 <jsp:include page="/Header.jsp"/>
 <div class="full">
   <div class="content-wrap">
   <div class="title" data-aos="fade-down">
   <a>BEST 비건 맛집 둘러보기</a></div>
   <br>
      <div class="restaurant_list">
      <c:forEach var="shop" items="${shop}">
         <div class="content">
            <h1>
               ${shop.shop_name}</br>
               <p> ${shop.shop_address}</p>
            </h1>
            <a href="${pageContext.request.contextPath}/detailPage/list.do?shop_num=${shop.shop_num}">
            <img src="../images/${shop.shop_num}_1.jpg"> 
            </a>
         </div>
       </c:forEach>
   </div>
   </div>
</div>
 <jsp:include page="/Tail.jsp"/>
 
 <script>
    AOS.init({
        easing: 'ease-out-back',
        duration: 1000
    });
 
</script>  
</body>
</html>
