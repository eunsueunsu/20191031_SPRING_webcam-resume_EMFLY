<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EMFLY</title>
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.min.css" />
<!-- 부트 스트랩 CSS (필수)-->
<link rel="stylesheet" href="resources/css/searchCompany.css">
<!-- 메인페이지 스크린 CSS -->
<script type="text/javascript" src="resources/js/searchCompany.js"></script>
<!-- 기업 검색 JS -->
<script>
	function list(page) {
		console.log("페이지를 이동합니다.");
		location.href = "searchCompany.do?curPage=" + page;
	}
</script>
</head>
<body>
	<jsp:include page="./header.jsp" />
	<sql:setDataSource var="snapshot"
		driver="oracle.jdbc.driver.OracleDriver"
		url="jdbc:oracle:thin:@127.0.0.1:1521:XE" user="emfly"
		password="emfly" />
	<div id="divBack"></div>
	<section>
		<form id="checkform">
			<div id="checkbox">
				<strong>기업 분류</strong>
				<div>
					<sql:query dataSource="${snapshot}" var="result1">
					select * from company where cdiv = '대기업'
					</sql:query>
					<input type="checkbox" id="c0" value="0" name="test_check"
						onclick="choice(this)" /> <label for="c0"><span></span>대기업
						<label id="count"> <c:out value="${result1.rowCount}" />
					</label> </label>


				</div>
				<div>
					<sql:query dataSource="${snapshot}" var="result2">
					select * from company where cdiv = '중견기업'
					</sql:query>
					<input type="checkbox" id="c1" value="1" name="test_check"
						onclick="choice(this)" /> <label for="c1"><span></span>중견기업
						<label id="count"><c:out value="${result2.rowCount}" /></label> </label>
				</div>
				<div>
					<sql:query dataSource="${snapshot}" var="result3">
					select * from company where cdiv = '중소기업'
					</sql:query>
					<input type="checkbox" id="c2" value="2" name="test_check"
						onclick="choice(this)" /> <label for="c2"><span></span>중소기업
						<label id="count"><c:out value="${result3.rowCount}" /></label> </label>
				</div>
				<div>
					<sql:query dataSource="${snapshot}" var="result4">
					select * from company where cdiv = '기타'
					</sql:query>
					<input type="checkbox" id="c333" value="333" onclick="choice(this)" />
					<label for="c333"><span></span>기타<label id="count"><c:out value="${result4.rowCount}" /></label>
					</label>
				</div>
				<div class="line"></div>
				<strong>회사 위치</strong>
				<div>
					<sql:query dataSource="${snapshot}" var="result5">
					select * from company where cLocation like '%'|| '서울' ||'%'
					</sql:query>
					<input type="checkbox" id="c100" value="100" onclick="choice(this)" />

					<label for="c100"><span></span>서울<label id="count"><c:out value="${result5.rowCount}" /></label>
					</label>
				</div>
				<div>
					<sql:query dataSource="${snapshot}" var="result6">
					select * from company where cLocation like '%'|| '경기' ||'%'
					</sql:query>
					<input type="checkbox" id="c101" value="101" onclick="choice(this)" />
					<label for="c101"><span></span>경기<label id="count"><c:out value="${result6.rowCount}" /></label>
					</label>
				</div>
				<div>
					<sql:query dataSource="${snapshot}" var="result7">
					select * from company where cLocation like '%'|| '광주' ||'%'
					</sql:query>
					<input type="checkbox" id="c102" value="102" onclick="choice(this)" />
					<label for="c102"><span></span>광주<label id="count"><c:out value="${result7.rowCount}" /></label>
					</label>
				</div>
				<div>
					<sql:query dataSource="${snapshot}" var="result8">
					select * from company where cLocation like '%'|| '대구' ||'%'
					</sql:query>
					<input type="checkbox" id="c103" value="103" onclick="choice(this)" />
					<label for="c103"><span></span>대구<label id="count"><c:out value="${result8.rowCount}" /></label>
					</label>
				</div>
				<div>
					<sql:query dataSource="${snapshot}" var="result9">
					select * from company where cLocation like '%'|| '대전' ||'%'
					</sql:query>
					<input type="checkbox" id="c104" value="104" onclick="choice(this)" />
					<label for="c104"><span></span>대전<label id="count"><c:out value="${result9.rowCount}" /></label>
					</label>
				</div>
				<div>
					<sql:query dataSource="${snapshot}" var="result10">
					select * from company where cLocation like '%'|| '부산' ||'%'
					</sql:query>
					<input type="checkbox" id="c105" value="105" onclick="choice(this)" />
					<label for="c105"><span></span>부산<label id="count"><c:out value="${result10.rowCount}" /></label>
					</label>
				</div>
				<div>
					<sql:query dataSource="${snapshot}" var="result11">
					select * from company where cLocation like '%'|| '울산' ||'%'
					</sql:query>
					<input type="checkbox" id="c106" value="106" onclick="choice(this)" />
					<label for="c106"><span></span>울산<label id="count"><c:out value="${result11.rowCount}" /></label>
					</label>
				</div>
				<div>
					<sql:query dataSource="${snapshot}" var="result12">
					select * from company where cLocation like '%'|| '인천' ||'%'
					</sql:query>
					<input type="checkbox" id="c107" value="107" onclick="choice(this)" />
					<label for="c107"><span></span>인천<label id="count"><c:out value="${result12.rowCount}" /></label>
					</label>
				</div>
				<div>
					<sql:query dataSource="${snapshot}" var="result13">
					select * from company where cLocation like '%'|| '세종' ||'%'
					</sql:query>
					<input type="checkbox" id="c108" value="108" onclick="choice(this)" />
					<label for="c108"><span></span>세종<label id="count"><c:out value="${result13.rowCount}" /></label>
					</label>
				</div>
				<div>
					<sql:query dataSource="${snapshot}" var="result14">
					select * from company where cLocation like '%'|| '강원' ||'%'
					</sql:query>
					<input type="checkbox" id="c109" value="109" onclick="choice(this)" />
					<label for="c109"><span></span>강원<label id="count"><c:out value="${result14.rowCount}" /></label>
					</label>
				</div>
				<div>
					<sql:query dataSource="${snapshot}" var="result15">
					select * from company where cLocation like '%'|| '경남' ||'%'
					</sql:query>
					<input type="checkbox" id="c110" value="110" onclick="choice(this)" />
					<label for="c110"><span></span>경남<label id="count"><c:out value="${result15.rowCount}" /></label>
					</label>
				</div>
				<div>
					<sql:query dataSource="${snapshot}" var="result16">
					select * from company where cLocation like '%'|| '경북' ||'%'
					</sql:query>
					<input type="checkbox" id="c111" value="111" onclick="choice(this)" />
					<label for="c111"><span></span>경북<label id="count"><c:out value="${result16.rowCount}" /></label>
					</label>
				</div>
				<div>
					<sql:query dataSource="${snapshot}" var="result17">
					select * from company where cLocation like '%'|| '전남' ||'%'
					</sql:query>
					<input type="checkbox" id="c112" value="112" onclick="choice(this)" />
					<label for="c112"><span></span>전남<label id="count"><c:out value="${result17.rowCount}" /></label>
					</label>
				</div>
				<div>
					<sql:query dataSource="${snapshot}" var="result18">
					select * from company where cLocation like '%'|| '전북' ||'%'
					</sql:query>	
					<input type="checkbox" id="c113" value="113" onclick="choice(this)" />
					<label for="c113"><span></span>전북<label id="count"><c:out value="${result18.rowCount}" /></label>
					</label>
				</div>
				<div>
					<sql:query dataSource="${snapshot}" var="result19">
					select * from company where cLocation like '%'|| '충북' ||'%'
					</sql:query>
					<input type="checkbox" id="c114" value="114" onclick="choice(this)" />
					<label for="c114"><span></span>충북<label id="count"><c:out value="${result19.rowCount}" /></label>
					</label>
				</div>
				<div>
					<sql:query dataSource="${snapshot}" var="result20">
					select * from company where cLocation like '%'|| '충남' ||'%'
					</sql:query>
					<input type="checkbox" id="c115" value="115" onclick="choice(this)" />
					<label for="c115"><span></span>충남<label id="count"><c:out value="${result20.rowCount}" /></label>
					</label>
				</div>
				<div>
					<sql:query dataSource="${snapshot}" var="result21">
					select * from company where cLocation like '%'|| '제주' ||'%'
					</sql:query>
					<input type="checkbox" id="c116" value="116" onclick="choice(this)" />
					<label for="c116"><span></span>제주<label id="count"><c:out value="${result21.rowCount}" /></label>
					</label>
				</div>
				<div class="line"></div>
				<strong>평균 급여</strong>
				<div>
					<sql:query dataSource="${snapshot}" var="result22">
					select * from company where csalary <= 25000000
					</sql:query>
					<input type="checkbox" id="c2500" value="2500"
						onclick="choice(this)" /> <label for="c2500"><span></span>~2,500만원<label
						id="count"><c:out value="${result22.rowCount}" /></label> </label>
				</div>
				<div>
					<sql:query dataSource="${snapshot}" var="result23">
					select * from company where csalary between 25000001 and 30000000
					</sql:query>
					<input type="checkbox" id="c3000" value="3000"
						onclick="choice(this)" /> <label for="c3000"><span></span>~3,000만원<label
						id="count"><c:out value="${result23.rowCount}" /></label> </label>
				</div>
				<div>
					<sql:query dataSource="${snapshot}" var="result24">
					select * from company where csalary between 30000001 and 35000000
					</sql:query>
					<input type="checkbox" id="c3500" value="3500"
						onclick="choice(this)" /> <label for="c3500"><span></span>~3,500만원<label
						id="count"><c:out value="${result24.rowCount}" /></label> </label>
				</div>
				<div>
					<sql:query dataSource="${snapshot}" var="result25">
					select * from company where csalary between 35000001 and 45000000
					</sql:query>
					<input type="checkbox" id="c4500" value="4500"
						onclick="choice(this)" /> <label for="c4500"><span></span>~4,500만원<label
						id="count"><c:out value="${result25.rowCount}" /></label> </label>
				</div>
				<div>
					<sql:query dataSource="${snapshot}" var="result26">
					select * from company where csalary between 45000001 and 50000000
					</sql:query>
					<input type="checkbox" id="c5000" value="5000"
						onclick="choice(this)" /> <label for="c5000"><span></span>~5,000만원<label
						id="count"><c:out value="${result26.rowCount}" /></label> </label>
				</div>
				<div>
					<sql:query dataSource="${snapshot}" var="result27">
					select * from company where csalary >= 50000001
					</sql:query>
					<input type="checkbox" id="c9999" value="9999"
						onclick="choice(this)" /> <label for="c9999"><span></span>5,000만원
						↑<label id="count"><c:out value="${result27.rowCount}"/></label> </label>
				</div>
			</div>
		</form>

		<div id="content">
			<div id="checklist">
				<div id="list">
					<ul id="ul">
					</ul>
				</div>

				<input type="image" src="resources/images/reset.png"
					onclick="reset(4)"> <strong>초기화</strong>
			</div>
			<div id="inform">
				<div id="searchDiv">

					<div class="board-search">
						<input type="text" class="search" id="searchWord"
							name="searchWord" placeholder="기업명 검색" value="${map.searchWord}">
						<a href="javascript:fn_searchList()"><img
							src="resources/images/ico/search.png" class="search-img"></a>
					</div>
				</div>
				<table>
					<thead>
						<tr>
							<th width="85px"></th>
							<th>기업명</th>
							<th>기업 요약</th>
							<th>기업 위치</th>
						</tr>
					</thead>
					<c:forEach var="row" items="${map.list}">

						<tbody>
							<div id="result"></div>
							<tr>

								<td><input type="image"
									src="resources/images/emptystar.png" class="star"
									onclick="like(this.id)" id="star${row.cId}"></td>
								<td><c:url var="cdetail" value="emplyMenu2Detail.me">
										<c:param name="cId" value="${ row.cId }" />
										<c:param name="cName" value="${ row.cName }" />
									
									</c:url> <a href="${ cdetail }"><label id="cNameLabel">${row.cName}</label></a></td>
								<td>
									<div>
										<div>
											<c:set var="cDiv" value="${row.cDiv }" />
											<c:choose>
												<c:when test="${cDiv eq '대기업'}">
													<strong class="cDiv1">${row.cDiv}</strong>
												</c:when>
												<c:when test="${cDiv eq '중견기업'}">
													<strong class="cDiv5">${row.cDiv}</strong>
												</c:when>
												<c:when test="${cDiv eq '중소기업'}">
													<strong class="cDiv3">${row.cDiv}</strong>
												</c:when>
												<c:when test="${cDiv eq '기타'}">
													<strong class="cDiv4">${row.cDiv}</strong>
												</c:when>
												<c:otherwise>
													<strong class="cDiv5">${row.cDiv}</strong>
												</c:otherwise>
											</c:choose>
										</div>
										<div class="margin">
											<strong class="sector">${row.cSector}</strong>
										</div>

									</div>
								</td>

								<td class="date">${row.cLocation}</td>
							</tr>

						</tbody>
					</c:forEach>
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
	<jsp:include page="./footer.jsp" />
	<a href="#" id="nino-scrollToTop">Go to Top</a>
	<!-- 스크롤 위치 A 태그 -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="resources/js/jquery.dlmenu.js"></script>
	<!-- Drop Down Menu JS 파일 (필수)-->
	<script src="resources/js/calendar.js"></script>
	<!-- 달력 JS 파일 -->
	<script>
		var options = {
			offset : '#showHere',
			offsetSide : 'top',
			classes : {
				clone : 'banner--clone',
				stick : 'banner--stick',
				unstick : 'banner--unstick'
			}
		};
		var banner = new Headhesive('.banner', options);
	</script>
	<script>
		function fn_searchList() {
			var searchWord = $("#searchWord").val();

			window.location.href = "/emfly/searchCompany.do?page=1&searchWord="
					+ searchWord;
		}
	</script>

</body>
</html>