<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/total.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/store/store-main.css" rel="stylesheet">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

</head>
<body>
	<div id="wrap" class="box-gray clearfix">


		<!-- 가게 헤더 -->
		<c:import url="/WEB-INF/views/includes/store-header.jsp"></c:import>

		<div id="container" class="clearfix">
			<!-- container -->

			<div id="store-name" class="clearfix">
				<h2>${map.bizVo.storeName}</h2>
				<c:choose>
					<c:when test="${map.bizVo.onOff==0 }">
						<button type="button" class="storeOnOff"><span class="onOffText">가게 올리기</span></button>
					</c:when>
					<c:otherwise>
						<button type="button" class="storeOnOff"><span class="onOffText">가게 내리기</span></button>
					</c:otherwise>
				</c:choose>
			</div>

			<div id="reserve-list">
				<h3>주문 예약 내역</h3>
				<button id="prevent" type="button" class="btn-default btn-sm">예약 막기</button>
				<br>

				<table>
					<thead>
						<tr>
							<th>주문번호</th>
							<th colspan="2">주문 처리</th>
							<th>주문 예약 일시</th>
							<th>참여 인원</th>
							<th>배달지</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${map.orderList}" var="orderVo">
							<c:if test="${orderVo.orderStatus==0 }">
								<c:choose>
									<c:when test="${orderVo.redText==1 }">
										<tr class="red" data-no="${orderVo.orderNo}">
									</c:when>
									<c:otherwise>
										<tr data-no="${orderVo.orderNo}">
									</c:otherwise>
								</c:choose>
								<td>${orderVo.orderNo}</td>
								<c:choose>
									<c:when test="${orderVo.people==orderVo.countPeople}">
										<td class="td-btn">
											<button type="button" class="btn-agree btn-primary btn-sm" data-no="${orderVo.orderNo}">승인</button>
										</td>
									</c:when>
									<c:otherwise>
										<td></td>
									</c:otherwise>
								</c:choose>
								<td class="td-btn">
									<button type="button" class="btn-reject btn-danger btn-sm" data-no="${orderVo.orderNo}">거부</button>
								</td>
								<td>${orderVo.orderDate}</td>
								<td>${orderVo.countPeople}명/${orderVo.people}명</td>
								<td class="address">${orderVo.deliveryMAdr }&nbsp;${orderVo.deliverySAdr }</td>
								</tr>
							</c:if>
						</c:forEach>




					</tbody>
				</table>
			</div>
			<div id="order-list">
				<h3>승인 주문 내역</h3>
				<table>
					<thead>
						<tr>
							<th>주문번호</th>
							<th>주문 처리</th>
							<th>주문 예약 일시</th>
							<th>인원</th>
							<th>배달지</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${map.orderList}" var="orderVo">
							<c:if test="${orderVo.orderStatus==1 || orderVo.orderStatus==3 }">
								<c:choose>
									<c:when test="${orderVo.redText==1 }">
										<tr class="red" data-no="${orderVo.orderNo}">
									</c:when>
									<c:otherwise>
										<tr data-no="${orderVo.orderNo}">
									</c:otherwise>
								</c:choose>
								<td>${orderVo.orderNo}</td>
								<c:choose>
									<c:when test="${orderVo.orderStatus==1}">
										<td class="td-btn">
											<button type="button" class="btn-deliver btn-default btn-sm" data-no="${orderVo.orderNo}">배달원 전달 완료</button>
										</td>
									</c:when>
									<c:otherwise>
										<td class="td-btn">
											<button type="button" class="btn-complete btn-success btn-sm" data-no="${orderVo.orderNo}">배달 완료</button>
										</td>
									</c:otherwise>
								</c:choose>
								<td>${orderVo.orderDate}</td>
								<td>${orderVo.countPeople}명/${orderVo.people}명</td>
								<td class="address">${orderVo.deliveryMAdr }&nbsp;${orderVo.deliverySAdr }</td>
								</tr>
							</c:if>
						</c:forEach>

					</tbody>

				</table>
			</div>

		</div>
		<!-- //container -->


		<!-- 개인블로그 푸터-->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	</div>
	<!-- //wrap -->


	<!-- 달력 모달 -->
	<div id="preventModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">예약 막기</h4>
				</div>

				<div class="modal-body">달력</div>

			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.달력 modal -->

	<!-- 주문 상세 모달 -->
	<div id="detailModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content clearfix">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">주문 상세 내역</h4>
				</div>

				<div class="modal-body clearfix">
					<div id="detail-total" class="float-l">
						<button type="button" class="btn-primary btn-sm">승인</button>
						<button type="button" class="btn-danger btn-sm">거부</button>
						<table>
							<tr>
								<th>주문번호</th>
								<td>TSD1234567</td>
							</tr>

							<tr>
								<th>주문일시</th>
								<td>2/16(수) 17:00</td>
							</tr>

							<tr>
								<th>배달지</th>
								<td>서울시 관악구 서울대입구로 466 1302호</td>
							</tr>
						</table>

						<table>
							<caption>주문 총합</caption>
							<tbody>
								<tr>
									<td>모듬 한판<br>(+염통추가)
									</td>
									<td>x1</td>
								</tr>
								<tr>
									<td>모듬 한판</td>
									<td>x1</td>
								</tr>
								<tr>
									<td>곱창</td>
									<td>x1</td>
								</tr>
								<tr>
									<td>막창</td>
									<td>x1</td>
								</tr>
								<tr>
									<td>볶음밥</td>
									<td>x1</td>
								</tr>
								<tr>
									<td>콜라</td>
									<td>x1</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td>합계</td>
									<td>x6</td>
								</tr>
							</tfoot>
						</table>
					</div>
					<!-- detail-total -->

					<div id="detail-each" class="float-l">
						<h5>개별 주문 내역</h5>
						<table>
							<caption>id:hej***</caption>
							<tr>
								<td>모듬 한판 <br> (+염통추가)
								</td>
								<td>x1</td>
							</tr>
							<tr>
								<td>가게 사장님께</td>
								<td>떡은 빼주세요</td>
							</tr>
							<tr>
								<td>라이더님께</td>
								<td>건물 1층에 두고 전화 주세요</td>
							</tr>
						</table>

						<table>
							<caption>id:csj****</caption>
							<tr>
								<td>곱창</td>
								<td>x1</td>
							</tr>
							<tr>
								<td>볶음밥</td>
								<td>x1</td>
							</tr>
						</table>

						<table>
							<caption>id:lee****</caption>
							<tr>
								<td>막창</td>
								<td>x1</td>
							</tr>
							<tr>
								<td>콜라</td>
								<td>x1</td>
							</tr>
							<tr>
								<td>가게 사장님께</td>
								<td>막창 잘 익혀주세요</td>
							</tr>
						</table>
						<table>
							<caption>id:kan***</caption>
							<tr>
								<td>모듬한판</td>
								<td>x1</td>
							</tr>
						</table>

					</div>
					<!-- detail-each -->

				</div>
				<!-- modal-body -->

				<div class="modal-footer"></div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.주문 상세modal -->
