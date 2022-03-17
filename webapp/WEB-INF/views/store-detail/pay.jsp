<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="${pageContext.request.contextPath}/assets/css/total.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/store-detail/pay.css" rel="stylesheet">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
</head>
<body>
	<!-- wrap -->
	<div id="wrap" class="clearfix">

		<!-- 가게상세 해더 -->
		<c:import url="/WEB-INF/views/includes/customer-header.jsp"></c:import>

		<div id="container" class="clearfix">
			<h2>주문서</h2>

			<div id="order-menu">
				<h3>주문상품</h3>
				<table id="menu-table">


				</table>
			</div>
			<!-- order-menu -->

			<div id="delivery-info">
				<h3>배달 정보</h3>
				<table>
					<tr>
						<th>배달 주소</th>
						<td id="address"></td>
					</tr>
					<tr>
						<th>주문일시</th>
						<td id="orderDate"></td>
					</tr>
					<tr>
						<th>라이더님께</th>
						<td id="delReq"></td>
					</tr>
					<tr>
						<th>가게 사장님께</th>
						<td id="storeReq"></td>
					</tr>
				</table>
			</div>
			<!-- delivery-info -->

			<div id="pay" class="clearfix">
				<div id="point-method">
					<div id="point">
						<h3>포인트</h3>
						<table>
							<tr>
								<th>포인트 사용</th>
								<td>
									<div>
										<input type="text" id="input-point" placeholder="0" value="0">
										<button type="button" id="allPoint">모두사용</button>
									</div>
									<div>
										보유포인트: <span id="myPoint">${myPoint }</span>원
									</div>
									<p>· 보유포인트는 1천원 이상부터 사용 가능</p>
								</td>
							</tr>
						</table>
					</div>
					<!-- point -->

					<div id="method clearfix">
						<h3>결제 수단</h3>
						<table class="">
							<tr>
								<th>결제 수단 선택</th>
								<td>
									<div class="container">
										<ul class="tab_title">
											<li class="on">신용카드</li>
											<li>간편결제</li>
											<li>휴대폰</li>
										</ul>
										<div class="tab_cont">
											<div class="on">
												<select>
													<option>신한</option>
													<option>비씨</option>
													<option>KB국민</option>
													<option>삼성</option>
													<option>롯데</option>
													<option>하나</option>
													<option>NH채움</option>
													<option>우리</option>
													<option>수협</option>
													<option>씨티</option>
												</select> <br> <select>
													<option>일시불</option>
													<option>2개월</option>
													<option>3개월</option>
													<option>4개월</option>
													<option>5개월</option>
													<option>6개월</option>
													<option>7개월</option>
													<option>8개월</option>
													<option>9개월</option>
													<option>10개월</option>
													<option>11개월</option>
													<option>12개월</option>
												</select>
											</div>
											<div>
												<select>
													<option>차이</option>
													<option>토스</option>
													<option>네이버페이</option>
													<option>페이코</option>
													<option>스마일페이</option>
												</select>
											</div>
											<div></div>
										</div>
									</div>

								</td>
							</tr>
						</table>
					</div>
					<!-- method -->
				</div>
				<!-- point-method -->

				<div id="price">
					<h3>결제금액</h3>
					<table>
						<tbody>
							<tr>
								<th>주문금액</th>
								<td id="totalpay">
								<td>
							</tr>
							<tr>
								<th>배달료</th>
								<td id="fee">
								<td>
							</tr>
							<tr>
								<th>포인트사용</th>
								<td id="point-pay">
								<td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<th class="final-pay">최종결제금액</th>
								<td class="final-pay" id="final-pay">
								<td>
							</tr>
							<tr>
								<td colspan="2">구매 시 <span id="addPoint"></span>원(1%) 적립
								</td>
							</tr>
						</tfoot>
					</table>
				</div>
				<!-- price -->
			</div>
			<!-- pay -->

			<div id="last">
				<input type="checkbox" id="agree"><label for="agree">상기 구매 내역을 확인하였으며 개인정보 제공에 동의합니다.</label>
				<p>
					* 예약 상태에서는 가게 사정으로 예약이 취소 될 수 있습니다. <br> * 가게에서 주문 접수 후에는 예약 변경 및 취소 불가합니다.<br> * 예약 일시까지 인원이 충족되지 않으면 예약은 자동 취소됩니다.
				</p>
				<button type="button" id="btn-pay"></button>

			</div>
		</div>
		<!-- container -->

		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	</div>
	<!-- //wrap -->
