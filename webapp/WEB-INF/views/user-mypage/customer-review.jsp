<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/assets/css/user-mypage/customer-review.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/total.css" rel="stylesheet">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
</head>

<body>
	<div id="wrap" class="box-gray clearfix">


		<c:import url="/WEB-INF/views/includes/store-header.jsp"></c:import>


		<!-- contents -->
		<div id="contents" class="clearfix">
			<!-- aside-->
			<div class="aside">
				<ul>
					<li id="aside-top">마이페이지</li>
					<li><a href="https://www.naver.com/" class="link2">회원정보수정</a></li>
					<li><a href="https://www.naver.com/" class="link2">주소 등록/수정</a></li>
					<li><a href="https://www.naver.com/" class="link2">주문내역</a></li>
					<li><a href="https://www.naver.com/" class="link2">포인트 확인</a></li>
					<li id="myreview"><a href="https://www.naver.com/" class="link2">리뷰내역</a></li>
					<li><a href="https://www.naver.com/" class="link2">고객센터</a></li>
				</ul>
			</div>
			<!-- aside-->

			<div id="main">
				<div id="review-cnt">내가 쓴 총 리뷰 1개</div>

				<table class="mypage-review">
					<colgroup>
						<col style="width: 120px">
						<col style="width: 150px">
						<col style="width: 120px">
						<col style="width: 150px">
						<col style="width: 80px">
						<col style="width: 80px">
					</colgroup>

					<tr>
						<th id="store" colspan="6">버거킹 서울대입구역점</th>
					</tr>
					<tr>
						<td id="date" colspan="3">2022년 2월 25일</td>
						<td id="btn" colspan="3"><a id="btn-modify" href="">수정</a> <a id="btn-delete" href="">삭제</a></td>
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

				</table>


			</div>

		</div>

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
	</div>


</body>
</html>