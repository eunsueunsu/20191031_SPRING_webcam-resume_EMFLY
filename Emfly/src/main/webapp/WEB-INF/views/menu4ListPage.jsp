<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>EMFLY</title> 
    <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css" /> <!-- 부트 스트랩 CSS (필수)-->
    <link rel="stylesheet" href="resources/css/boardList.css"> <!-- 해당페이지 CSS -->
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
                    정보공유 게시판
                </div>
                <a href="emplyMenu4Write.me"><button class="write-button"><img src="resources/images/ico/pencil.png">&nbsp;<span>글쓰기</span></button></a>
                <div class="board-search">
                    <input type="text" class="search" placeholder="게시글 검색" value="">
                    <a href="#"><img src="resources/images/ico/search.png" class="search-img"></a>
                </div>
            </div>
            <div class="content-container">
                <div id="boardLine">
                </div>
                <a href="emplyMenu4View.me">
                    <div class="board-list">
                        <div class="title">
                            <span class="ct">제목1</span>
                        </div>
                        <span class="view-count"><img src="resources/images/ico/visibility.png"><span class="count">32</span></span>
                        <span class="date">2019.02.05</span>
                        <span class="writer">TEST1</span>
                    </div>
                </a>
                <a target href="#">
                    <div class="board-list">
                        <div class="title">
                            <span class="ct">제목2</span>
                        </div>
                        <span class="view-count"><img src="resources/images/ico/visibility.png"><span class="count">32</span></span>
                        <span class="date">2019.02.05</span>
                        <span class="writer">TEST2</span>
                    </div>
                </a>
                <a target href="#">
                    <div class="board-list">
                        <div class="title">
                            <span class="ct">제목3</span>
                        </div>
                        <span class="view-count"><img src="resources/images/ico/visibility.png"><span class="count">32</span></span>
                        <span class="date">2019.02.05</span>
                        <span class="writer">TEST3</span>
                    </div>
                </a>
                <a target href="#">
                    <div class="board-list">
                        <div class="title">
                            <span class="ct">제목4</span>
                        </div>
                        <span class="view-count"><img src="resources/images/ico/visibility.png"><span class="count">32</span></span>
                        <span class="date">2019.02.05</span>
                        <span class="writer">TEST4</span>
                    </div>
                </a>
                <a target href="#">
                    <div class="board-list">
                        <div class="title">
                            <span class="ct">제목5</span>
                        </div>
                        <span class="view-count"><img src="resources/images/ico/visibility.png"><span class="count">32</span></span>
                        <span class="date">2019.02.05</span>
                        <span class="writer">TEST5</span>
                    </div>
                </a>
                <a target href="#">
                    <div class="board-list">
                        <div class="title">
                            <span class="ct">제목6</span>
                        </div>
                        <span class="view-count"><img src="resources/images/ico/visibility.png"><span class="count">32</span></span>
                        <span class="date">2019.02.05</span>
                        <span class="writer">TEST6</span>
                    </div>
                </a>
                <a target href="#">
                    <div class="board-list">
                        <div class="title">
                            <span class="ct">제목7</span>
                        </div>
                        <span class="view-count"><img src="resources/images/ico/visibility.png"><span class="count">32</span></span>
                        <span class="date">2019.02.05</span>
                        <span class="writer">TEST7</span>
                    </div>
                </a>
                <a target href="#">
                    <div class="board-list">
                        <div class="title">
                            <span class="ct">제목8</span>
                        </div>
                        <span class="view-count"><img src="resources/images/ico/visibility.png"><span class="count">32</span></span>
                        <span class="date">2019.02.05</span>
                        <span class="writer">TEST8</span>
                    </div>
                </a>
                <a target href="#">
                    <div class="board-list">
                        <div class="title">
                            <span class="ct">제목9</span>
                        </div>
                        <span class="view-count"><img src="resources/images/ico/visibility.png"><span class="count">32</span></span>
                        <span class="date">2019.02.05</span>
                        <span class="writer">TEST9</span>
                    </div>
                </a>
                <a target href="#">
                    <div class="board-list">
                        <div class="title">
                            <span class="ct">제목10</span>
                        </div>
                        <span class="view-count"><img src="resources/images/ico/visibility.png"><span class="count">32</span></span>
                        <span class="date">2019.02.05</span>
                        <span class="writer">TEST10</span>
                    </div>
                </a>
                <div class="page">
                        <ul class="pagination pg-blue">
                                <li class="page-item">
                                    <a class="page-link" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                </li>
                                <li class="page-item active"><a class="page-link">1</a></li>
                                <li class="page-item"><a class="page-link">2</a></li>
                                <li class="page-item"><a class="page-link">3</a></li>
                                <li class="page-item"><a class="page-link">4</a></li>
                                <li class="page-item"><a class="page-link">5</a></li>
                                <li class="page-item">
                                    <a class="page-link" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </li>
                        </ul>
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