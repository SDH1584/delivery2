	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가게예약</title>
<link href="${pageContext.request.contextPath}/assets/css/total.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/main-map.css" rel="stylesheet">


<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

</head>

<body>
	<!-- wrap -->
	<div id="wrap" class="clearfix">

		<!-- 가게상세 해더 -->A	
		<c:import url="/WEB-INF/views/includes/customer-header.jsp"></c:import>
		<div id=wrap2 class="cleafix">

			<!-- 가게정보 -->
			<div id="listtitle">
				<h1>주변 예약 현황</h1>
			</div>

			<div id="map-area" class="clearfix">
				<div id="map" class="clearfix"></div>
			</div>
			<div id="store-info-area">
				<table id="store-info">

					<colgroup>
						<col width="30%">
						<col width="70%">
					</colgroup>

					<tr>
						<td rowspan="6"><img id="storeLogo" src="${pageContext.request.contextPath}/assets/images/${storeList[0].logoImg}"></td>
					</tr>
					<tr>
						<th id="name">${storeList[0].storeName }</th>
					</tr>
					<tr>
						<td id="delivery-num">${storeList[0].countPeople }/${storeList[0].people }</td>
					</tr>
					<tr>
						<td id="delivery-address" colspan="2">주소: ${storeList[0].storeMAdr } ${storeList[0].storeSAdr}</td>
					</tr>
					<tr>
						<td id="delivery-hp" colspan="2">전화번호: ${storeList[0].storePhone}</td>
					</tr>
					<tr>
						<td id="recommend" colspan="2"></td>
					</tr>
					<tr>
						<td colspan="3"><a href="${pageContext.request.contextPath}/store/${storeList[0].storeNo}/reserv" id="reserve-btn">예약하러 가기</a></td>
					</tr>

				</table>
			</div>

			<!-- /가게정보 -->
		</div>
		<!-- 가게리스트 -->
		<!-- container -->
		<div id="container" class="clearfix">
			<c:forEach items="${storeList}" var="storeVo" varStatus="status">

				<div id="storelist" class="clearfix">
					<img id="storelistLogo" src="${pageContext.request.contextPath}/assets/images/${storeVo.logoImg}"> ${storeVo.storeName} <br> ${storeVo.countPeople }/${storeVo.people } 명<br>
					<button type="button" class="click" data-orderNo="${storeVo.orderNo}">상세정보보기</button>
				</div>
			</c:forEach>
		</div>
	</div>
	<br>


	<!-- footer -->
	<div id="footer">
		<div class="clearfix">
			<ul class="footerh1">
				<li>이용약관</li>
				<li>개인정보처리방침</li>
				<li>회원등급정책</li>
				<li>회사소개</li>
				<li>요기요사장님</li>
				<li>입점문의</li>
				<li>공지사항</li>
			</ul>
		</div>
	</div>
	<!-- //footer -->
	<!-- //wrap -->
</body>


<script>

	
//가게 상세정보 버튼 클릭할때
$('.click').on("click", function() {
	console.log("가게 상세정보 버튼 클릭");
	
	
	//가게번호 알기
	var orderno = $(this).data("orderno");
	console.log(orderno);
	
	
	$.ajax({
		
		url : "${pageContext.request.contextPath }/getStore",		
		type : "post",
		/* contentType : "application/json", */
		data : {orderNo: orderno}, 
 
		dataType : "json",
		success : function(storeVo){
			/*성공시 처리해야될 코드 작성*/
			
			console.log(storeVo);
			//로고
			$("#storeLogo").attr("src", storeVo.logoImg);
			$("#name").text(storeVo.storeName);
			$("#delivery-num").text(storeVo.countPeople + "/" + storeVo.people+"명");
			$("#delivery-address").text("주소: " + storeVo.storeMAdr +" "+ storeVo.storeSAdr);
			$("#delivery-hp").text("전화번호: " + storeVo.storePhone);
			$("#reserve-btn").attr("href", "${pageContext.request.contextPath}/store/"+ storeVo.storeNo +"/reserv");
			
			//지도
			
			
		},
		error : function(XHR, status, error) {
			console.error(status + " : " + error);
		}
	});
	
});
	 



function initMap() {
	// 지도 스타일
	// 지도 초기값
	const map = new google.maps.Map(document.getElementById("map"), {
		zoom : 10,
		center : {
			lat : 37.48140579914052,
			lng : 126.95269053971082
		},
	});
	
	
	//마커 출력
	var locations = getStoreList();
	
	for (var i = 0; i < locations.length; i++) {
         var marker = new google.maps.Marker({
             map: map,
             label: locations[i].place,
             position: new google.maps.LatLng(locations[i].lat, locations[i].lng),
         });
    }

	if (marker) {
	marker.addListener("click", () => {
	    map.setZoom(14);
	    map.setCenter(marker.getPosition());
		console.log("지도마커클리크")
		
	  });   
	}
}

//마커용 가게 리스트 가져오기
function getStoreList(){
	
	var locations = [] ;
	
	$.ajax({
		
		url : "${pageContext.request.contextPath }/getStoreList",		
		type : "post",
		/* data : {storeList2: storeList2},  */
		/* contentType : "application/json", */
		async: false,
		dataType : "json",
		success : function(storeList){
			/*성공시 처리해야될 코드 작성*/
			console.log(storeList);
			
			for(var i=0; i<storeList.length; i++){
				
				var markerVo = {
					place: storeList[i].storeName,
					lat: storeList[i].storeLat,
					lng: storeList[i].storeLng
				};
				
				locations.push(markerVo);
				
			}
			
			console.log(locations);
			
			
		}
	});	
	
	
	return locations

}


</script>

<!-- 맨 아래에 둘것 -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDl9EqQnWPqoxn5ZOEOAde3auL9VBp4NYU&callback=initMap&region=kr"></script>

</html>