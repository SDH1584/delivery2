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
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/store-detail/store-detail-header.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/store-detail/customer-order.css" rel="stylesheet">

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
				<li class="sel-menu"><a id="sel-menu" href="">메뉴</a></li>
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
				<form action="">
					<table id="order-detail">
						<tr>
							<th>참여인원</th>
							<td colspan="3"><input type='button' onclick='count("minus")' value='-' class="btn-xs" /> <span id="result">1</span> <input type='button' onclick='count("plus")' value='+' class="btn-xs" /></td>
						</tr>
						<tr>
							<th>주문 금액</th>
							<td colspan="3">26,000 / 25,000</td>
						</tr>
						<tr>
							<th>배달료</th>
							<td colspan="3" id="deliveryFee">3000</td>
						</tr>
						<tr>
							<td colspan="4">*최소 주문 금액을 채울 경우 혼자서도 주문 가능합니다</td>
						</tr>
					</table>
					<div id="order-menu-box">
						<table id="order-menu-table">
							<tbody>
								<tr>
									<td class="order-menu">기네스 몬스터 와퍼 세트<br>(+사이다 + 치즈감자)
									</td>
									<td class="order-price">11,000원</td>
								</tr>
								<tr>
									<td class="order-menu">기네스 몬스터 와퍼</td>
									<td class="order-price">9,000원</td>
								</tr>
								<tr>
									<td class="order-menu">개인 배달료</td>
									<td class="order-price" id="fee">3000</td>
							</tbody>
							<tfoot>
								<tr>
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
						<div class="order-deli">
							<input type="checkbox" id="group-order" name="group-order" value=""> <label for="group-order">단체 주문</label>
						</div>
					</div>
					<c:choose>
						<c:when test="${empty sessionScope.authUser}">
							<div id="beforeLogin">
								<p>주문 진행을 위해 로그인이 필요합니다.</p>
								<a href="${pageContext.request.contextPath}/user/loginForm">로그인하기</a>
							</div>
						</c:when>
						<c:otherwise>
							<button type="button" class="btn-ordering">예약 만들기</button>
							<button type="button" class="btn-ordering">바로 주문하기</button>
						</c:otherwise>
					</c:choose>
				</form>

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

				<div class="modal-body" id="optionListArea">
					
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
var optionCateList ;



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
		var feeElement = document.getElementById('deliveryFee');
		var fee = parseInt(feeElement.innerText);
		fee = fee / number
		document.getElementById('fee').innerText = fee;
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
				
				////////////////////////////
				optionCateList = map.optionCateList
				
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
			
		});

		$("#menuModal").modal('show');
	});
	
	function menuInfo(map){
		var str= '';
		str += ' <img src="'+map.menuVo.menuImg+'" width="100px" height="100px" onerror="this.style.display=\'none\'">';
		str += ' <h5>'+map.menuVo.menuName+'</h5>';
		str += ' <p>'+map.menuVo.menuDesc+'</p>';
		//str += ' <form action="${pageContext.request.contextPath}/store/'+map.optionList[0].storeNo+'/orderFirst" method="get">'
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
		str += ' 				<input type=\'button\' onclick=\'count2("plus")\' value=\'-\' class="btn-xs" />';
		str += ' 		</tr>';
		str += ' 	</tfoot>';
		str += ' </table>';
		str += ' <button id="btnMenuAdd" type="submit" data-no="'+map.menuVo.menuNo+'" data-name="'+map.menuVo.menuName+'" data-price="'+map.menuVo.menuPrice+'" >주문표에 추가</button>';
		//str += ' </form>'
		
		$("#optionListArea").append(str); 
	}

	
		
	////////////////////////////////////////////////////////////////////////
	var menuInfoArr = [];
	
	$(".modal-body").on("click", "#btnMenuAdd", function(){
		console.log("btnMenuAdd");
		
		//console.log(optionCateList);
		
		var menuNo = $("#btnMenuAdd").data("no");
		var menuName = $("#btnMenuAdd").data("name");
		var menuPrice = $("#btnMenuAdd").data("price")
		var optInfoArr = [];
		
		for (var i = 0; i < optionCateList.length; i++){
			var optionCateName =optionCateList[i].optionCateNo;
			
			var name = "[name='"+optionCateName+"']:checked"
		
			var optionNo =$(name).val();
						
			var selOptArr = [];
			$(name).each(function(){
				var no = $(this).val();
				var name = $(this).data("name");
				var price = $(this).data("price");
				var selOpt = {optionNo:no, optionName:name, optionPrice:price};
				selOptArr.push(selOpt);
			});
			//console.log(optionCateName);
			//console.log("opt" + optionNo);
			//console.log("arr" + selOptNoArr);
			
			var optInfo = {
					optCateNo : optionCateName,
					selOptArr : selOptArr
			}
			if(selOptArr.length > 0){optInfoArr.push(optInfo)};
			
		}
		//console.log(optInfoArr);
		var count = document.getElementById('result2').innerText;
		var menuInfo = {menuNo : menuNo, menuName:menuName, menuPrice:menuPrice, optInfoArr:optInfoArr, orderCount:count };
		//console.log(menuInfo);
		menuInfoArr.push(menuInfo);
		console.log("menuInfoArr");
		console.log(menuInfoArr);
		
		$("#menuModal").modal('hide');
		
	});
	
	
	$(".btn-ordering").on("click", function(){
		console.log("btn-ordering");
		var storeNo = 1;
		var fee = 500;
		var address = '서울시 관악구 남부순환로 1820 302호';
		var storeReq = '반찬 빼주세요';
		var deliveryReq = '1층에 두고 전화주세요';
		var people = 3;
		var orderDate = '2022/03/10 17:00'
		var orderStatus = 0;
		var orderInfo = {storeNo : storeNo,
						 fee : fee,
						 address : address,
						 storeReq : storeReq,
						 deliveryReq : deliveryReq,
						 people : people,
						 orderDate : orderDate,
						 orderStatus : orderStatus,
						 menuInfoArr : menuInfoArr}
		console.log(orderInfo);
		
		$.ajax({

			/* 요청 */
			url : "${pageContext.request.contextPath }/store/${map.bizVo.storeNo}/orderInfo", //요청 보낼 주소		
			type : "post",
			contentType : "application/json",
			data : JSON.stringify(orderInfo) //자바스크립트 객체를 json 형식으로 변경

			/* 응답 */
			//dataType : "json",
			//success : function(map) {
				/*성공시 처리해야될 코드 작성*/
			//	console.log(map);
			//	menuInfo(map);
				
				////////////////////////////
			//	optionCateList = map.optionCateList
				
				
			//},
			//error : function(XHR, status, error) {
		//		console.error(status + " : " + error);
		//	}
			
		});
	});
	
	
</script>

</html>