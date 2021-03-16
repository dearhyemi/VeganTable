<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="https://fonts.googleapis.com/css2?family=Covered+By+Your+Grace&family=Lacquer&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/415f6f6023.js" crossorigin="anonymous"></script>
	<title>Header</title>
	<style>
        *{
            margin:0;
            padding:0;
            text-decoration:none;
            color:#000000;
            font-family: 'Noto Sans KR', sans-serif;
        }
        a{
        	text-decoration:none;
            color:#000000;
        }
        .ctnr{
        	float:left;
        	width:100%;
        	margin:0;
            background:#beddc1;
            height:120px;
            box-shadow:1px 1px 1px #eee;
        }
        .ctnr .twrpr{
            width:430px;
            height:120px;
            background:#e8ebdd;
            float:left;
        }
        .ctnr #hlogo{
            width:100px;
            height:100px;
            /* border-radius:50%; */
            float:left;
            background:url("../images/logo-mini-sh-ver.png") no-repeat /*#f7f4eb*/;
            background-size:cover;
            margin:13px 0 0 50px;
            opacity:0.9
        }
        .ctnr .twrpr #ttwrpr p{
            text-align:center;
        }
        .ctnr .twrpr #ttwrpr #titlee{
            margin-top:21px;
            font-family: 'Covered By Your Grace', cursive;
            font-size:3em;
            line-height:1.8em;
        }
        .ctnr .twrpr #ttwrpr #titlek{
            font-size:1em;
        }
        .ctnr .mnl{
            margin:0 0 0 60px;
            float:left;
            font-size:2em;
            line-height:4em;
        }
        .ctnr .mnr{
            margin:0 30px 0 0;
            padding:40px 0 0 0;
            float:right;
        }
        .ctnr p a:hover{
            opacity:0.7;
        }
    
    </style>
</head>
<body>

<div class="ctnr">
            <div class="twrpr">
            	<a href="../index.html">
	                <div id="hlogo"></div>
	                <div id="ttwrpr">
	                    <p id="titlee">Vegan table&nbsp;&nbsp;</p>
	                </div> 
                </a>    
            </div>
            <p class="mnl"><a href="<%=request.getContextPath()%>/Allshop/list.do"><i class="fas fa-store"></i></a></p>
            
            <p class="mnl">
             <c:if test="${empty sessionScope.member or empty sessionScope.member.id}">
      			<a href="<%=request.getContextPath()%>/auth/login.do">
      		 </c:if>
      		 <c:if test="${!empty sessionScope.member and !empty sessionScope.member.id}">
      			<a href="<%=request.getContextPath()%>/reservation/list.do">
      		 </c:if>
            <i class="fas fa-calendar-alt"></i>
            </a>
            </p>
            
            <p class="mnl">
            <c:if test="${empty sessionScope.member or empty sessionScope.member.id}">
      			<a href="<%=request.getContextPath()%>/auth/login.do">
      		 </c:if>
      		 <c:if test="${!empty sessionScope.member and !empty sessionScope.member.id}">
      			<a href="<%=request.getContextPath()%>/likeList/list.do">
      		 </c:if>
        	 <i class="fas fa-heart"></i>
        	 </a></p>

            <p class="mnr">
                <c:if test="${empty sessionScope.member or empty sessionScope.member.id}">
	                <p class="mnr"><a href="<%=request.getContextPath()%>/member/add.do">회원가입</a></p>
	                <p class="mnr"><a style="color: black;"href="<%=request.getContextPath()%>/auth/login.do">로그인</a></p>
                </c:if>
                <c:if test="${!empty sessionScope.member and !empty sessionScope.member.id}">
	                [ ${sessionScope.member.name} ]님 환영합니다! 
	                <p class="mnr"><a style="color: black;" href="<%=request.getContextPath()%>/auth/logout.do">로그아웃</a></p>
            		<p class="mnr"><a href="<%=request.getContextPath()%>/member/mypage.do?id=${member.id}">마이페이지</a></p>
                </c:if>
            </p>
    
        </div>


</body>
</html>






