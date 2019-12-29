<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EMFLY</title> 
<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css" /> <!-- 부트 스트랩 CSS (필수)-->
<link rel="stylesheet" href="resources/css/searchWorker.css"> <!-- 구직자 검색 CSS -->
 <script type="text/javascript" src="resources/js/searchWorker.js"></script> <!-- 구직자 검색 JS -->
 <script>
	function list(page) {
		console.log("페이지를 이동합니다.");
		location.href = "searchWorker.do?curPage=" + page;
	}
</script>
</head>
<body>
    <jsp:include page="./header.jsp" />
      <div id="divBack"></div>
    <section>
        <form id="checkform">
            <div id="checkbox">
    
                <strong>경력</strong>  
                <div>
                        <input type="checkbox"  id="c0" value="0" onclick="choice(this)" />
                        <label for="c0"><span></span>신입<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c1" value="1" onclick="choice(this)" />
                        <label for="c1"><span></span>1년 ↓<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c3" value="3" onclick="choice(this)" />
                        <label for="c3"><span></span>1~3년<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c5" value="5" onclick="choice(this)" />
                        <label for="c5"><span></span>3~5년<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c10" value="10" onclick="choice(this)" />
                        <label for="c10"><span></span>5~10년<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c15" value="15" onclick="choice(this)" />
                        <label for="c15"><span></span>10~15년<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c99" value="99" onclick="choice(this)" />
                        <label for="c99"><span></span>15년 ↑<label id="count">0</label> </label>
                </div>              
                <div class="line"></div>

                <strong>성별</strong>
                <div>
                        <input type="checkbox"  id="c400" value="400" onclick="choice(this)" />
                        <label for="c400"><span></span>남<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c500" value="500" onclick="choice(this)" />
                        <label for="c500"><span></span>여<label id="count">0</label> </label>
                </div>
                <div class="line"></div>

                <strong>나이</strong>
                <div>
                        <input type="checkbox"  id="c20" value="20" onclick="choice(this)" />
                        <label for="c20"><span></span>20세 ↓<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c30" value="30" onclick="choice(this)" />
                        <label for="c30"><span></span>21~30세<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c35" value="35" onclick="choice(this)" />
                        <label for="c35"><span></span>31~35세<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c40" value="40" onclick="choice(this)" />
                        <label for="c40"><span></span>36~40세<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c50" value="50" onclick="choice(this)" />
                        <label for="c50"><span></span>41~50세<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c51" value="51" onclick="choice(this)" />
                        <label for="c51"><span></span>51세 ↑<label id="count">0</label> </label>
                </div>

                <div class="line"></div>
                <strong>최종 학력</strong>
                <div>
                        <input type="checkbox"  id="c44" value="44" onclick="choice(this)" />
                        <label for="c44"><span></span>4년제<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c23" value="23" onclick="choice(this)" />
                        <label for="c23"><span></span>2,3년제<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c56" value="56" onclick="choice(this)" />
                        <label for="c56"><span></span>석/박사<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c11" value="11" onclick="choice(this)" />
                        <label for="c11"><span></span>고졸 이하<label id="count">0</label> </label>
                </div>
                <div class="line"></div>

                <strong>희망근무 지역</strong>
                <div>
                        <input type="checkbox"  id="c100" value="100" onclick="choice(this)" />
                        <label for="c100"><span></span>서울<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c101" value="101" onclick="choice(this)" />
                        <label for="c101"><span></span>경기<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c102" value="102" onclick="choice(this)" />
                        <label for="c102"><span></span>광주<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c103" value="103" onclick="choice(this)" />
                        <label for="c103"><span></span>대구<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c104" value="104" onclick="choice(this)" />
                        <label for="c104"><span></span>대전<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c105" value="105" onclick="choice(this)" />
                        <label for="c105"><span></span>부산<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c106" value="106" onclick="choice(this)" />
                        <label for="c106"><span></span>울산<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c107" value="107" onclick="choice(this)" />
                        <label for="c107"><span></span>인천<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c108" value="108" onclick="choice(this)" />
                        <label for="c108"><span></span>세종<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c109" value="109" onclick="choice(this)" />
                        <label for="c109"><span></span>강원<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c110" value="110" onclick="choice(this)" />
                        <label for="c110"><span></span>경남<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c111" value="111" onclick="choice(this)" />
                        <label for="c111"><span></span>경북<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c112" value="112" onclick="choice(this)" />
                        <label for="c112"><span></span>전남<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c113" value="113" onclick="choice(this)" />
                        <label for="c113"><span></span>전북<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c114" value="114" onclick="choice(this)" />
                        <label for="c114"><span></span>충북<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c115" value="115" onclick="choice(this)" />
                        <label for="c115"><span></span>충남<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c116" value="116" onclick="choice(this)" />
                        <label for="c116"><span></span>제주<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c117" value="117" onclick="choice(this)" />
                        <label for="c117"><span></span>전국<label id="count">0</label> </label>
                </div>
               
                <!-- <div id="left">
                <div style="display: inline-block;">
                        <input type="checkbox"  id="c100" value="100" onclick="choice(this)" />
                        <label for="c100"><span></span>서울 0</label>
                </div>
                <div style="display: inline-block;">
                        <input type="checkbox"  id="c101" value="101" onclick="choice(this)" />
                        <label for="c101"><span></span>경기<label id="count">0</label> </label>
                </div>
                    <input type="checkbox" id="c100" value="100" onclick="choice(this)">서울
                    <label>0</label>
                    <br>
                    <input type="checkbox" id="c101" value="101" onclick="choice(this)">경기
                    <label>0</label>
                    <br>
                    <input type="checkbox" id="c102" value="102" onclick="choice(this)">광주
                    <label>0</label>
                    <br>
                    <input type="checkbox" id="c103" value="103" onclick="choice(this)">대구
                    <label>0</label>
                    <br>
                    <input type="checkbox" id="c104" value="104" onclick="choice(this)">대전
                    <label>0</label>
                    <br>
                    <input type="checkbox" id="c105" value="105" onclick="choice(this)">부산
                    <label>0</label>
                    <br>
                    <input type="checkbox" id="c106" value="106" onclick="choice(this)">울산
                    <label>0</label>
                    <br>
                    <input type="checkbox" id="c107" value="107" onclick="choice(this)">인천
                    <label>0</label>
                    <br>
                    <input type="checkbox" id="c108" value="108" onclick="choice(this)">세종
                    <label>0</label>
                </div>

                <div id="right">
                    <input type="checkbox" id="c109" value="109" onclick="choice(this)">강원
                    <label>0</label>
                    <br>
                    <input type="checkbox" id="c110" value="110" onclick="choice(this)">경남
                    <label>0</label>
                    <br>
                    <input type="checkbox" id="c111" value="111" onclick="choice(this)">경북
                    <label>0</label>
                    <br>
                    <input type="checkbox" id="c112" value="112" onclick="choice(this)">전남
                    <label>0</label>
                    <br>
                    <input type="checkbox" id="c113" value="113" onclick="choice(this)">전북
                    <label>0</label>
                    <br>
                    <input type="checkbox" id="c114" value="114" onclick="choice(this)">충북
                    <label>0</label>
                    <br>
                    <input type="checkbox" id="c115" value="115" onclick="choice(this)">충남
                    <label>0</label>
                    <br>
                    <input type="checkbox" id="c116" value="116" onclick="choice(this)">제주
                    <label>0</label>
                    <br>
                    <input type="checkbox" id="c117" value="117" onclick="choice(this)">전국
                    <label>0</label>
                </div> -->

                <div class="line"></div>

                <strong>직종 구분</strong>
                <div>
                        <input type="checkbox"  id="c201" value="201" onclick="choice(this)" />
                        <label for="c201"><span></span>경영·사무<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c202" value="202" onclick="choice(this)" />
                        <label for="c202"><span></span>영업·고객상담<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c203" value="203" onclick="choice(this)" />
                        <label for="c203"><span></span>건설<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c204" value="204" onclick="choice(this)" />
                        <label for="c204"><span></span>생산·제조<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c205" value="205" onclick="choice(this)" />
                        <label for="c205"><span></span>유통·무역<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c206" value="206" onclick="choice(this)" />
                        <label for="c206"><span></span>IT·인터넷<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c207" value="207" onclick="choice(this)" />
                        <label for="c207"><span></span>전문직<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c208" value="208" onclick="choice(this)" />
                        <label for="c208"><span></span>디자인<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c209" value="209" onclick="choice(this)" />
                        <label for="c209"><span></span>교육<label id="count">0</label> </label>
                </div>
                <div class="line"></div>

                <strong>근무 조건</strong>
                <div>
                        <input type="checkbox"  id="c300" value="300" onclick="choice(this)" />
                        <label for="c300"><span></span>정규직<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c301" value="301" onclick="choice(this)" />
                        <label for="c301"><span></span>계약직<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c302" value="302" onclick="choice(this)" />
                        <label for="c302"><span></span>인턴직<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c303" value="303" onclick="choice(this)" />
                        <label for="c303"><span></span>파견직<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c304" value="304" onclick="choice(this)" />
                        <label for="c304"><span></span>프리랜서<label id="count">0</label> </label>
                </div>
                <div class="line"></div>
                <strong>희망 급여</strong>
                <div>
                        <input type="checkbox"  id="c2000" value="2000" onclick="choice(this)" />
                        <label for="c2000"><span></span>2,000만원 ↓<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c2500" value="2500" onclick="choice(this)" />
                        <label for="c2500"><span></span>~2,500만원<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c3000" value="3000" onclick="choice(this)" />
                        <label for="c3000"><span></span>~3,000만원<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c3500" value="3500" onclick="choice(this)" />
                        <label for="c3500"><span></span>~3,500만원<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c4500" value="4500" onclick="choice(this)" />
                        <label for="c4500"><span></span>~4,500만원<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c5000" value="5000" onclick="choice(this)" />
                        <label for="c5000"><span></span>~5,000만원<label id="count">0</label> </label>
                </div>
                <div>
                        <input type="checkbox"  id="c9999" value="9999" onclick="choice(this)" />
                        <label for="c9999"><span></span>5,000만원 ↑<label id="count">0</label> </label>
                </div>
            </div>
        </form>

        <div id="content">
            <div id="checklist">
                <div id="list">
                    <ul id="ul">
                    </ul>
                </div>

                <input type="image" src="resources/images/reset.png" onclick="reset(4)">
                <strong>초기화</strong>
            </div>

            <div id="filter">
                <ul>
                    <li>
                        <div class="on" id="recent" onclick="sort(this.id)">
                            최신순
                        </div>
                    </li>
                    <li>
                        <div id="age" onclick="sort(this.id)">
                            나이순
                        </div>
                    </li>
                    <li>
                        <div id="study" onclick="sort(this.id)">
                            최종학력순
                        </div>
                    </li>
                    <li>
                        <div id="salary" onclick="sort(this.id)">
                            희망급여순
                        </div>
                    </li>
                </ul>
            </div>

            <div id="inform">
                <table>
                    <thead>
                        <tr>
                            <th width="85px"></th>
                            <th width="150px" style="padding-left:30px;">이름</th>
                            <th width="350px" style="padding-left:100px;">이력서 요약</th>
                            <th width="180px" style="padding-left:60px;">업데이트일</th>
                        </tr>
                    </thead>

                    <tbody>
                    <c:forEach var="row" items="${map.list}">
                    
                     <tr>
                            <td><input type="image" src="resources/images/emptystar.png" class="star" onclick="like(this.id)" id="star${row.reId}"></td>

                            <td>
                            <c:url var="rdetail" value="emplyMenu6Detail.me">
										<c:param name="reId" value="${ row.reId }" />
							</c:url> 
							<a href="${ rdetail }">
                                <label class="name">${row.rName}</label>
                            </a>
                                <c:set var="TextValue" value="${row.reBirth}"/>
                                <label class="genderage">
                                (
                                <c:if test="${row.reGender == 'M'}">
                                                 남자
                                </c:if>
                             	<c:if test="${row.reGender == 'F'}">
                                                여자
                                </c:if>
                                / ${fn:substring(TextValue,0,4)}년, 26세)</label>                          
                            </td>
                            <td>
                                <div>
                                <c:if test="${row.reComName == null}">
                                    <strong class="newbie">
                                    	신입
                                    </strong>
                                </c:if>
                                <c:if test="${row.reComName != null}">
                                    <strong class="career">
                                    	${row.reYear}
                                    </strong>
                                </c:if>
                                    <label>${row.reScname} ${row.reSchool} ${row.reMajor}</label>
                                    <div>${row.reLocation}</div>
                                    <div>/</div>
                                    <div>${row.reEmDiv}</div>
                                    <div>/</div>
                                    <div>${row.reEmploy}</div>
                                    <div>/</div>
                                    <div>${row.reSalary}만원</div>
                                </div>
                            </td>

                            <td class="date">${row.reDate}</td>
                        </tr>
                    </c:forEach>
                          
                    </tbody>
                </table>
            </div>
            <div class="page">
				<ul class="pagination pg-blue">
					<li class="page-item"><a href="#" onclick="list('1')">&laquo;</a>
					</li>
					<c:forEach var="num" begin="${map.pager.blockBegin}"
						end="${map.pager.blockEnd}">
						<c:choose>
							<c:when test="${num == map.pager.curPage}">
								<li class="page-item active"><a class="page-link">${num}</a>
								</li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a href="#" onclick="list('${num}')">
										${num} </a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<li class="page-item"><c:if
							test="${map.pager.curPage <= map.pager.totPage}">
							<a href="#" onclick="list('${map.pager.totPage}')">»</a>
						</c:if></li>
				</ul>
			</div>
        </div>
    </section>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
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