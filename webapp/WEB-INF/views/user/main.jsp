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

		<!-- 가게상세 해더 -->
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
						<td rowspan="6"><img id="storeLogo" src="${pageContext.request.contextPath}/assets/images/${getRecentStore[0].logoImg }png"></td>
					</tr>
					<tr>
						<th id="name">${getRecentStore[0].storeName }</th>
					</tr>
					<tr>
						<td id="delivery-num"> ${getRecentStore[0].countPeople } /${getRecentStore[0].people }</td>
					</tr>
					<tr>
						<td id="delivery-address" colspan="2">주소: ${getRecentStore[0].storeMAdr } ${getRecentStore[0].storeSAdr}</td>
					</tr>
					<tr>
						<td id="delivery-hp" colspan="2">전화번호:${getRecentStore[0].storePhone}</td>
					</tr>
					<tr>
						<td id="recommend" colspan="2"></td>
					</tr>
					<tr>
						<td colspan="3" onclick="location='${pageContext.request.contextPath}/store/${getRecentStore[0].storeNo}/reserv'">
						<button id="reserve-btn">예약하러 가기</button>
						</td>
					</tr>

				</table>
			</div>

			<!-- /가게정보 -->
		</div>
		<!-- 가게리스트 -->
		<!-- container -->
		<div id="container" class="clearfix">
				<c:forEach items="${storeList}" var="storeList" varStatus="status">
			
					<div id="storelist" class="clearfix">
						<img id="storelistLogo" src="${pageContext.request.contextPath}/assets/images/${storeList.logoImg}" /> ${storeList.storeName} <br> ${storeList.countPeople }/${storeList.people } 명<br>
						<button type="button" class="click" data-storeno="${storeList.storeNo}" 
															data-storeName="${storeList.storeName }"
															data-storePhone="${storeList.storePhone }"
															data-countPeople="${storeList.countPeople }"
															data-people="${storeList.people }"
															data-logoImg="${storeList.logoImg }"
															data-storeMAdr="${storeList.storeMAdr }"
															data-storeSAdr="${storeList.storeSAdr }">상세정보보기</button>
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
		var storeNo = $(this).data("storeno")
		var storeName=$(this).data("storename")
		var storePhone=$(this).data("storephone")
		var people=$(this).data("people")
		var countPeople=$(this).data("countpeople")
		var logoImg=$(this).data("logoimg")
		var storeMAdr=$(this).data("storemadr")
		var storeSAdr=$(this).data("storesadr")
		var getStore={
			storeNo:storeNo,
			storeName:storeName,
			storePhone:storePhone,
			logoImg:logoImg,
			people:people,
			countPeople:countPeople,
			storeMAdr:storeMAdr,
			storeSAdr:storeSAdr
		}
		console.log("ajax 직전?")
		$.ajax({
			
			url : "${pageContext.request.contextPath }/user/main",		
			type : "post",
			contentType : "application/json",
			data : JSON.stringify(getStore), //자바스크립트 객체를 json형식으로 변경
  
			dataType : "json",
			success : function(getStore){
				/*성공시 처리해야될 코드 작성*/
				
				console.log(getStore);
				
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});

		
	});
	


</script>
<!-- 
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDl9EqQnWPqoxn5ZOEOAde3auL9VBp4NYU&callback=initMap&region=kr"></script>

   function initMap() {

      // 지도 스타일
      const map = new google.maps.Map(document.getElementById("map"), {
         zoom : 13,
         center : {
            lat : 37.48140579914052,
            lng : 126.95269053971082
         },
      });

      // 마커 정보
         var locations = [ {
         place :"서울대입구역",
         lat : 37.141414,
         lng : 126.1234124123,
               
      } ];

         //DB에 있는 장소 마커 표시
            $.ajax({
              type: 'GET',
              url: 'url',
              data: {},
              success: function (response) {
                if (response['result'] == 'success') {
                  let places = response['places_list']
                  for (let i = 0; i < places.length; i++) {
                    var place = { lat: places[i]['latitude'], lng: places[i]['longitude'] }
                    var marker = new google.maps.Marker({ position: place, map: map, title: places[i]['name'] });
                  }
                }
              }
            });      
      
      //인포윈도우
      var infowindow = new google.maps.InfoWindow();

      //마커 생성
      for (var i = 0; i < locations.length; i++) {
         var marker = new google.maps.Marker({
            map : map,
            //label: locations[i].place,
            position : new google.maps.LatLng(locations[i].lat,locations[i].lng),
         });

         google.maps.event.addListener(marker, 'click',
               (function(marker, i) {
                  return function() {
                     //html로 표시될 인포 윈도우의 내용
                     infowindow.setContent(locations[i].place);
                     //인포윈도우가 표시될 위치
                     infowindow.open(map, marker);

                  }
               })(marker, i));

         if (marker) {
            marker.addListener("click", function() {
               //중심 위치를 클릭된 마커의 위치로 변경
               map.setCenter(this.getPosition());
               //마커 클릭 시의 줌 변화
               map.setZoom(14);
               /*   window.open('http://https://www.google.com/');*/

               console.log("지도마커클릭")
               document.getElementById("storeLogo").src="${pageContext.request.contextPath}/assets/images/1.png" ;

               $('#store-name').text("지도 주소의 매장")
               $('#delivery-num').text("n/m+")
               $("#delivery-address").text("지도 내 주소")
               $('#delivery-hp').text('연락처:@')
               $('#specialities').text('대표메뉴:')
               $('#recommend').text('추천수:n')
               $('#store-comment').text('사장님 알림: @')
            });
         }

      }

   }

<c:if test=" ${ storeList.orderStatus} eq 0 and ${storeList.countPeople} lt ${storeList.people}">
</c:if>

 -->
</html>