<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/store-detail/store-detail-header.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/store-detail/order-change-host.css" rel="stylesheet">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
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
				<li id="description"><a href="">가게상세정보</a></li>
				<li id="review"><a href="">리뷰</a></li>
			</ul>
		</div>
		<!-- //store menu -->


		<!-- container -->
		<div id="container" class="clearfix">

			<div id="menu">

				<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
					<div class="panel panel-default">
						<div class="panel-heading clearfix" role="tab" id="headingOne">
							<h4 class="panel-title">
								<span class="menu-group"> 세트 메뉴 </span> <a class="menu-collapse" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne"> ∨ </a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
							<div class="menu-box clearfix">
								<div class="menu-letter">
									<div class="menu-name">앵그리트러플와퍼 세트</div>
									<div class="menu-desc">황홀한 풍미 속 강렬한 매콤함 앵그리 트러플 와퍼...</div>
								</div>
								<div class="menu-img">
									<img src="./menu.jpg" width="70px" height="78px">
								</div>
								<div class="menu-price">10,500원</div>
							</div>
							<!-- menu-box -->

							<div class="menu-box clearfix">
								<div class="menu-letter">
									<div class="menu-name">앵그리트러플와퍼 세트</div>
									<div class="menu-desc">황홀한 풍미 속 강렬한 매콤함 앵그리 트러플 와퍼 ...</div>
								</div>
								<div class="menu-img">
									<img src="./menu.jpg" width="70px" height="70px">
								</div>
								<div class="menu-price">10,500원</div>
							</div>
							<!-- menu-box -->

							<div class="menu-box clearfix">
								<div class="menu-letter">
									<div class="menu-name">앵그리트러플와퍼 세트</div>
									<div class="menu-desc">황홀한 풍미 속 강렬한 매콤함 앵그리 트러플 와퍼 ...</div>
								</div>
								<div class="menu-img">
									<img src="./menu.jpg" width="70px" height="70px">
								</div>
								<div class="menu-price">10,500원</div>
							</div>
							<!-- menu-box -->

							<div class="menu-box clearfix  last">
								<div class="menu-letter">
									<div class="menu-name">앵그리트러플와퍼 세트</div>
									<div class="menu-desc">황홀한 풍미 속 강렬한 매콤함 앵그리 트러플 와퍼 ...</div>
								</div>
								<div class="menu-img">
									<img src="./menu.jpg" width="70px" height="70px">
								</div>
								<div class="menu-price">10,500원</div>
							</div>
							<!-- menu-box -->
						</div>

					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingTwo">
							<h4 class="panel-title clearfix">
								<span class="menu-group"> 단품 메뉴 </span> <a class="menu-collapse" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo"> ∨ </a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
							<div class="menu-box clearfix">
								<div class="menu-letter">
									<div class="menu-name">앵그리트러플와퍼 세트</div>
									<div class="menu-desc">황홀한 풍미 속 강렬한 매콤함 앵그리 트러플 와퍼...</div>
								</div>
								<div class="menu-img">
									<img src="./menu.jpg" width="70px" height="78px">
								</div>
								<div class="menu-price">10,500원</div>
							</div>
							<!-- menu-box -->

							<div class="menu-box clearfix">
								<div class="menu-letter">
									<div class="menu-name">앵그리트러플와퍼 세트</div>
									<div class="menu-desc">황홀한 풍미 속 강렬한 매콤함 앵그리 트러플 와퍼 ...</div>
								</div>
								<div class="menu-img">
									<img src="./menu.jpg" width="70px" height="70px">
								</div>
								<div class="menu-price">10,500원</div>
							</div>
							<!-- menu-box -->

							<div class="menu-box clearfix">
								<div class="menu-letter">
									<div class="menu-name">앵그리트러플와퍼 세트</div>
									<div class="menu-desc">황홀한 풍미 속 강렬한 매콤함 앵그리 트러플 와퍼 ...</div>
								</div>
								<div class="menu-img">
									<img src="./menu.jpg" width="70px" height="70px">
								</div>
								<div class="menu-price">10,500원</div>
							</div>
							<!-- menu-box -->

							<div class="menu-box clearfix last">
								<div class="menu-letter">
									<div class="menu-name">앵그리트러플와퍼 세트</div>
									<div class="menu-desc">황홀한 풍미 속 강렬한 매콤함 앵그리 트러플 와퍼 ...</div>
								</div>
								<div class="menu-img">
									<img src="./menu.jpg" width="70px" height="70px">
								</div>
								<div class="menu-price">10,500원</div>
							</div>
							<!-- menu-box -->
						</div>
					</div>

					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingThree">
							<h4 class="panel-title clearfix">
								<span class="menu-group"> 스페셜 메뉴 </span> <a class="menu-collapse" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree"> ∨ </a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
							<div class="menu-box clearfix">
								<div class="menu-letter">
									<div class="menu-name">앵그리트러플와퍼 세트</div>
									<div class="menu-desc">황홀한 풍미 속 강렬한 매콤함 앵그리 트러플 와퍼...</div>
								</div>
								<div class="menu-img">
									<img src="./menu.jpg" width="70px" height="78px">
								</div>
								<div class="menu-price">10,500원</div>
							</div>
							<!-- menu-box -->

							<div class="menu-box clearfix">
								<div class="menu-letter">
									<div class="menu-name">앵그리트러플와퍼 세트</div>
									<div class="menu-desc">황홀한 풍미 속 강렬한 매콤함 앵그리 트러플 와퍼 ...</div>
								</div>
								<div class="menu-img">
									<img src="./menu.jpg" width="70px" height="70px">
								</div>
								<div class="menu-price">10,500원</div>
							</div>
							<!-- menu-box -->

							<div class="menu-box clearfix">
								<div class="menu-letter">
									<div class="menu-name">앵그리트러플와퍼 세트</div>
									<div class="menu-desc">황홀한 풍미 속 강렬한 매콤함 앵그리 트러플 와퍼 ...</div>
								</div>
								<div class="menu-img">
									<img src="./menu.jpg" width="70px" height="70px">
								</div>
								<div class="menu-price">10,500원</div>
							</div>
							<!-- menu-box -->

							<div class="menu-box clearfix last">
								<div class="menu-letter">
									<div class="menu-name">앵그리트러플와퍼 세트</div>
									<div class="menu-desc">황홀한 풍미 속 강렬한 매콤함 앵그리 트러플 와퍼 ...</div>
								</div>
								<div class="menu-img">
									<img src="./menu.jpg" width="70px" height="70px">
								</div>
								<div class="menu-price">10,500원</div>
							</div>
							<!-- menu-box -->
						</div>
					</div>
				</div>


			</div>



			<div id="order">
				<form action="">
					<table id="order-detail">
						<tr>
							<th>예약 마감(주문 시간)</th>
							<td colspan="3">2월 19일 19:30</td>
						</tr>
						<tr>
							<th>최대 주문가능 수량</th>
							<td colspan="3">2/10인분</td>
						</tr>
						<tr>
							<th>현재 참여 인원</th>
							<td colspan="3">2/5</td>
						</tr>
						<tr>
							<th>주문 금액</th>
							<td colspan="3">23,000 / 25,000</td>
						</tr>
						<tr>
							<th>배달료</th>
							<td colspan="3">3,000</td>
						</tr>
					</table>
					<div id="order-menu-box">
						<table id="order-menu-table">
							<tbody>
								<tr>
									<td class="delete">
										<button class="del-btn">x</button>
									</td>
									<td class="order-menu">기네스 몬스터 와퍼 세트<br>(+사이다 + 치즈감자)
									</td>
									<td class="order-price">11,000원</td>
								</tr>
								<tr>
									<td class="delete">
										<button class="del-btn">x</button>
									</td>
									<td class="order-menu">기네스 몬스터 와퍼</td>
									<td class="order-price">9,000원</td>
								</tr>
								<tr>
									<td></td>
									<td class="order-menu">개인 배달료</td>
									<td class="order-price">+600원</td>
								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td></td>
									<td class="order-menu">결제예정금액</td>
									<td class="order-price">20,600원</td>
								</tr>
							</tfoot>
						</table>
					</div>

					<div id="order-delivery">
						<div class="order-deli">배달 주소</div>
						<div class="order-deli">서울시 관악구 남부순환로 1820 302호</div>
						<div class="order-deli">
							<button type="button" id="adress-change">배달 주소 변경</button>
						</div>
						<div class="order-deli">가게 사장님께</div>
						<div class="order-deli">
							<input type="text" name="store-require" value="">
						</div>
						<div class="order-deli">라이더님께</div>
						<div class="order-deli">
							<input type="text" name="store-require" value="">
						</div>
					</div>

					<button type="submit">예약 수정</button>
				</form>

			</div>

		</div>
		<!-- //container -->

		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- //footer -->

	</div>
	<!-- //wrap -->

	<!-- 메뉴 상세 모달 -->
	<div id="menuModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content clearfix">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">메뉴 상세</h4>
				</div>

				<div class="modal-body">
					<img src="./menu.jpg" width="100px" height="100px">
					<h5>와퍼 세트</h5>
					<p>
						리얼 와퍼 ＋ 프렌치프라이R ＋ 콜라R <br> 버거킹 대표 메뉴
					</p>
					<table>
						<thead>
							<tr>
								<th>가격</th>
								<td>9,600원</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th colspan="2">음료 변경</th>
							</tr>
							<tr>
								<td><input type="radio" name="r-option1" value="콜라" checked="checked"><label>콜라</label></td>
								<td>+0</td>
							</tr>
							<tr>
								<td><input type="radio" name="r-option1" value="사이다"><label>사이다</label></td>
								<td>+0</td>
							</tr>
							<tr>
								<td><input type="radio" name="r-option1" value="콜라l"><label>콜라 사이즈업</label></td>
								<td>+500</td>
							</tr>
							<tr>
								<td><input type="radio" name="r-option1" value="사이다l"><label>사이다 사이즈업</label></td>
								<td>+500</td>
							</tr>
							<tr>
								<th colspan="2">사이드 변경</th>
							</tr>
							<tr>
								<td><input type="radio" name="r-option2" value="감자튀김" checked="checked"><label>감자튀김</label></td>
								<td>+0</td>
							</tr>
							<tr>
								<td><input type="radio" name="r-option2" value="감자튀김l"><label>감자튀김 사이즈업</label></td>
								<td>+500</td>
							</tr>
							<tr>
								<td><input type="radio" name="r-option1" value="치즈감자"><label>치즈감자</label></td>
								<td>+2000</td>
							</tr>
							<tr>
								<th colspan="2">사이드 추가</th>
							</tr>
							<tr>
								<td><input type="checkbox" name="c-option1" value="치즈스틱"><label>치즈스틱</label></td>
								<td>+2000</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="c-option1" value="치킨너겟"><label>치킨너겟</label></td>
								<td>+4000</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="c-option1" value="어니언링"><label>어니언링</label></td>
								<td>+3500</td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<th>수량</th>
								<td><input type='button' onclick='count2("minus")' value='-' class="btn-xs" /> <span id="result2">1</span> <input type='button' onclick='count2("plus")' value='+' class="btn-xs" /></td>
							</tr>
							<tr>
								<th>주문금액</th>
								<td>12000원</td>
							</tr>
						</tfoot>
					</table>
					<button type="button" class="btn-default btn-lg">주문표에 추가</button>

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
	/* 참여인원 증감 */
	function count(type) {
		// 결과를 표시할 element
		const resultElement = document.getElementById('result');

		// 현재 화면에 표시된 값
		let number = resultElement.innerText;

		// 더하기/빼기
		if (type === 'plus') {
			number = parseInt(number) + 1;
		} else if (type === 'minus') {
			if (number === '1') {
				number = parseInt(number);
			} else {
				number = parseInt(number) - 1;
			}
		}

		// 결과 출력
		console.log(number);
		resultElement.innerText = number;
	}

	/* 수량 증감 */
	function count2(type) {
		// 결과를 표시할 element
		const resultElement = document.getElementById('result2');

		// 현재 화면에 표시된 값
		let number = resultElement.innerText;

		// 더하기/빼기
		if (type === 'plus') {
			number = parseInt(number) + 1;
		} else if (type === 'minus') {
			if (number === '1') {
				number = parseInt(number);
			} else {
				number = parseInt(number) - 1;
			}
		}

		// 결과 출력
		console.log(number);
		resultElement.innerText = number;
	}

	/* 메뉴 상세 */
	$(".menu-box").on("click", function() {
		console.log("메뉴 클릭")
		$("#menuModal").modal('show');
	});
</script>


</html>