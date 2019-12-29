<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0/dist/Chart.min.js"></script>

<title>EMFLY</title> 
<link rel="stylesheet" href="resources/css/menu1Screen.css"> <!-- 메인페이지 스크린 CSS -->
<link rel="stylesheet" href="resources/css/select2.min.css"> 
<script type="text/javascript" src="resources/js/select2.min.js"></script>


</head>

<body style="background:url(resources/images/Background.png);">
    <jsp:include page="./header.jsp" />

    <section>
        <div id="menu1LayOut">
            <div id="menu1Title">자기소개서 분석 결과</div>
            
            <div id="div1Text">기업 인재상 적합도</div>
            <p>삼성 전자</p>
            <div style="width: 300px; height: 300px; margin-left: 350px;">
            <canvas id="myChart" style="width: 300px; height: 300px;"></canvas>
        </div>
          
            <p>내 자소서 : ${score }</p>
            <p>합격 평균 : ${passScore}</p>


            <div id="div2Text">가장 많이 사용한 키워드</div>
            <div id="menu1Div2">
           	<div>
           
                <span>${rkey1 }</span>
                <span>${rkey2 }</span>
                <span>${rkey3 }</span>
                </div>

            </div>
            <div id="div2Text"> 추천 키워드</div>
            <div id="menu1Div2">
            <div>
            
                <span>${skey1 }</span>
                <span>${skey2 }</span>
                <span>${skey3 }</span>
                </div>

            </div>
            
        </div>

    </section>
    <jsp:include page="./footer.jsp" />
    <a href="#" id="nino-scrollToTop">Go to Top</a> <!-- 스크롤 위치 A 태그 -->
    
    <script src="resources/js/jquery.dlmenu.js"></script> <!-- Drop Down Menu JS 파일 (필수)-->
    <script src="resources/js/calendar.js"></script> <!-- 달력 JS 파일 -->
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
    <script>
        var mySelect = new Select('#demo1', {
            filtered: 'auto',
            filter_threshold: 8,
            filter_placeholder: '분석 직무 선택'
        });
        var mySelect = new Select('#demo2', {
            filtered: 'auto',
            filter_threshold: 8,
            filter_placeholder: '기업 선택(1)'
        });
        var mySelect = new Select('#demo3', {
            filtered: 'auto',
            filter_threshold: 8,
            filter_placeholder: '기업 선택(2)'
        });
        var mySelect = new Select('#demo4', {
            filtered: 'auto',
            filter_threshold: 8,
            filter_placeholder: '기업 선택(3)'
        });

        
    </script>
    <script>
            $(function() {
            	var score = '<c:out value="${score}"/>';
            	var passScore = '<c:out value="${passScore}"/>';
                var ctx = document.getElementById('myChart').getContext('2d');
                var myChart = new Chart(ctx, {
                    type: 'bar',
                    data: {
                        labels: ['내 자소서', '합격 평균'],
                        datasets: [{
                            label: '',
                            data: [score, passScore],
                            backgroundColor: [
                                'rgba(255, 99, 132, 0.2)',
                                'rgba(54, 162, 235, 0.2)',
                                'rgba(255, 206, 86, 0.2)',
                                'rgba(75, 192, 192, 0.2)',
                                'rgba(153, 102, 255, 0.2)',
                                'rgba(255, 159, 64, 0.2)'
                            ],
                            borderColor: [
                                'rgba(255, 99, 132, 1)',
                                'rgba(54, 162, 235, 1)',
                                'rgba(255, 206, 86, 1)',
                                'rgba(75, 192, 192, 1)',
                                'rgba(153, 102, 255, 1)',
                                'rgba(255, 159, 64, 1)'
                            ],
                            borderWidth: 1
                        }]
                    },
                    options: {
                        scales: {
                            yAxes: [{
                                ticks: {
                                    beginAtZero: true
                                }
                            }]
                        }
                    }
                });
            });
                </script>
</body>
</html>