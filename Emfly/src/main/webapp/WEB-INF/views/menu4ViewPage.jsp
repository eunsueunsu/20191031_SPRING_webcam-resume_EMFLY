<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>EMFLY</title> 
    <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css" /> <!-- 부트 스트랩 CSS (필수)-->
    <link rel="stylesheet" href="resources/css/boardPage.css"> <!-- 해당페이지 CSS -->
    <script type="text/javascript" src="resources/js/jquery.min.js"></script> <!-- 제이쿼리 JS (필수) -->
    <script type="text/javascript" src="resources/js/bootstrap.min.js"></script> <!-- 부트스트랩 JS (필수) -->
</head>
<body style="background:#F2F4F7;height:1250px;">
    <jsp:include page="./header.jsp" />
    <div id="divBack"></div>
      <section>
        <div id="menu1LayOut">
                <div class="content-header">
                        <div class="content-title">
                            게시글
                        </div>
                </div>
                <div class="board-title">
                        <div class="title">
                            면접 꿀팁 알려드립니다.
                        </div>
                        <div class="write-info">
                            <span>TEST1</span>
                            <span>2019.02.05</span>
                            <span><img src="resources/images/ico/visibility.png" style="padding-bottom:3px;"><span id="count">0</span></span>
                        </div>
                    </div>
        
                    <div class="board-content">
                        안녕하세요 감사해요
                    </div>
                    <div id="comment-title">댓글 (2)</div>
                    <div class="comment-container">
                        
                        <div class="comment-list">
                            <div class="writer">
                                <span class="comment-id">TEST1</span>
                            </div>
                            <div class="comment">
                                <span>2019.02.05</span>
                            </div>
                        </div>
                        <div class="comment-list2">
                            <div>
                                <div class="comment-content2">내용입니다~~~~</div>
                            </div>
                        </div>
                    </div> 
                    <div class="comment-container">
                        
                            <div class="comment-list">
                                <div class="writer">
                                    <span class="comment-id">TEST2</span>
                                </div>
                                <div class="comment">
                                    <span>2019.02.05</span>
                                </div>
                            </div>
                            <div class="comment-list2">
                                <div>
                                    <div class="comment-content2">내용2입니다~~~~</div>
                                </div>
                            </div>
                        </div> 
                    <div class="commentWrite">
                        <input type="text" class="comment-content" maxlength="100" placeholder="내용을 입력하세요 (최대 100자)" value="">
                        <div id="menu1button">작성</div>
                    </div>
                    <div style="margin:0 auto;text-align: center;">
                        <a href="emplyMenu4Update.me"><div id="menu4button">수정</div></a> <!-- 자신이 작성한 게시글일때 보이는 버튼 -->
                        <a href="emplyMenu4List.me"><div id="menu5button">목록</div></a>
                    </div>
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