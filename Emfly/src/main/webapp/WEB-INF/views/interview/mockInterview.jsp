<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EMFLY SITE</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
   <!-- CSS 파일 -->
   <link rel="stylesheet" href="resources/css/HeaderMenu.css"> <!-- 헤더 메뉴 CSS (필수)-->
   <link rel="stylesheet" href="resources/css/default.css"> <!-- 기본 위치 CSS (필수) -->
   <link rel="shortcut icon" href="resources/images/ico/favicon.png"> <!-- 웹 브라우저 아이콘 (필수) -->
   <link rel="stylesheet" href="resources/css/dropDown.css"> <!-- DropDown Menu CSS (필수) -->
    <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css" /> <!-- 부트 스트랩 CSS (필수)-->
    <link rel="stylesheet" href="resources/css/mockInterview.css"> <!-- 해당페이지 CSS -->


    <script type="text/javascript" src="resources/js/jquery.min.js"></script> <!-- 제이쿼리 JS (필수) -->
    <script type="text/javascript" src="resources/js/bootstrap.min.js"></script> <!-- 부트스트랩 JS (필수) -->
    <script src="resources/js/modernizr.custom.js"></script> <!-- DropDown Menu JS (필수)-->
    <script type="text/javascript" src="resources/js/jquery.prettyPhoto.js"></script> <!-- 스크롤 JS -->
    <script type="text/javascript" src="resources/js/jquery.mCustomScrollbar.concat.min.js"></script> <!-- 스크롤 JS  -->
    <script type="text/javascript" src="resources/js/unslider-min.js"></script> <!-- 스크롤 JS  -->
<!--     <script type="text/javascript" src="resources/js/template.js"></script> 스크롤 JS  -->

    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>

</head>
<body>

<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>
   <header class="banner"> <!-- 헤더 -->
      <div id="bannerWidth">
         <div id="logo">
            <!-- 좌측 로고 DIV -->
            <a href="./mainPage.html"><img src="resources/images/mainLogo.png" id="logoImage"><br></a>
         </div>
         <div id="menu">
            <!-- 우측 메뉴 DIV -->
            <ul>
                    
                  <li><a href="./mainPage.html" class="menuList" id="menuListHome">HOME</a></li>
                  <!-- 헤더 메뉴 (로그인 이전)-->
                  <li><a href="./login.html" class="menuList">로그인</a></li>
                  <!-- 헤더 메뉴 (로그인 이후)-->
                  <!-- <div id="myPageDiv">
                  <img src="resources/images/person.png" id="personImage">
                  </div>
                  <li style="margin-left:30px;"><a href="./loginForm.html" class="menuList">thisisyourID</a></li>
                  <li><a href="./loginForm.html" class="menuList">로그아웃</a></li> -->
                  <!-- 헤더 메뉴 (로그인 이후) 끝-->
                  <li>
                      <div id="dl-menu" class="dl-menuwrapper">
                          <button class="dl-trigger"></button>
                          <ul class="dl-menu">
                            <li>
                                <a href="./menu1.html">자기소개서 분석</a>
                            </li>
                            <li>
                                <a href="./searchCompany.html">기업 정보 리스트</a>
                            </li>
                            <li>
                                <a href="./interview.html">모의 면접</a>
                            </li>
                            <li>
                                <a href="./boardList.html">정보공유 게시판</a>
                            </li>
                            <li>
                                <a href="./question.html">면접예상 질문</a>
                            </li>
                            <li>
                                <a href="./searchWorker.html">구직자 검색 </a>
                            </li>
                        </ul>
                      </div>
                  </li>
                  
              </ul>
         </div>
        </div>
        
             
    </header> <!-- 헤더 끝 -->
    <a id="showHere"></a> <!--  헤더 스크롤 위치 지정 A 태그 -->
    <div id="divBack"></div>
    <section>
        <div id="menu1LayOut">
            <div class="content-header">
                <div class="content-title">
                    모의 면접 테스트
                </div>
            </div>
            <div class="content-container" >
                <div id="boardLine">
                </div>
                <div class="question-box">
                        <span class="label label-info">Q</span>
                        <span class="question">
                       <%--  <c:out value="${map.qlist3.tQuestion }"/> --%>
                       
                        </span>
                         <button class="nextbutton btn btn-primary" onclick="nextQ()">다음 질문</button>
            
                         
                         <!-- <button class="endbutton">종료</button> -->
                         <hr>
                </div>  
                    <div class="progress">
                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="2" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 33%;">
                             1번 문제
                            </div>
                    </div>
                    <div class="webcam-container">
                            <div class="webcam">
                                <video id="localvideo" autoplay playsinline muted="muted"></video>
                            </div>
                            <div class="webcam-buttonbox">
                                
                                    <button class="recording" id="recButton" >
                                            <img src="resources/images/simulation/rec.png" alt=""
                                             class="recordingImg">
                                        </button>
                                        <span class="time">60</span>
                                        <span>sec</span>
                                        <button id="downloadButton" class="btn btn-primary">
                                            다운로드
                                        </button>
                                    
                            </div>
                        </div>
            </div>
    </div>
    </section>


   <!-- 전체 레이아웃 틀  DIV -->

   <footer>
      <div id="footer">
         <div class="nino-copyright"> Copyright 2019
            All Rights Emfly Reserved.
         </div>
      </div>
   </footer>
    <a href="#" id="nino-scrollToTop">Go to Top</a> <!-- 스크롤 위치 A 태그-->

       
   <script type="text/javascript">
   $(".myselect").select2();
   </script>
   <script src="resources/js/jquery.dlmenu.js"></script> <!-- Drop Down Menu JS 파일 (필수)-->
   <script type="text/javascript" src="resources/js/mockInterview.js"></script>
   <script src="https://webrtc.github.io/adapter/adapter-latest.js"></script>

</body>
</html>