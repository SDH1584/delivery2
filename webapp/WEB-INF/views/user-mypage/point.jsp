<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/point.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/main.css" rel="stylesheet">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

</head>

<body>
	<div id="wrap" class="box-gray clearfix">

		<!-- 고객 헤더 -->

		<c:import url="/WEB-INF/views/includes/customer-header.jsp"></c:import>

		<!-- contents -->
		<div id="contents" class="clearfix">
			<!-- aside-->
		<div id="aside">
				<ul>
					<li id="aside-top">마이페이지</li>
					<li><a href="https://www.naver.com/" class="link2">회원정보수정</a></li>
					<li><a href="https://www.naver.com/" class="link2">주소 등록/수정</a></li>
					<li><a href="https://www.naver.com/" class="link2">주문내역</a></li>
					<li><a href="${pageContext.request.contextPath}/mypage/point" class="link2">포인트 확인</a></li>
					<li><a href="https://www.naver.com/" class="link2">리뷰내역</a></li>
					<li><a href="${pageContext.request.contextPath}/mypage/inquiryList" class="link2">고객센터</a></li>
				</ul>
			</div>
			<!-- aside-->


			<div id="main1" class="clearfix">
				<div id="mypointcheck" class="clearfix">
					<span class="pointall">전체 포인트</span> <span class="countpoint">N포인트</span>
				</div>
				<div id="timelimitpoint" class="clearfix">
					<span class="pointall">소멸예정포인트</span> <span class="countpoint">N포인트</span>
				</div>
				<table id="pointlist">
					<thead>
						<tr>
							<th>날짜</th>
							<th class="pointcontents">내용</th>
							<th>우효기간</th>
							<th>금액</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>21.02.27</td>
							<td class="pointcontents2">[구매적립]주문 0.5% 적립</td>
							<td>23.02.27</td>
							<td>+434원</td>
						</tr>
						<tr>
							<td>21.02.27</td>
							<td class="pointcontents2">[구매적립]주문 0.5% 적립</td>
							<td>23.02.27</td>
							<td>+434원</td>
						</tr>
						<tr>
							<td>21.02.27</td>
							<td class="pointcontents2">[구매적립]주문 0.5% 적립</td>
							<td>23.02.27</td>
							<td>+434원</td>
						</tr>
						<tr>
							<td>21.02.27</td>
							<td class="pointcontents2">[구매적립]주문 0.5% 적립</td>
							<td>23.02.27</td>
							<td>+434원</td>
						</tr>
						<tr>
							<td>21.02.27</td>
							<td class="pointcontents2">[구매적립]주문 0.5% 적립</td>
							<td>23.02.27</td>
							<td>+434원</td>
						</tr>

						<tr id="last">
							<td>2021-02-27</td>
							<td class="pointcontents2">[사용]주문결제시 할인</td>
							<td></td>
							<td>-381원</td>
						</tr>

					</tbody>
				</table>

			</div>
			<div id="paging" class="clearfix">
				<ul>
					<li><a href="">◀</a></li>
					<li class="active"><a href="">1</a></li>
					<li><a href="">2</a></li>
					<li><a href="">3</a></li>
					<li><a href="">4</a></li>
					<li><a href="">5</a></li>
					<li><a href="">6</a></li>
					<li><a href="">7</a></li>
					<li><a href="">8</a></li>
					<li><a href="">9</a></li>
					<li><a href="">10</a></li>
					<li><a href="">▶</a></li>
				</ul>
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