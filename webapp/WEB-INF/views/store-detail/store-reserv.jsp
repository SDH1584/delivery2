<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/assets/css/store-detail/store-detail-header.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/store-detail/store-reserv.css" rel="stylesheet">


</head>

<body>
	<!-- wrap -->
	<div id="wrap" class="box-gray clearfix">

		<!-- 가게상세 해더 -->
		<c:import url="/WEB-INF/views/includes/store-detail-header.jsp"></c:import>

		<div class="store-menu">
			<ul class="clearfix">
				<li id="sel-menu"><a href="">메뉴</a></li>
				<li id="resv-list"><a href="">예약리스트</a></li>
				<li><a href="">가게상세정보</a></li>
				<li><a href="">리뷰</a></li>
			</ul>
		</div>
		<!-- //store menu -->


		<!-- container -->
		<div id="container" class="clearfix">
			<div id="table-description">
				* 현재 진행중인 예약건들입니다<br> * 상태란의 '대기중' 버튼을 누르면 해당 예약건에 참여하실 수 있습니다.
			</div>
			<table class="reserve-table">
				<thead>
					<tr>
						<th>예약마감</th>
						<th>참여인원</th>
						<th>인당 배달료</th>
						<th>현재 주문 금액</th>
						<th>배달지 주소</th>
						<th>상태</th>
					</tr>
				</thead>

				<tbody>
					<tr>
						<td>2월 16일 오후 12시 30분</td>
						<td>2/5</td>
						<td>600원</td>
						<td>12,000 / 25,000</td>
						<td>관악구 봉천동 000번길 00</td>
						<td class="status">대기중</td>
					</tr>

					<tr>
						<td>2월 16일 오후 12시 10분</td>
						<td>2/5</td>
						<td>600원</td>
						<td>12,000 / 25,000</td>
						<td>관악구 봉천동 000번길 000</td>
						<td class="status">대기중</td>
					</tr>

					<tr id="last">
						<td>2월 16일 오전 11시 55분</td>
						<td>2/3</td>
						<td>1,000원</td>
						<td>18,000 / 25,000</td>
						<td>관악구 봉천동 xxx</td>
						<td class="status">대기중</td>
					</tr>
				</tbody>

			</table>


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