<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/total.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/store/storeEdiForm.css" rel="stylesheet" type="text/css">



<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.js"></script>
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
					<li><a href="${pageContext.request.contextPath}/admin/menuManage" class="link2">메뉴추가</a></li>
					<li><a href="https://www.naver.com/" class="link2">댓글 게시판</a></li>
					<li><a href="https://www.naver.com/" class="link2">리뷰 게시판</a></li>
				</ul>
			</div>
			<!-- aside-->
			<div id="main">
				<form method="post" action="${pageContext.request.contextPath}/admin/modify" enctype="multipart/form-data">
					<div>
						<table id="table1" border="1">
							<tbody>
								<tr>
									<th>사업자등록번호</th>
									<td><span>${storeMap.businessVo.bizNo}</span></td>
									<th>상호명</th>
									<td><input type="text" name="storeName" value="${storeMap.businessVo.storeName}"></td>
								</tr>
								<tr>
									<th>가게번호</th>
									<td><span><input type="text" name="storePhone" value="${storeMap.businessVo.storePhone}" style="width: 100px;"></span></td>
									<th>휴대전화</th>
									<td><input type="text" name="hp" value="${storeMap.userVo.hp}"></td>
								</tr>
								<tr>
									<th>Email</th>
									<td colspan="3"><input type="text" name="email" value="${storeMap.userVo.email}"></td>
								</tr>
								<tr>
									<th>주소</th>
									<td colspan="2"><input type="text" name="storeMAdr" value="${storeMap.businessVo.storeMAdr}"></td>
									<td class="tdpadding"><span class="spancolor"><a href="https://www.naver.com/"><span class="fontcolor">주소검색</span></a></span></td>
								</tr>
								<tr>
									<th>상세주소</th>
									<td colspan="3"><input type="text" name="storeSAdr" value="${storeMap.businessVo.storeSAdr}"></td>
								</tr>
								<tr>
									<th>최소주문금액</th>
									<td colspan="3"><input type="text" name="minPrice" value="${storeMap.businessVo.minPrice}"></td>
								</tr>
								<tr>
									<th>기본배달지역</th>
									<td colspan="3" class="tdpadding"><span class="spancolor"><span class="fontcolor" id="btn_BaseDeliveryAreaModal">배달지추가</span></span>

										<div id="baseListArea">
											<c:forEach items="${DeliveryList.DeliveryVo}" var="DeliveryVo">
												<c:if test="${DeliveryVo.area_code == 0}">
													<div>${DeliveryVo.delivery_area}&nbsp;&nbsp;${DeliveryVo.fee}</div>
												</c:if>
											</c:forEach>

										</div></td>
								</tr>

								<tr>
									<th>배달가능지역</th>
									<td class="tdpadding" colspan="3"><span class="spancolor"><span class="fontcolor" id="btn_DeliveryAreaModal">배달지추가</span></span>

										<div id="ListArea">
											<c:forEach items="${DeliveryList.DeliveryVo}" var="DeliveryVo">
												<c:if test="${DeliveryVo.area_code == 1}">
													<div>${DeliveryVo.delivery_area}&nbsp;&nbsp;${DeliveryVo.fee}</div>
												</c:if>
											</c:forEach>
										</div></td>
								</tr>

								<tr>
									<th>영업시간</th>
									<th>오픈시간</th>
									<th>마감시간</th>
									<th></th>
								</tr>
								<tr>
									<th></th>
									<td><input type="text" name="open_time" value="${storeMap.businessVo.open_time}"></td>
									<td><input type="text" name="close_time" value="${storeMap.businessVo.close_time}"></td>
									<td></td>
								</tr>
								<tr>
									<th>휴일체크</th>
									<td>월 <input type="checkbox" name="day_offs" value="1" class="chbtn"></td>
									<td>화 <input type="checkbox" name="day_offs" value="2" class="chbtn"></td>
									<td>수 <input type="checkbox" name="day_offs" value="3" class="chbtn"></td>
								</tr>
								<tr>
									<th>목 <input type="checkbox" name="day_offs" value="4" class="chbtn"></th>
									<td>금 <input type="checkbox" name="day_offs" value="5" class="chbtn"></td>
									<td>토 <input type="checkbox" name="day_offs" value="6" class="chbtn"></td>
									<td>일 <input type="checkbox" name="day_offs" value="0" class="chbtn"></td>
								</tr>


								<tr>
									<th colspan="2">가게 카테고리</th>
									<td colspan="2"><button type="button" class="catebtnadd">카테고리 추가</button></td>
								</tr>
								<c:forEach items="${storecate.BizstorecateVo}" var="BizstorecateVo">
									<tr>
										<th colspan="2">가게 카테고리</th>
										<td colspan="2">${BizstorecateVo.store_cate_name}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="logo">
						<p>
							<strong>가게로고</strong>
						</p>
					</div>


					<div class="logoimgline">
						<img id="logoImg" src="${pageContext.request.contextPath}/upload/${storeMap.businessVo.logoImg}" class="img2" name="logoImg">
					</div>

					<div class="upload-btn_wrap">
						<button type="button">
							<span>이미지 등록</span>
						</button>
						<input type="file" class="input_file" id="image" onchange="setThumbnail(event);" name="file">
					</div>


					<div class="textbar">
						<p>
							<strong>사장님공지</strong>
						</p>
					</div>

					<div class="textarea">

						<div>
							<input type="text" name="notice" value="${storeMap.businessVo.notice}" style="width: 250px;">
						</div>
					</div>

					<div class="textbar">
						<p>
							<strong>원산지 정보</strong>
						</p>
					</div>

					<div class="textarea">

						<div>
							<input type="text" name="origin" value="${storeMap.businessVo.origin}" style="width: 250px;">
						</div>
					</div>

					<div>
						<button class="button1" type="submit">수정버튼</button>
					</div>
					<input type="text" name="storeNo" value="${storeMap.businessVo.storeNo}"> <input type="text" name="storeNo" value="${requestScope.UserVo.no}">
				</form>
			</div>
		</div>


		<div class="modal">

			<div class="modal_body">
				<form action="${pageContext.request.contextPath}/admin/storecate">

					<select name="store_cate_no" class="sort">
						<c:forEach items="${requestScope.StorecateList}" var="StorecateVo">
							<option value="${StorecateVo.store_cate_no}">${StorecateVo.store_cate_name}</option>
						</c:forEach>
					</select>

					<button type="submit" class="catebtnadd2">카테고리 등록</button>
				</form>
			</div>
		</div>

	</div>
	<!-- 푸터 -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>



	<!-- --------------------------------------------------------- -->
	<!-- 모달창--------------------------------------------------------- -->
	<!-- --------------------------------------------------------- -->

	<!-- 기본배달지역 등록 모달창--------------------------------------------------------- -->
	<div id="baseDeliveryAreaModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">기본배달지역 등록 모달창</h4>
				</div>

				<div class="modal-body">

					<label for="txt_delivery_area">기본배달지역명</label><input id="txt_delivery_area" type="text" name="delivery_area" value=""> <label for="txt_fee">가격</label><input id="txt_fee" type="text" name="fee" value=""> <input type="text" id="txt_area_code" name="area_code" value="0">

				</div>

				<div class="modal-footer">
					<button id="btn_baseDeliveryAreaAdd" type="button" class="btn btn-primary">저장</button>


					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>

				</div>

			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->



	<!-- 추가배달지역 등록 모달창--------------------------------------------------------- -->
	<div id="DeliveryAreaModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">추가배달지역 등록 모달창</h4>
				</div>

				<div class="modal-body">

					<label for="txt_delivery_area2">추가배달지역명</label><input id="txt_delivery_area2" type="text" name="delivery_area" value=""> <label for="txt_fee2">가격</label><input id="txt_fee2" type="text" name="fee" value=""> <input type="text" id="txt_area_code2" name="area_code" value="1">

				</div>

				<div class="modal-footer">
					<button id="btn_DeliveryAreaAdd" type="button" class="btn btn-primary">저장</button>


					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>

				</div>

			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->









