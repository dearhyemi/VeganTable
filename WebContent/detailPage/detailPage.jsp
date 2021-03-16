<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DetailPage</title>
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Covered+By+Your+Grace&family=Lacquer&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/415f6f6023.js" crossorigin="anonymous"></script>
<style>
 *{
            margin:0;
            padding:0;
            text-decoration:none;
            color:#000000;
            font-family: 'Noto Sans KR', sans-serif;
        }

body {
	width: 100%;
}

.full {
   clear: both;
   margin-left: 120px;
   margin-right: 120px;
}

li {
   list-style: none;
}
/*
        .clearfix {
            overflow: auto;
        }
        */
.clearfix::after {
   content: "";
   clear: both;
   display: table;
}

.clear {
   clear: both;
}

.gallery {
   width: 100%;
   margin: 20px auto;
   /*border: 1px solid #ccc;*/
   overflow: hidden;
   padding-top: 50px ;
}

.gallery ul {
   width: 400%;
   position: relative;
   left: -300px;
}

.gallery ul li {
   float: left;
   width: 300px;
   height: 300px;
   box-sizing: border-box;
   padding: 15px;
   text-align: center;
   line-height: 150px;
}

.gallery ul li .img {
   width: 100%;
   height: 300px;
   /*border: 3px solid #ccc;*/
   z-index: -999px;
   /* size: 100%; */
}

.g_item {
   width: 900px;
   margin: 0 auto;
   text-align: center;
}

.g_item ul li {
   display: inline-block;
   margin-right: 10px;
   background: #ccc;
   width: 10px;
   height: 10px;
   border-radius: 50%;
}

.g_item ul li.on {
   background: #f00;
}

.title {
   padding-top: 30px;
   clear: both;
}

table.info {
   border-collapse: separate;
   border-spacing: 1px;
   text-align: left;
   line-height: 1.5;
   /* border-top: 1px solid #ccc; */
   margin: 20px 10px;
}

table.info th {
   width: 100px;
   padding: 10px;
   font-weight: bold;
   vertical-align: top;
   /* border-bottom: 1px solid #ccc; */
   /* background: #efefef; */
}

table.info td {
   width: 350px;
   padding: 10px;
   vertical-align: top;
   /* border-bottom: 1px solid #ccc; */
}

table.reviewInfo {
   border-collapse: separate;
   border-spacing: 1px;
   text-align: left;
   line-height: 1;
   border-top: 1px solid #ccc;
   margin: 10px 50px 50px 120px;
   width: 87.5%;
   
}

.content {
   width: 50%;
   float: left;
}

.map {
   width: 465px;
   height: 370px;
   float: right;
   margin-right: 30px;
   margin-bottom: 20px;
   border : 1px solid gray;
}

.map:hover{
	text-decoration : underline;
}

.review {
   clear: both;
}

textarea {
   width: 100%;
   height: 100px;
   resize: none; /* 크기고정 */
   /*   resize: horizontal; // 가로크기만 조절가능 
   resize: vertical;  세로크기만 조절가능  */
   margin-bottom: 20px;
   
}

table.reviewInfo th {
   padding: 10px;
   font-weight: bold;
   vertical-align: top;
   border-bottom: 1px solid #ccc;
   background: #efefef;
}

table.reviewInfo td {
   width: 300px;
   padding: 10px;
   vertical-align: top;
   border-bottom: 1px solid #ccc;
   size: fix;
}

.like {
	display: inline-block;
	float: right;
	padding: 0 500px 0 0;

}
.form-group {
	width: 20%;
	display: inline-block;
}

#likeBtn {
	border: none;
	background-color:transparent;
	border:0;
	outline:0;
}
#likeBtn .fa-heart {
	color: grey;
	font-size: 40px;

}

#likeBtn .fa-heart:hover {
	transform: scale(1.1);
	color: red;
}

.form-group {
	width: 20%;
	display: inline-block;
}

.btn-block {
	background-color: #808080;
	border: 2px solid #808080;
	 cursor: pointer;
	 box-shadow: none;
	 outline: none;
}

.btn:hover {
	background-color: #323232;
	border: 2px solid #323232;
	color: white;
}

.reviewInfo .fa-star {
	color: yellow;
}

#rsvBtn {
	background-color: #808080;
	height: 1.7%;
	color: white;
	border: 2px solid #808080;
	border-radius: 2em;
	font-size: 15px;
	font-weight: bold;
	margin: 0.5em;
	padding: 0.5em 1.2em;
	text-decoration: none;
}
#rsvBtn:hover {
	background-color: #323232;
	border: 2px solid #323232;
	color: white;
}

