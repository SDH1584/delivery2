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
												<tr class="modalOrderDetail">
													<td>${orderListVo.order_date }</td>
													<td>${orderListVo.store_name }</td>
													<td>${orderListVo.final_pay }</td>
													<td><c:choose>
															<c:when test="${orderListVo.order_status == 0 }">
																예약중(${orderListVo.people }/6)
															</c:when>
															<c:when test="${orderListVo.order_status == 1 }">
																주문접수
															</c:when>
															<c:otherwise>
																배달중
															</c:otherwise>
														</c:choose>
														<button class="btn btn_edit">수정</button></td>
													<input type="text" id="pOrderNo" value="${orderListVo.p_order_no }">
												</tr>
											</c:if>
										</c:if>
									</c:forEach>
								</tbody>
							</table>
							<input type="text" id="no" value="${authUser.no }">
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

	<!-- 주문 상세 정보 모달창 -->
	<div id="orderModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">주문 상세 정보</h4>
				</div>
				<div class="modal-body">
					<div id="menuListArea"></div>
				</div>
				<div class="modal-footer">
					<button type="button" id="closeBtn">닫기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- //orderModal -->
</body>
<script type="text/javascript">
	// 주문상세 모달창 오픈
	$(".modalOrderDetail")
			.on(
					"click",
					function() {
						console.log("주문상세 모달창");

						var no = $("#no").val();
						var p_order_no = $("#pOrderNo").val();

						var orderListVo = {
							no : no,
							p_order_no : p_order_no
						}

						$
								.ajax({
									url : "${pageContext.request.contextPath }/mypage/orderList-detail",
									type : "post",
									data : orderListVo,
									dataType : "json",
									success : function(detailList) {
										console.log(detailList);
										menuInfo(detailList);
										$(detailList).each(function() {
											console.log(this.menu_name);
											console.log(this.count);

										});
									},
									error : function(XHR, status, error) {
										console.error(status + ":" + error);
									}
								});

						$("#orderModal").modal('show');
					});

	// 주문상세 모달창 그리기
	function menuInfo(detailList) {
		var str = '';
		str += '<table>';
		str += '	<tbody>';
		str += '		<tr>';
		str += '			<th>주문 가게</th>';
		str += '		</tr>';
		str += '		<tr>';
		str += '			<td>' + detailList[0].store_name + '</td>';
		str += '		</tr>';
		str += '		<tr>';
		str += '			<th>주문 번호</th>';
		str += '		</tr>';
		str += '		<tr>';
		str += '			<td>' + detailList[0].p_order_no + '</td>';
		str += '		</tr>';
		str += '		<tr>';
		str += '			<th>주문 일시</th>';
		str += '		</tr>';
		str += '		<tr>';
		str += '			<td>' + detailList[0].order_date + '</td>';
		str += '		</tr>';
		str += '		<tr>';
		str += '			<th>주문메뉴 x 수량</th>';
		str += '		</tr>';
		for (var i = 0; i < detailList.length; i++) {
			str += '<tr>';
			str += '	<td>' + detailList[i].menu_name;
			str += 'x' + detailList[i].count + '</td>';
			str += '</tr>'
		}
		str += '		<tr>';
		str += '			<th>결제 금액</th>';
		str += '		</tr>';
		str += '		<tr>';
		str += '			<td>' + detailList[0].final_pay + '</td>';
		str += '		</tr>';
		str += '		<tr>';
		str += '			<th>배달료</th>';
		str += '		</tr>';
		str += '		<tr>';
		str += '			<td>' + detailList[0].p_fee + '</td>';
		str += '		</tr>';
		str += '		<tr>';
		str += '			<th>결제방식</th>';
		str += '		</tr>';
		str += '		<tr>';
		str += '			<td>' + detailList[0].method + '</td>';
		str += '		</tr>';
		str += '	</tbody>';
		str += '</table>';

		$("#menuListArea").append(str);
	}

	// 닫기 버튼 클릭했을 때
	$("#closeBtn").on("click", function() {
		console.log("닫기 버튼 클릭");

		$("#orderModal").modal('hide');
	});
</script>