</body>


<script>


//기본 배달지 추가 버튼 클릭할때-->기본배달지역 등록 모달창 호출
$("#btn_BaseDeliveryAreaModal").on("click", function(){
    console.log("기본 배달지 추가 모달");

    $("#baseDeliveryAreaModal").modal('show');
});


//기본 배달지 추가
$("#btn_baseDeliveryAreaAdd").on("click", function(){
	
	//동네명.가격,코드 가져오기
	var delivery_area = $("#txt_delivery_area").val();
	var fee = $("#txt_fee").val();
	var area_code = $("#txt_area_code").val();
	
	var deliveryVo = {
		delivery_area: delivery_area,
		fee: fee,
		area_code: area_code
	};
	
	console.log(deliveryVo);
	
	//ajax 통신 저장
	$.ajax({
		url : "${pageContext.request.contextPath }/admin/saveDeliveryArea",
		type : "post",
		//contentType : "application/json",
		data : deliveryVo,
		
		dataType : "json",
		success : function(deliveryVo){ //json --> js
			console.log(deliveryVo)
			render(deliveryVo);
			
		},
		error : function(XHR, status, error) {
		console.error(status + " : " + error);
		}
	});
	
});

function render(deliveryVo){
	
	var str = '<div>' ;
	str += deliveryVo.delivery_area+'  ';
	str += deliveryVo.fee ;
	str += '</div>' ;
	
	$("#baseListArea").append(str);	
};