/* rating */
.rating-group {
    display: inline-flex;
}
.rating__icon {
    pointer-events: none;
}
.rating__input {
   position: absolute !important;
   left: -9999px !important;
}
.rating__label {
    cursor: pointer;
    padding: 0 0.1em;
    font-size: 2rem;
}
.rating__icon--star {
    color: yellow;
}
.rating__icon--none {
    color: #eee;
}

.rating__input:checked ~ .rating__label .rating__icon--star {
    color: #ddd;
}
.rating-group:hover .rating__label .rating__icon--star {
    color: yellow;
}
.rating__input:hover ~ .rating__label .rating__icon--star {
    color: #ddd;
}
.rating-group:hover .rating__input--none:not(:hover) + .rating__label .rating__icon--none {
     color: #eee;
}





</style>
<script src="../js/jquery-1.12.4.min.js"></script>
<script>
        var gall = setInterval(galleryFun, 2000);
        var inter = true;
        var idx = 2;

        function galleryFun() {

            $(".gallery ul").animate({
                "left": -300 * idx + "px"
            }, 300);
            $(".g_item ul li").eq(idx - 1).addClass("on").siblings().removeClass("on");
            idx++;
            if (idx > $(".gallery ul li").length - 5) {
                $(".gallery ul").animate({
                    "left": 0
                }, 0);
                idx = 0;

            }
        }

        $(".gallery , .g_item").hover(function () {
            if (inter == true) {
                clearInterval(gall);
                inter = false;
            }
        }, function () {
            if (inter == false) {
                gall = setInterval(galleryFun, 2000);
                inter = true;
            }
        });

        $(".g_item ul li").on('click', function () {
            $(this).addClass("on").siblings().removeClass("on");
            idx = $(this).index() + 1;
            $(".gallery ul").animate({
                "left": -300 * idx + "px"
            }, 1000);

        });
     

    </script>
