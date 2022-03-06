<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/assets/css/store-detail/store-detail-header.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/store-detail/store-review.css" rel="stylesheet">

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
		<div id="store-review-area" class="clearfix">
			<div id="review-cnt">최근 리뷰 1개</div>

			<table class="store-review">


				<tr>
					<th id="id" colspan="4">abc123</th>
					<td id="recommend" colspan="2"><a id="btn-recommend" href="">추천해요</a></td>
				</tr>
				<tr>
					<td id="date" colspan="3">2022년 2월 25일</td>
				</tr>
				<tr>
					<td colspan="6">
						<div>
							<img class="cover" src=".\burger1.jpg">
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="6">맛있어요</td>
				</tr>
				<tr>
					<th colspan="6" id="menu">와퍼세트</th>
				</tr>
				<tr class="reply1">
					<th colspan="6">ㄴ사장님</th>
				</tr>
				<tr class="reply2">
					<td colspan="6">감사합니다</td>
				</tr>
				<tr>
					<td id="bottom" colspan="6"></td>
				</tr>

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