</script>

<script>


//기본 배달지 추가 버튼 클릭할때-->기본배달지역 등록 모달창 호출
$("#btn_DeliveryAreaModal").on("click", function(){
    console.log("기본 배달지 추가 모달");

    $("#DeliveryAreaModal").modal('show');
});


//기본 배달지 추가
$("#btn_DeliveryAreaAdd").on("click", function(){
	
	//동네명.가격,코드 가져오기
	var delivery_area = $("#txt_delivery_area2").val();
	var fee = $("#txt_fee2").val();
	var area_code = $("#txt_area_code2").val();
	
	var deliveryVo = {
		delivery_area: delivery_area,
		fee: fee,
		area_code: area_code
	};
	
	console.log(deliveryVo);
	
	//ajax 통신 저장
	$.ajax({
		url : "${pageContext.request.contextPath }/admin/saveDeliveryArea",
		type : "post",
		//contentType : "application/json",
		data : deliveryVo,
		
		dataType : "json",
		success : function(deliveryVo){ //json --> js
			console.log(deliveryVo)
			read(deliveryVo);
			
		},
		error : function(XHR, status, error) {
		console.error(status + " : " + error);
		}
	});
	
});





function read(deliveryVo){
	
	var str = '<div>' ;
	str += deliveryVo.delivery_area+'  ';
	str += deliveryVo.fee ;
	str += '</div>' ;
	
	$("#ListArea").append(str);	
};

</script>


<script>
$("textarea.autosize").on('keydown keyup', function () {
  $(this).height(1).height( $(this).prop('scrollHeight')+12 );	
});
</script>


<script>
function setThumbnail(event) {
	var reader = new FileReader();
	reader.onload = function(event) {
		document.getElementById("logoImg").src = event.target.result;
	}
	reader.readAsDataURL(event.target.files[0]);
}
</script>

<script>
    //카테고리 등록 버튼 클릭시
        const body = document.querySelector('body');
        const modal = document.querySelector('.modal');
        const btnOpenPopup = document.querySelector('.catebtnadd');
  
        btnOpenPopup.addEventListener('click', () => {
          modal.classList.toggle('show');
  
          if (modal.classList.contains('show')) {
            body.style.overflow = 'hidden';
          }
        });
  
        modal.addEventListener('click', (event) => {
          if (event.target === modal) {
            modal.classList.toggle('show');
  
            if (!modal.classList.contains('show')) {
              body.style.overflow = 'auto';
            }
          }
        });
</script>




</html>