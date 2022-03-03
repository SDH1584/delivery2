<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/assets/css/main.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/user.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/mypage.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="wrap" class="box-gray clearfix">

		<!-- 가게 헤더 -->
		<c:import url="/WEB-INF/views/includes/store-header.jsp"></c:import>

		<!-- contents -->
		<div id="contents" class="clearfix">
			<!-- aside-->
			<div id="aside">
				<ul>
					<li id="aside-top">마이페이지</li>
					<li><a href="https://www.naver.com/" class="link2">회원정보수정</a></li>
					<li><a href="https://www.naver.com/" class="link2">주소 등록/수정</a></li>
					<li><a href="https://www.naver.com/" class="link2">주문내역</a></li>
					<li><a href="https://www.naver.com/" class="link2">포인트 확인</a></li>
					<li><a href="https://www.naver.com/" class="link2">리뷰내역</a></li>
					<li><a href="https://www.naver.com/" class="link2">고객센터</a></li>
				</ul>
			</div>
			<!-- aside-->


			<div id="main">
				<div id="mypage">
					<div class="orderList">
						<div class="head_article">
							<h2 class="tit">주문 현황</h2>
						</div>
						<form action="" method="">
							<div class="orderList-box">
								<table class="tbl_list">
									<thead>
										<tr>
											<th>주문 날짜</th>
											<th>주문 가게</th>
											<th>주문 메뉴x수량</th>
											<th>주문 금액</th>
											<th>주문 상태</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>2022-02-18 19:00</td>
											<td>OO카페</td>
											<td>아메리카노x2</td>
											<td>7,000원</td>
											<td>예약중(2/4)
												<button class="btn btn_edit">수정</button>
											</td>
										</tr>
										<tr>
											<td>2022-02-18 19:00</td>
											<td>OO카페</td>
											<td>아메리카노x2</td>
											<td>7,000원</td>
											<td>주문요청</td>
										</tr>
										<tr>
											<td>2022-02-18 19:00</td>
											<td>OO카페</td>
											<td>아메리카노x2</td>
											<td>7,000원</td>
											<td>조리중</td>
										</tr>
										<tr>
											<td>2022-02-18 19:00</td>
											<td>OO카페</td>
											<td>아메리카노x2</td>
											<td>7,000원</td>
											<td>배달중</td>
										</tr>
									</tbody>
								</table>
							</div>
						</form>
					</div>
					<div class="orderList">
						<div class="head_article">
							<h2 class="tit">주문 내역</h2>
						</div>
						<form action="" method="">
							<div class="orderList-box">
								<table class="tbl_list">
									<thead>
										<tr>
											<th>주문 날짜</th>
											<th>주문 가게</th>
											<th>주문 메뉴x수량</th>
											<th>주문 금액</th>
											<th>주문 상태</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>2022-02-18 19:00</td>
											<td>OO카페</td>
											<td>아메리카노x2</td>
											<td>7,000원</td>
											<td>배달완료
												<button class="btn btn_review">리뷰작성</button>
											</td>
										</tr>
										<tr>
											<td>2022-02-18 19:00</td>
											<td>OO카페</td>
											<td>아메리카노x2</td>
											<td>7,000원</td>
											<td>배달완료
												<button class="btn btn_review">리뷰작성</button>
											</td>
										</tr>
										<tr>
											<td>2022-02-18 19:00</td>
											<td>OO카페</td>
											<td>아메리카노x2</td>
											<td>7,000원</td>
											<td>배달완료
												<button class="btn btn_review">리뷰작성</button>
											</td>
										</tr>
										<tr>
											<td>2022-02-18 19:00</td>
											<td>OO카페</td>
											<td>아메리카노x2</td>
											<td>7,000원</td>
											<td>배달완료</td>
										</tr>
									</tbody>
								</table>
							</div>
						</form>
					</div>
				</div>
			</div>

		</div>


		<!-- 푸터 -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	</div>
</body>