</body>

<script type="text/javascript">

	/* 주문상태변경 버튼 클릭 */
	$(".btn-agree").on("click", function(e) {
		e.stopPropagation();
		console.log("승인버튼 클릭");
		var no = $(this).data("no");
		codeChange(1,no);
	});
	$(".btn-reject").on("click", function(e) {
		e.stopPropagation()
		console.log("거부버튼 클릭");
		var no = $(this).data("no");
		codeChange(2,no);
	});
	$(".btn-deliver").on("click", function(e) {
		e.stopPropagation()
		console.log("전달완료 클릭");
		var no = $(this).data("no");
		codeChange(3,no);
	});
	$(".btn-complete").on("click", function(e) {
		e.stopPropagation()
		console.log("배달완료버튼 클릭");
		var no = $(this).data("no");
		codeChange(4,no);
	});

	/* 예약 막기 */
	$("#prevent").on("click", function() {
		console.log("막기 클릭");
		$("#preventModal").modal('show');
	});

	/* 주문 상세내용 */
	$("tr").on("click", function() {
		console.log("테이블 클릭")
		var $this = $(this);
		var no = $this.data("no");
		console.log(no);
		$("#detailModal").modal('show');
	});

	/* 자동새로고침-1분 */
	//setTimeout("location.reload()",60000);

	/* 처리해야 할 리스트만 빨간글씨 */
	$(".red").css("color", "red");

	/* 가게 on/off 설정 */
	$(".storeOnOff").on("click", function() {
		console.log("가게올리기/내리기 클릭")
		var onOffText;		

		$.ajax({

			/* 요청 */
			url : "${pageContext.request.contextPath }/admin/storeOnOff", 	
			type : "post",
			
 			/* 응답 */
			dataType : "json",
			success : function(bizVo) {
				/*성공시 처리해야될 코드 작성*/
				//console.log(bizVo);
				var code = bizVo.onOff;
				console.log(code);
				if(code=='1'){
					onOffText = '가게 내리기'
				} else {
					onOffText = '가게 올리기'
				}
				console.log(onOffText);
				document.getElementsByClassName('onOffText')[0].innerText = onOffText;
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});

	});
	
	/* 주문상태 코드변경 */
	function codeChange(code, no){
		console.log(code);
		console.log(no);
	
		$.ajax({

			/* 요청 */
			url : "${pageContext.request.contextPath }/admin/orderStatus", //요청 보낼 주소		
			type : "post",
			data : {orderStatus:code, orderNo:no}, //여기다가 객체 써도 됨. 위에서 객체로 이미 묶어줘서 객체명만 씀.

			/* 응답 */
			success : function(result) {
				/*성공시 처리해야될 코드 작성*/
				window.location.href="${pageContext.request.contextPath }/admin/main"

			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	};

</script>

</html>