<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>

<link href="${pageContext.request.contextPath}/assets/datetimepicker/jquery.datetimepicker.css" rel="stylesheet" >
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/store-detail/store-detail-header.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/store-detail/customer-order.css" rel="stylesheet">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/datetimepicker/build/jquery.datetimepicker.full.min.js"></script>
</head>



<body>
	<!-- wrap -->
	<div id="wrap" class="box-gray clearfix">

		<!-- 가게상세 해더 -->
		<c:import url="/WEB-INF/views/includes/store-detail-header.jsp"></c:import>

		<div class="store-menu">
			<ul class="clearfix">
				<li class="sel-menu"><a id="sel-menu" href="${pageContext.request.contextPath}/store/${map.bizVo.storeNo}/orderFirst">메뉴</a></li>
				<li id="resv-list"><a href="${pageContext.request.contextPath}/store/${map.bizVo.storeNo}/reserve">예약리스트</a></li>
				<li id="description"><a href="${pageContext.request.contextPath}/store/${map.bizVo.storeNo}/description">가게상세정보</a></li>
				<li id="review"><a href="${pageContext.request.contextPath}/store/${map.bizVo.storeNo}/review">리뷰</a></li>
			</ul>
		</div>
		<!-- //store menu -->

		<!-- container -->
		<div id="container" class="clearfix">

			<div id="menu">

				<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
					<c:forEach items="${map.menuCateList}" var="menuCateVo">
						<div class="panel panel-default">
							<div class="panel-heading clearfix" role="tab" id="heading${menuCateVo.menuCateNo }">
								<h4 class="panel-title">
									<span class="menu-group"> ${menuCateVo.menuCateName} </span> <a class="menu-collapse" data-toggle="collapse" data-parent="#accordion" href="#collapse${menuCateVo.menuCateNo }" aria-expanded="true" aria-controls="collapse${menuCateVo.menuCateNo }"> ∨ </a>
								</h4>
							</div>
							<div id="collapse${menuCateVo.menuCateNo }" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="heading${menuCateVo.menuCateNo }">
								<c:forEach items="${map.menuList}" var="menuVo">
									<c:if test="${menuCateVo.menuCateNo == menuVo.menuCateNo}">
										<div class="menu-box clearfix" data-no="${menuVo.menuNo}">
											<div class="menu-letter">
												<div class="menu-name">${menuVo.menuName}</div>
												<div class="menu-desc">${menuVo.menuDesc}</div>
											</div>
											<div class="menu-img">
												<img src="${menuVo.menuImg }" width="70px" height="78px" onerror="this.style.display='none'">
											</div>
											<div class="menu-price">
												<fmt:formatNumber value="${menuVo.menuPrice }" pattern="#,###" />
											</div>
										</div>
										<!-- menu-box -->
									</c:if>
								</c:forEach>

							</div>
							<!-- collapse -->
						</div>
						<!-- panel -->
					</c:forEach>
				</div>
				<!-- panel group -->
			</div>
			<!-- menu -->

			<div id="order">
				<c:choose>
					<c:when test="${empty sessionScope.authUser}">
						<div id="beforeLogin">
							<p>주문 진행을 위해 로그인이 필요합니다.</p>
							<a href="${pageContext.request.contextPath}/user/loginForm">로그인하기</a>
						</div>
					</c:when>
					<c:otherwise>
						<table id="order-detail">
							<tr>
								<th>참여인원</th>
								<td colspan="3"><span id="countPeople">${map.orderVo.countPeople +1 }</span>/<span id="people">${map.orderVo.people }</span></td>
							</tr>
							<tr>
								<th>주문 금액</th>
								<td colspan="3"><span id ="total-price2">${map.orderVo.finalPaySum }</span> / <span id="min-price">${map.bizVo.minPrice }</span></td>
							</tr>
							
						</table>
						<div id="order-menu-box">
							<table id="order-menu-table">
								<tbody id="selMenuArea">

								</tbody>
								<tfoot>
									<tr>
										<th>개인 배달료</th>
										<td id="fee">${map.orderVo.pFee }</td>
									</tr>
									<tr>
										<th>결제예정금액</th>
										<td id="total-price">0</td>
									</tr>
								</tfoot>
							</table>
						</div>

						<div id="order-delivery">
							<div>
								<span class="order-deli">주문 일시 :</span>
								<span class="order-deli">${map.orderVo.orderDate }</span>
							</div>
							<div>
								<span class="order-deli">배달 주소 :</span>
								<span class="order-deli" id="deliveryAdr">${map.orderVo.deliveryMAdr }</span>
					
							</div>
							
							<div class="order-deli">가게 사장님께</div>
							<div class="order-deli">
								<input type="text" name="store-require" value="">
							</div>
						</div>


						<div id="order-btn">
							<button type="button" class="btn-ordering">예약 참여</button>
						</div>
					</c:otherwise>
				</c:choose>


			</div>
		</div>
		<!-- //container -->

		<!-- 푸터 -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

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

				<div class="modal-body" id="optionListArea"></div>
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
	var optionCateList ;
	var menuInfoArr = [];
	var totalPrice=0;
	var finalPrice=0;
	var finalPaySum=parseInt(document.getElementById('total-price2').innerText);

	/* 수량 증감 */
	function count2(type) {
		// 결과를 표시할 element
		const resultElement = document.getElementById('result2');

		// 현재 화면에 표시된 값
		let number = resultElement.innerText;

		// 더하기/빼기
		if (type === 'plus') {
			if(number==='6'){
				number = parseInt(number);	
			} else {
				number = parseInt(number) + 1;	
			}
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

	/* 메뉴 상세 모달 ajax 데이터 받아오기*/
	$(".menu-box").on("click", function() {
		$("#optionListArea").empty()
		console.log("메뉴 클릭")
		var no = $(this).data("no");
		console.log(no);
		var menuOptionVo = {storeNo : ${map.bizVo.storeNo}, menuNo:no};
		$.ajax({

			/* 요청 */
			url : "${pageContext.request.contextPath }/store/${map.bizVo.storeNo}/optionList", //요청 보낼 주소		
			type : "post",
			contentType : "application/json",
			data : JSON.stringify(menuOptionVo), //자바스크립트 객체를 json 형식으로 변경

			/* 응답 */
			dataType : "json",
			success : function(map) {
				/*성공시 처리해야될 코드 작성*/
				console.log(map);
				menuInfo(map);
				
				optionCateList = map.optionCateList
								
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
			
		});

		$("#menuModal").modal('show');
	});
	
	/* 메뉴상세모달 그리기 */
	function menuInfo(map){
		var str= '';
		str += ' <img src="'+map.menuVo.menuImg+'" width="100px" height="100px" onerror="this.style.display=\'none\'">';
		str += ' <h5>'+map.menuVo.menuName+'</h5>';
		str += ' <p>'+map.menuVo.menuDesc+'</p>';
		str += ' <table>';
		str += ' 	<thead>';
		str += ' 		<tr>';
		str += ' 			<th>가격</th>';
		str += ' 			<td class="price">'+map.menuVo.menuPrice+'</td>';
		str += ' 		</tr>';
		str += ' 	</thead>';
		str += ' 	<tbody>';
		for (var i = 0; i < map.optionCateList.length; i++){

			str += ' 		<tr>';
			str += ' 			<th colspan="2">'+map.optionCateList[i].optionCateName+'</th>';
			str += '		</tr> ';
			var num = map.optionList.length + 1;
			
			for(var j=0; j<map.optionList.length; j++){
				if(map.optionList[j].optionCateNo == map.optionCateList[i].optionCateNo){
					if(map.optionCateList[i].chkRdo == 1){
						str += ' <tr> ';
						str += ' 	<td><input type="radio" name="'+map.optionCateList[i].optionCateNo+'" value="'+map.optionList[j].optionNo+'" data-name="'+map.optionList[j].optionName+'" data-price="'+map.optionList[j].optionPrice+'"';
						if(j<=num){
							num=j;
							str += ' checked="checked"';
						}
						str += '     ><label>'+map.optionList[j].optionName+'</label></td>'
						str += ' 	<td class="opPrice">'+map.optionList[j].optionPrice+'</td>'
						str += ' </tr>';
					} else {
						str += ' <tr> ';
						str += ' 	<td><input type="checkbox" name="'+map.optionCateList[i].optionCateNo+'" value="'+map.optionList[j].optionNo+'" data-name="'+map.optionList[j].optionName+'" data-price="'+map.optionList[j].optionPrice+'"><label>'+map.optionList[j].optionName+'</label></td> ';
						str += ' 	<td class="opPrice">'+map.optionList[j].optionPrice+'</td>'
						str += ' </tr>';
					}					
				}		
			}
			
		}
		str += ' 	</tbody>';
		str += ' 	<tfoot>';
		str += ' 		<tr>';
		str += ' 			<th>수량</th>';
		str += ' 			<td class="count">';
		str += ' 				<input type=\'button\' onclick=\'count2("minus")\' value=\'-\' class="btn-xs" />';
		str += ' 				<span id="result2">1</span>';
		str += ' 				<input type=\'button\' onclick=\'count2("plus")\' value=\'+\' class="btn-xs" />';
		str += ' 		</tr>';
		str += ' 	</tfoot>';
		str += ' </table>';
		str += ' <button id="btnMenuAdd" type="submit" data-no="'+map.menuVo.menuNo+'" data-name="'+map.menuVo.menuName+'" data-price="'+map.menuVo.menuPrice+'" >주문표에 추가</button>';
		
		$("#optionListArea").append(str); 
	}

	
		
	/* 선택한 메뉴와 옵션 데이터 객체로 묶기 */
	$(".modal-body").on("click", "#btnMenuAdd", function(){
		console.log("btnMenuAdd");
		
		//console.log(optionCateList);
		
		//메뉴 정보 담기
		var menuNo = $("#btnMenuAdd").data("no");
		var menuName = $("#btnMenuAdd").data("name");
		var menuPrice = $("#btnMenuAdd").data("price")
		
		var price = parseInt(menuPrice); // 메뉴+옵션 가격
		var str = ''; // 선택한 메뉴 옵션 화면에 보이기
		str += ' <tr>';
		str += ' 	<td>';
		str += ' 		<div class="selMenu">'+menuName+'</div>';
		str += ' 		<div class="selOpt">'
		//check된 옵션 정보 담기
		var optInfoArr = [];
		for (var i = 0; i < optionCateList.length; i++){
			var selOptArr = [];
			var optionCateNo =optionCateList[i].optionCateNo;
			
			var name = "[name='"+optionCateNo+"']:checked"
			$(name).each(function(){
				var no = $(this).val();
				var name = $(this).data("name");
				var optPrice = $(this).data("price");
				var selOpt = {optionNo:no, optionName:name, optionPrice:optPrice};
				
				selOptArr.push(selOpt);
				
				str += ' +'+name+'&nbsp';
				price = price+ parseInt(optPrice);		
			});
			
			var optInfo = {
					optCateNo : optionCateNo,
					selOptArr : selOptArr
			}
			
			if(selOptArr.length > 0){optInfoArr.push(optInfo)}; //선택 옵션이 있을때만 옵션 arr에 담기
			
		}

		var count = document.getElementById('result2').innerText; //주문수량
		var menuInfo = {menuNo : menuNo, menuName:menuName, menuPrice:menuPrice, optInfoArr:optInfoArr, orderCount:count };

		menuInfoArr.push(menuInfo);
		
		price = price*parseInt(count);
		totalPrice = totalPrice +price
		finalPrice = totalPrice+parseInt(document.getElementById('fee').innerText);
		console.log(price);
		console.log(totalPrice);
		console.log(finalPrice);
		console.log(document.getElementById('fee').innerText);
		str += ' 		</div>';
		str += ' 	</td>';
		str += ' 	<td>';
		str += ' 		<div class="selCnt">x'+count+'</div>';
		str += ' 		<div class="selPrice">'+String(price)+'</div>';
		str += ' 	</td>';
		str += ' </tr>';
		
		$("#selMenuArea").append(str);//메뉴 옵션 보이기
		document.getElementById('total-price').innerText = finalPrice;//결제예정금액 출력
		document.getElementById('total-price2').innerText = totalPrice + finalPaySum;
		$("#menuModal").modal('hide');//모달 닫기
		
		
		
	});
	

	
	
	/* 메뉴옵션 객체와 주문 기본정보 묶기 */
	$("#order-btn").on("click", ".btn-ordering", function(){
		console.log("btn-ordering");
		var no = ${sessionScope.authUser.no};
		var orderNo = ${map.orderVo.orderNo};
		var fee = ${map.orderVo.pFee};
		var finalPay = totalPrice;
		var storeReq = $('[name="store-require"]').val();
		var attendVfy = 1;
		var orderInfo = {no : no,
						 orderNo : orderNo,
						 fee : fee,
						 finalPay : finalPay,
						 storeReq : storeReq,
						 attendVfy : attendVfy,
						 menuInfoArr : menuInfoArr}
		console.log(orderInfo);
		
		$.ajax({

			/* 요청 */
			url : "${pageContext.request.contextPath }/store/${map.bizVo.storeNo}/orderInfo2", //요청 보낼 주소		
			type : "post",
			contentType : "application/json",
			data : JSON.stringify(orderInfo), //자바스크립트 객체를 json 형식으로 변경

			/* 응답 */
			dataType : "json",
			success : function() {
				window.location.href="${pageContext.request.contextPath }/mypage/orderList"
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
			
		});
	});
	
	
</script>

</html>