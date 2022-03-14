<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/total.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/user/user.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/mypage.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/user-mypage/orderList.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

</head>
<body>
	<div id="wrap" class="box-gray clearfix">

		<!-- 사용자 헤더 -->
		<c:import url="/WEB-INF/views/includes/customer-header.jsp"></c:import>

		<!-- contents -->
		<div id="contents" class="clearfix">

			<!-- aside-->
			<div id="aside">
				<ul>
					<li id="aside-top">마이페이지</li>
					<li><a href="${pageContext.request.contextPath}/mypage/editForm" class="link2">회원정보수정</a></li>
					<li><a href="${pageContext.request.contextPath}/mypage/address" class="link2">주소 등록/수정</a></li>
					<li><a href="${pageContext.request.contextPath}/mypage/orderList-now">주문현황</a></li>
					<li><a href="${pageContext.request.contextPath}/mypage/orderList-old">주문내역</a></li>
					<li><a href="${pageContext.request.contextPath}/mypage/point" class="link2">포인트 확인</a></li>
					<li><a href="${pageContext.request.contextPath}/mypage/review" class="link2">리뷰내역</a></li>
					<li><a href="${pageContext.request.contextPath}/mypage/inquiryList" class="link2">고객센터</a></li>
				</ul>
			</div>
			<!-- aside-->

			<div id="main">
				<div id="mypage">
					<div class="orderList">
						<div class="head_article">
							<h2 class="tit">주문 현황</h2>
						</div>
						<div class="orderList-box">
							<table class="tbl_list">
								<thead>
									<tr>
										<th>주문 날짜</th>
										<th>주문 가게</th>
										<th>주문 금액</th>
										<th>주문 상태</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${orderList }" var="orderListVo">
										<c:if test="${orderListVo.order_status != 2}">
											<c:if test="${orderListVo.order_status != 4 }">
												<tr class="modalOrderList">
													<td>${orderListVo.order_date }</td>
													<td>${orderListVo.store_name }</td>
													<td>${orderListVo.final_pay }</td>
													<td><c:choose>
															<c:when test="${orderListVo.order_status == 0 }">
																예약중
															</c:when>
															<c:when test="${orderListVo.order_status == 1 }">
																주문접수
															</c:when>
															<c:otherwise>
																배달중
															</c:otherwise>
														</c:choose>
														<button class="btn btn_edit">수정</button></td>
												</tr>
											</c:if>
										</c:if>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- //orderList-box -->
					</div>
					<!-- //orderList -->
				</div>
				<!-- //mypage -->
			</div>
			<!-- //main -->
		</div>
		<!-- //contents -->
		
		<!-- 푸터 -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	</div>
	<!-- //wrap -->
</body>