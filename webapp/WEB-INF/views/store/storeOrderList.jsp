<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/main.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/store-order-list.css" rel="stylesheet">

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
				<h2>황소곱창 서울대점</h2>
			</div>
			
			<div id=select-period class="clearfix">
				<h3>기간별 조회</h3>
				<ul>
					<li><a href="">1주일</a></li>
					<li><a href="">15일</a></li>
					<li><a href="">1개월</a></li>
				</ul>
				
				<ul>
					<li><a href="">1월</a></li>
					<li><a href="">12월</a></li>
					<li><a href="">11월</a></li>
					<li><a href="">10월</a></li>
					<li><a href="">9월</a></li>
				</ul>
				<form action="" method="post">
					<ul>
						<li><input type="text" name="sDate" value="" placeholder="2022-02-10"></li>
						<li id="dash">~</li>
						<li><input type="text" name="lDate" value="" placeholder="2022-02-16"></li>
					</ul>
				</form>
				<button type="submit">조회하기</button>
			</div>

			<div id="total-sales">
				<h3>구매 유형별 매출(22/02/10~22/02/16)</h3>
				<table>
					<thead>
						<tr>
							<th>구분</th>
							<th>매출금액</th>
							<th>주문건수</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1인구매</td>
							<td>3,500,000원</td>
							<td>175</td>
						</tr>

						<tr>
							<td>공동구매</td>
							<td>9,000,000원</td>
							<td>150</td>
						</tr>

						<tr class="last">
							<td>총합계</td>
							<td>12,500,000원</td>
							<td>325</td>
						</tr>
					</tbody>
				</table>
				<h3>메뉴별 매출(22/02/10~22/02/16)</h3>
				<table>
					<thead>
						<tr>
							<th>메뉴</th>
							<th>매출금액</th>
							<th>판매인분</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>모듬한판</td>
							<td>5,550,000원</td>
							<td>185</td>
						</tr>

						<tr>
							<td>곱창</td>
							<td>2,185,000</td>
							<td>115</td>
						</tr>
						
						<tr>
							<td>한우 소곱창 모듬전골</td>
							<td>5,550,000원</td>
							<td>185</td>
						</tr>

						<tr>
							<td>맛있는 한우 곱창 +염통세트</td>
							<td>2,185,000</td>
							<td>115</td>
						</tr>
						<tr>
							<td>모듬한판</td>
							<td>5,550,000원</td>
							<td>185</td>
						</tr>

						<tr>
							<td>곱창</td>
							<td>2,185,000</td>
							<td>115</td>
						</tr>
						<tr>
							<td>모듬한판</td>
							<td>5,550,000원</td>
							<td>185</td>
						</tr>

						<tr class="last">
							<td>곱창</td>
							<td>2,185,000</td>
							<td>115</td>
						</tr>
						
					</tbody>
				</table>
			</div>
			<div id="order-list">
				<h3>지난 주문(22/02/10~22/02/16)</h3>
				<table>
					<thead>
						<tr>
							<th>주문번호</th>
							<th colspan="2">주문 예약 일시</th>
							<th>인원</th>
							<th>배달지</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>TSD1234567</td>
							<td>2/16</td>
							<td>17:00</td>
							<td>6명</td>
							<td>서울시 관악구 남주순환로 1848</td>
						</tr>
						<tr>
							<td>TSD1234567</td>
							<td>2/16</td>
							<td>17:00</td>
							<td>6명</td>
							<td>서울시 관악구 남주순환로 1848</td>
						</tr>
						<tr>
							<td>TSD1234567</td>
							<td>2/16</td>
							<td>17:00</td>
							<td>6명</td>
							<td>서울시 관악구 남주순환로 1848</td>
						</tr>
						<tr>
							<td>TSD1234567</td>
							<td>2/16</td>
							<td>17:00</td>
							<td>6명</td>
							<td>서울시 관악구 남주순환로 1848</td>
						</tr>
						<tr>
							<td>TSD1234567</td>
							<td>2/16</td>
							<td>17:00</td>
							<td>6명</td>
							<td>서울시 관악구 남주순환로 1848</td>
						</tr>
						<tr>
							<td>TSD1234567</td>
							<td>2/16</td>
							<td>17:00</td>
							<td>6명</td>
							<td>서울시 관악구 남주순환로 1848</td>
						</tr>
						<tr>
							<td>TSD1234567</td>
							<td>2/16</td>
							<td>19:00</td>
							<td>6명</td>
							<td>서울시 관악구 남주순환로 1848</td>
						</tr>
						<tr>
							<td>TSD1234567</td>
							<td>2/17</td>
							<td>19:00</td>
							<td>6명</td>
							<td>서울시 관악구 남주순환로 1848</td>
						</tr>
						<tr class="last">
							<td>TSD1234567</td>
							<td>2/18</td>
							<td>17:00</td>
							<td>6명</td>
							<td>서울시 관악구 남주순환로 1848</td>
						</tr>
					</tbody>

				</table>
			</div>

		</div>
		<!-- //container -->

		<!-- footer -->
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
	/* 예약 막기 */
	$("#prevent").on("click", function() {
		console.log("막기 클릭");
		$("#preventModal").modal('show');
	});

	/* 주문 상세내용 */
	$("tr").on("click", function() {
		console.log("테이블 클릭")
		$("#detailModal").modal('show');
	});
</script>
</html>