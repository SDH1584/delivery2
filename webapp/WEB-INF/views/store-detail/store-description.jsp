<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="${pageContext.request.contextPath}/assets/css/store-detail/store-detail-header.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/store-detail/store-description.css" rel="stylesheet">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
</head>

<body>
	<!-- wrap -->
	<div id="wrap" class="box-gray clearfix">

		<!-- 가게상세 해더 -->
		<c:import url="/WEB-INF/views/includes/store-detail-header.jsp"></c:import>

		<div class="store-menu">
			<ul class="clearfix">
				<li id="sel-menu"><a href="${pageContext.request.contextPath}/store/main">메뉴</a></li>
				<li id="resv-list"><a href="${pageContext.request.contextPath}/store/reserv">예약리스트</a></li>
				<li id="description"><a href="${pageContext.request.contextPath}/store/description">가게상세정보</a></li>
				<li id="review"><a href="${pageContext.request.contextPath}/store/review">리뷰</a></li>
			</ul>
		</div>
		<!-- //store menu -->


		<!-- container -->
		<div id="container" class="clearfix">
			<div id="content-mypage-upper">
				<div id="map">지도</div>

				<table id="store-info">
					<colgroup>
						<col style="width: 150px">
						<col style="width: 200px">
					</colgroup>

					<tr>
						<th>상호명</th>
						<td>버거킹 신림역점</td>
					</tr>
					<tr>
						<th>주소</th>
						<td>서울 관악구 신림로 318</td>
					</tr>
					<tr>
						<th>사업자 등록번호</th>
						<td>000-00-00000</td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td>070-7462-8763</td>
					</tr>
				</table>
			</div>

			<div id="content-mypage-middle">
				<table id="notice">
					<tr>
						<th>사장님 알림</th>
					</tr>
					<tr>
						<td>blah blah blah<br> blah blah blah
						</td>
					</tr>
				</table>

				<table id="info1">
					<tr>
						<th>배달료 및 최소주문금액</th>
					</tr>
					<tr>
						<td>기본배달료: 3000원</td>
					</tr>
					<tr>
						<td>최소주문금액: 20,000원</td>
					</tr>
					<tr>
						<td>최대 10인분까지 배송 가능</td>
					</tr>
				</table>

				<table id="info2">
					<colgroup>
						<col style="width: 50px">
						<col style="width: 300px">
					</colgroup>
					<tr>
						<th colspan="2">영업시간</th>
					</tr>
					<tr>
						<td class="day">월</td>
						<td>오전 11시 30분 ~ 오후 9시 00분</td>
					</tr>
					<tr>
						<td class="day">화</td>
						<td>오전 11시 30분 ~ 오후 9시 00분</td>
					</tr>
					<tr>
						<td class="day">수</td>
						<td>휴무일</td>
					</tr>
					<tr>
						<td class="day">목</td>
						<td>오전 11시 30분 ~ 오후 9시 00분</td>
					</tr>
					<tr>
						<td class="day">금</td>
						<td>오전 11시 30분 ~ 오후 9시 00분</td>
					</tr>
					<tr>
						<td class="day">토</td>
						<td>오전 11시 30분 ~ 오후 9시 00분</td>
					</tr>
					<tr>
						<td class="day">일</td>
						<td>오전 11시 30분 ~ 오후 9시 00분</td>
					</tr>
				</table>

				<table id="info3">
					<tr>
						<th>기본배달지역</th>
					</tr>
					<tr>
						<td>봉천동, 낙성대동, 사당동</td>
					</tr>
				</table>

				<table id="info4">
					<tr>
						<th>배송가능지역</th>
					</tr>
					<tr>
						<td>홍대</td>
					</tr>
					<tr>
						<td>가격: 2000원 추가</td>
					</tr>
				</table>

				<table id="info5">
					<tr>
						<th>원산지</th>
					</tr>
					<tr>
						<td>김치(국내산), 돼지고기(국내산)</td>
					</tr>
				</table>


			</div>

		</div>
		<!-- //container -->

		<!-- footer -->
		<div id="footer">
			<div class="clearfix">
				<ul class="footerh1">
					<li>이용약관</li>
					<li>개인정보처리방침</li>
					<li>회원등급정책</li>
					<li>회사소개</li>
					<li>요기요사장님</li>
					<li>입점문의</li>
					<li>공지사항</li>
				</ul>
			</div>
		</div>
		<!-- //footer -->

	</div>
	<!-- //wrap -->

</body>

</html>