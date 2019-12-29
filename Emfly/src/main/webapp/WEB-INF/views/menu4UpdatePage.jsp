<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>EMFLY</title> 
    <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css" /> <!-- 부트 스트랩 CSS (필수)-->
    <link rel="stylesheet" href="resources/css/boardUpdate.css"> <!-- 해당페이지 CSS -->
    <script type="text/javascript" src="resources/js/jquery.min.js"></script> <!-- 제이쿼리 JS (필수) -->
    <script type="text/javascript" src="resources/js/bootstrap.min.js"></script> <!-- 부트스트랩 JS (필수) -->
</head>
<body style="background:#F2F4F7;height:1000px;">
    <jsp:include page="./header.jsp" />
    <div id="divBack"></div>
    <section>
        <div id="menu1LayOut">
                <div class="content-header">
                        <div class="content-title">
                            게시글 수정
                        </div>
                    </div>
                
                        
                    <div class="title">
                        <input type="text" class="title-write" placeholder="*제목을 입력해주세요." value="">
                    </div>
                    <div class="content">
                        <textarea class="content-write" placeholder="*내용을 입력해주세요." rows="8"></textarea>
                    </div>
                        <div class="div-button" style="margin:0 auto;text-align:center;">
                                <a href="emplyMenu4List.me"><div id="menu1button">수정완료</div></a>
                                <a href="emplyMenu4List.me"><div id="menu3button">목록</div></a>
                                <a href="emplyMenu4List.me"><div id="menu2button">삭제</div></a>
                               
                        
                
                </div>
    </section>   
	<jsp:include page="./footer.jsp" />
    <script src="resources/js/jquery.dlmenu.js"></script> <!-- Drop Down Menu JS 파일 (필수)-->
    <script>
       var options = {
                offset: '#showHere',
                offsetSide: 'top',
                classes: {
                    clone: 'banner--clone',
                    stick: 'banner--stick',
                    unstick: 'banner--unstick'
                }
           };
       var banner = new Headhesive('.banner', options);
    </script>
   
</body>
</html>