</body>

<script type="text/javascript">
	var orderInfo = JSON.parse(localStorage.getItem('orderInfo'));
	console.log(orderInfo);
	var pointPay = parseInt($("#input-point").val());
	var addPoint = 0;
	var orderPrice = parseInt(orderInfo.finalPay);
	var fee = parseInt(orderInfo.fee);
	var method = 0;

	$(document).ready(function() {
		$("#address").text(orderInfo.address);
		$("#orderDate").text(orderInfo.orderDate);
		$("#delReq").text(orderInfo.deliveryReq);
		$("#storeReq").text(orderInfo.storeReq);
		$("#totalpay").text(orderPrice);
		$("#fee").text(fee);
		changeValues(); // 결제금액, 포인트 값 보이기
		fetctList(); // 주문메뉴 그리기
		methodSel(); //결제수단 그리기

	});

	/* 포인트 사용(직접값입력) */
	$("#input-point").keyup(function() {
		changeValues();
	});

	/* 포인트 모두사용 */
	$("#allPoint").on("click", function() {
		console.log("모두사용버튼");
		$("#input-point").val($("#myPoint").text());
		changeValues();

	});

	/* 결제하기 버튼 누름 */
	$("#btn-pay").on("click", function() {
		if ($("#agree").prop("checked")) {
			console.log("결제성공")
			
			orderInfo.addPoint = addPoint;
			orderInfo.pointPay = pointPay;
			orderInfo.method = method;
			console.log(orderInfo);
			
			$.ajax({

				/* 요청 */
				url : "${pageContext.request.contextPath }/store/"+orderInfo.storeNo+"/orderInfo"+orderInfo.attendVfy, //요청 보낼 주소		
				type : "post",
				contentType : "application/json",
				data : JSON.stringify(orderInfo), //자바스크립트 객체를 json 형식으로 변경

				/* 응답 */
				dataType : "json",
				success : function() {
					window.location.href="${pageContext.request.contextPath }/mypage/orderList-now";
					localStorage.clear();
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
				
			});
		} else {
			alert("결제 진행을 위해 결제 진행 필수 동의에 체크해주세요.")
		}
		
	});

	/* 주문메뉴 그리기 */
	function fetctList() {
		var str = ' '
		for (var i = 0; i < orderInfo.menuInfoArr.length; i++) {
			str += ' <tr>';
			str += ' 	<td class="menu">';
			str += ' 		<div class="menu-name">'
					+ orderInfo.menuInfoArr[i].menuName + '</div>';
			str += ' 		<div class="option">';
			var menuPrice = parseInt(orderInfo.menuInfoArr[i].menuPrice);
			for (var j = 0; j < orderInfo.menuInfoArr[i].optInfoArr.length; j++) {
				for (var k = 0; k < orderInfo.menuInfoArr[i].optInfoArr[j].selOptArr.length; k++) {
					str += ' +'
							+ orderInfo.menuInfoArr[i].optInfoArr[j].selOptArr[k].optionName;
					menuPrice += orderInfo.menuInfoArr[i].optInfoArr[j].selOptArr[k].optionPrice
				}
			}

			str += ' 		</div>';
			str += ' 	</td>';
			str += ' 	<td class="menu-cnt">x'
					+ orderInfo.menuInfoArr[i].orderCount + '</td>';
			str += ' 	<td class="menu-price">' + menuPrice
					* parseInt(orderInfo.menuInfoArr[i].orderCount) + '원</td>';
			str += ' </tr>';

		}

		$("#menu-table").append(str);
	}

	/* 사용포인트 따라 전체 금액 변경 */
	function changeValues() {
		pointPay = parseInt($("#input-point").val());
		$("#point-pay").text(pointPay);
		$("#final-pay").text(orderPrice + fee - pointPay);
		$("#btn-pay").text((orderPrice + fee - pointPay) + "원 결제하기");
		addPoint = (orderPrice + fee - pointPay) * 0.01
		$("#addPoint").text(Math.floor(addPoint));
	};

	/* 결제수단 선택 탭*/
	function methodSel() {
		$(".tab_title li").click(function() {
			var idx = $(this).index();
			$(".tab_title li").removeClass("on");
			$(".tab_title li").eq(idx).addClass("on");
			$(".tab_cont > div").hide();
			$(".tab_cont > div").eq(idx).show();
			method = idx;
		})
	};
</script>

</html>