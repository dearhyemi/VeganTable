<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Covered+By+Your+Grace&family=Lacquer&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/415f6f6023.js" crossorigin="anonymous"></script>
        <title>Header</title>
        <style>
            * {
                margin: 0;
                padding: 0;
                list-style: none;
                text-decoration: none;
                color: #000000;
                font-family: 'Noto Sans KR', sans-serif;
            }

            .footer p {
                font-size: 0.8em;
                color: #666;
            }

            .footer {
            	clear: both;
                width: 100%;
                height: auto;
                background: #d2e0d2;
                background: #e8ebdd;
                /* background:#858475;
    			background:#cef1e4; */
            }

            .footer .fh {
                width: 100%;
                height: 64px;
                background: #eef0e7;
            }

            .footer .fh ul {
                width: 800px;
                margin: 0 auto;
                height: 100%;
            }

            .footer .fh ul li {
                float: left;
                padding: 19px 60px;
            }

            .footer .fb {
                clear: both;
                width: 80%;
                height: 160px;
                margin: 0 auto;
            }

            .footer .fb .ft {
                width: 30%;
                height: 160px;
                box-sizing:border-box;
                float: left;
                background: #e0e4d0;
                padding-top:10px;
               
            }

            .footer .fb .ft .flg {
                width: 100%;
                height: 102px;
                background: url("../images/logoGS.png") no-repeat;
                background-size: contain;
                background-position: center center;
                opacity: 0.5;
            }

            .footer .fb .ft p {
            	width:100%;
            	height:38px;
                text-align: center;
                background: #e0e4d0;
                
            }

            .footer .fb .ft p:last-child {
                padding-bottom: 0px;
            }

            .footer .fb .ft .fte {
                font-family: 'Covered By Your Grace', cursive;
                font-size:1.5em;
            }

            .footer .fb .ft .ftk {
                font-size: 0.9em;
            }

            .footer .fb .fc {
                width: 70%;
                height: 160px;
                float: right;
            }

            .footer .fb .fc .fcp {
            	font-size: 0.8em;
                width: 45%;
                height: 160px;
                box-sizing:border-box;
                float: left;
                padding: 24px 0 0 24px;
                background: #d4d8c0;
                background: #e0e4d0;
            }

            .footer .fb .fc .fcp:first-child {
                background: #d9ddc8;
            }

            .footer .ff {
                clear: both;
                width: 100%;
                height: 50px;
                margin: -50px 0 0 0;
                /* background:#cacfba; */
                background: #cacfba;
            }

            .footer .ff .ffp {
            	font-size: 0.8em;
                text-align: center;
                padding-top: 15px;
            }
        </style>
    </head>

    <body>
        <div class="footer">
            <div class="fh">
                <ul>
                    <li class="link-cap">공지사항</li>
                    <li class="link-cap">고객센터</li>
                    <li class="link-cap">이용약관</li>
                    <li class="link-cap">개인정보처리방침</li>
                </ul>
            </div>
            <div class="fb">
                <div class="ft">
                    <div class="flg"></div>
                    <p class="fte">Vegan table</p>
                    <!-- <p class="ftk">[ 비건 테이블 ]</p> -->
                </div>
                <div class="fc">
                    <p class="fcp">상호 : (주)비건테이블 <br>대표 : 문상환 <br>사업자등록번호 : 120-87-65763 <br>통신판매업신고번호 : 2012-서울송파-0515<br>[사업자정보확인] <br>대표번호 : 1670-9902</p>
                    <p class="fcp">비건테이블 고객센터(1670-9902) <br>운영시간 : 월-금 13:00~18:00(주말·공휴일 휴무) <br>팩스번호 : 050-605-0041 <br>메일 : Vegan_table@bitcamp.com <br>비건테이블 인스타그램 : @Vegan_table <br>주소 : 서울특별시 송파구 위례성대로 2 장은빌딩</p>
                </div>
            </div>
            <div class="ff">
                <p class="ffp">© Vegan table Corp. All right Reserved</p>
            </div>

        </div>
        </div>
    </body>
    </body>

    </html>