</head>
<body>
<jsp:include page="/Header.jsp"/>
<div class="full">
	<div class="gallery">
      <ul class="clearfix">
         <li>
            <div class="img">
               <img src="../images/${shop.shop_num}_3.jpg" width="100%" height="300px">box5
            </div>
         </li>
         <li>
            <div class="img">
               <img src="../images/${shop.shop_num}_4.jpg" width="100%" height="300px">box4
            </div>
         </li>
         <li>
            <div class="img">
               <img src="../images/${shop.shop_num}_5.jpg" width="100%" height="300px">box3
            </div>
         </li>
         <li>
            <div class="img">
               <img src="../images/${shop.shop_num}_1.jpg" width="100%" height="300px">box1
            </div>
         <li>
            <div class="img">
               <img src="../images/${shop.shop_num}_2.jpg" width="100%" height="300px">box2
            </div>
         </li>
         <li>
            <div class="img">
               <img src="../images/${shop.shop_num}_3.jpg" width="100%" height="300px">box3
            </div>
         </li>
         <li>
            <div class="img">
               <img src="../images/${shop.shop_num}_4.jpg" width="100%" height="300px">box4
            </div>
         </li>
         <li>
            <div class="img">
               <img src="../images/${shop.shop_num}_5.jpg" width="100%" height="300px">box5
            </div>
         </li>
         <li>
            <div class="img">
               <img src="../images/${shop.shop_num}_1.jpg" width="100%" height="300px">box1
            </div>
         </li>
         <li>
            <div class="img">
               <img src="../images/${shop.shop_num}_2.jpg" width="100%" height="300px">box1
            </div>
         </li>
      </ul>
   </div>
	
	<div class="g_item">
        <ul>
            <li class="on"></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </div>
    
	<div class=title>
		<h2>${shop.shop_name}
		<div class="like">
		<form action="../likeList/add.do" method='post'>
      	<input type="hidden" value="${member.id}" name="id">
      	<input type="hidden" value="${shop.shop_num}" name="shop_num">
      	<button type ="submit" id='likeBtn'><i class="fas fa-heart"></i></button>
      	</div>
      	</h2>
      </form>
		<hr />
	</div>

	<div class="content">
		<table class="info">
			<tr>
				<th scope="row">주소</th>
				<td>${shop.shop_address}</td>
			</tr>
			<tr>
				<th scope="row">전화번호</th>
				<td>${shop.shop_tel}</td>
			</tr>
			<tr>
				<th scope="row">음식종류</th>
				<td>${shop.shop_type}</td>
			</tr>
			<tr>
				<th scope="row">영업시간</th>
				<td>${shop.shop_time}</td>
			</tr>
			<tr>
				<th scope="row">홈페이지</th>
				<td> 
				<a href="${shop.shop_hp}" target="_blank" >${shop.shop_hp}</a>
				</td>
			</tr>
		</table>

	</div>
	<div class="map">
		<table cellpadding="0" cellspacing="0" width="462">
			<tr>
				<td style="border: 1px solid #cecece;">
			
				<a href="${shop.shop_map }" target="_blank">
					 <img src="../images/${shop.shop_num}_map.jpg"  width="460" height="340" alt="지도 크게 보기" title="지도 크게 보기"
						border="0" style="vertical-align: top;" />
				</a>
				</td>
			</tr>
			<tr>
				<td>
				 <a href="${shop.shop_map }" target="_blank">
				   클릭하여 자세히 보기 <i class="fas fa-search-plus"></i>
				 </a>
				</td>
			</tr>
			
		</table>
	<br/>
	</div>
	<div class="review">
      <hr />



			<form action="../reservation/add.do" method='post'>
				<input type="hidden" value="${member.id}" name="id"> <input
					type="hidden" value="${shop.shop_num}" name="shop_num">
				<div class="form-group">
					<input type="date" class="form-control" placeholder="예약날짜"
						name="rsv_date" maxlength="20">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="총인원"
						name="rsv_totalnum" maxlength="20">
				</div>
				<div class="form-group">
					<input type="submit" id="rsvBtn" value="예약하기">
				</div>
			</form>

			<form action='../review/add.do' method='post'>
         <h2>리뷰 등록</h2>
         <br>
         <!-- 별점
         <div class="form-group">
            <label for="reply_star"><b><i class="fas fa-star"></i> </b></label> <span class="star-input">
               <span class="input"> 
               <input type="radio" name="rating" id="p1" value="1"> 
               <label for="p1">1</label> 
               <input type="radio" name="rating" id="p2" value="2"> 
               <label for="p2">2</label> 
               <input type="radio" name="rating" id="p3" value="3"> 
               <label for="p3">3</label> 
               <input type="radio" name="rating" id="p4" value="4"> 
               <label for="p4">4</label>
               <input type="radio" name="rating" id="p5" value="5"> 
               <label for="p5">5</label>
            </span> 
            <output for="star-input"></output>
            </span>
         </div> -->   
        <div class="rating-group">
        <label aria-label="1 star" class="rating__label" for="rating-1"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
        <input class="rating__input" name="rating" id="rating-1" value="1" type="radio">
        <label aria-label="2 stars" class="rating__label" for="rating-2"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
        <input class="rating__input" name="rating" id="rating-2" value="2" type="radio">
        <label aria-label="3 stars" class="rating__label" for="rating-3"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
        <input class="rating__input" name="rating" id="rating-3" value="3" type="radio" checked>
        <label aria-label="4 stars" class="rating__label" for="rating-4"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
        <input class="rating__input" name="rating" id="rating-4" value="4" type="radio">
        <label aria-label="5 stars" class="rating__label" for="rating-5"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
        <input class="rating__input" name="rating" id="rating-5" value="5" type="radio">
    	</div> 
    	<br>
    	<br>	
    	<input type="hidden" name="id" value="${member.id}" >
         <input type="hidden" name="shop_num" value="${shop.shop_num}">
         <textarea id="content" name="text" rows="5" cols="80"></textarea>
         <br>
         <input type="submit" class="btn btn-block btn-primary" value="등록하기">
         <br>
		</div>
         
	</form>

   </div>
	<table class="reviewInfo" >
         <tr>
            <th>ID</th>
            <th>Text</th>
            <th>Rating</th>

         </tr>

            <!--  여기 넘어오는 식당값 받으면 리뷰 그것만 보이게  -->
       	<c:forEach var="review" items="${review}">
               <tr>
                  <td style="width: 20%; size: fix;">${review.id}</td>
                  <td style="width: 65%;">${review.text}</td>
                  <td id="point">
             		<c:forEach var="i" begin="1" end="${review.rating}">
                  		<i class="fas fa-star"></i>
                  	</c:forEach>
                  </td>
               </tr>
       	</c:forEach>


      </table>
</div>
<jsp:include page="/Tail.jsp"/>
</body>
</html>