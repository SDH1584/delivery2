<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
						<td rowspan="6"><img id="storeLogo" src="${pageContext.request.contextPath}/assets/images/logo.PNG"></td>
					</tr>
					<tr>
						<th id="name">버거킹 서울대입구역점</th>
					</tr>
					<tr>
						<td id="delivery-num">2/6명</td>
					</tr>
					<tr>
						<td id="delivery-address" colspan="2">서울 관악구 남부순환로 1796</td>
					</tr>
					<tr>
						<td id="delivery-hp" colspan="2">02-123-4567</td>
					</tr>
					<tr>
						<td id="recommend" colspan="2">추천수: 33</td>
					</tr>
					<tr>
						<td colspan="3"><button id="reserve-btn">예약하러 가기</button></td>
					</tr>

				</table>
			</div>

			<!-- /가게정보 -->
		</div>
		<!-- 가게리스트 -->
		<!-- container -->

		<div id="container" class="clearfix">
			
			<div id="storelist" class="clearfix">
				<img id="storelistLogo" src="${pageContext.request.contextPath}/assets/images/1.png" /> 교촌치킨 <br> 2/6명<br>
				<button type="button" class="click">상세정보보기</button>
			</div>
			<div id="storelist" class="clearfix">
				<img id="storelistLogo" src="${pageContext.request.contextPath}/assets/images/1.png" /> ${vo.storeNo} <br>
				<button type="button" class="click">상세정보보기</button>
		<a href="
			https://maps.googleapis.com/maps/api/geocode/json?address=서울특별시 관악구 관악로 125&key=AIzaSyDl9EqQnWPqoxn5ZOEOAde3auL9VBp4NYU">
			서울특별시 관악구 관악로 125
		</a>
			</div>
		</div>
	</div>




	<button id="btnXY" type="button">위도 경도 테스트</button>
	
	<br>
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

<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDl9EqQnWPqoxn5ZOEOAde3auL9VBp4NYU&callback=initMap&region=kr"></script>
<script>
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
			place : "서울대입구역",
			lat : 37.48388,
			lng : 126.9519
		} ];

		//인포윈도우
		var infowindow = new google.maps.InfoWindow();

		//마커 생성
		for (var i = 0; i < locations.length; i++) {
			var marker = new google.maps.Marker({
				map : map,
				//label: locations[i].place,
				position : new google.maps.LatLng(locations[i].lat,
						locations[i].lng),
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
					/*	window.open('http://https://www.google.com/');*/

					console.log("지도마커클릭")
			      document.getElementById("storeLogo").src = "../assets/img/logo.png";

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

	//가게 상세정보 버튼 클릭할때
	$('#click').on("click", function() {
		console.log("가게클릭")
		$('#store-name').text("교촌치킨 (선택)")
		$('#delivery-num').text("2/6+@")
		$('#delivery-address').text("가게정보: 서울특별시 관악구 중앙동 861-7 +@")
		$('#delivery-hp').text('연락처:02-123-4567+@')
		$('#specialities').text('대표메뉴:후라이드치킨 양념치킨+@')
		$('#recommend').text('추천수:33+1')
		$('#store-comment').text('사장님 알림: 항상 감사합니다 고객님+@')
      document.getElementById("storeLogo").src = "../assets/img/logo.png";
		
	});
	

	
	////////////////////////////////////////////////////////////////////////////////////////
	//위경도 테스트 영역
	
	$("#btnXY").on("click", function(){
		console.log("위경도");
		
		////////////////////////////
		//추출
		var url = "https://maps.googleapis.com/maps/api/geocode/json?address= 서울특별시 관악구 관악로 125 &key=AIzaSyDl9EqQnWPqoxn5ZOEOAde3auL9VBp4NYU"
		
	
		//요청 파라미디터 방식
		$.ajax({
			
			url : url,		
			type : "post",
			//contentType : "application/json",
			//data : guestbookVo,   //{name: name, password: password, content: content}
  
			dataType : "json",
			success : function(data){
				/*성공시 처리해야될 코드 작성*/
				console.log(data.results[0].geometry.location.lat);
				console.log(data.results[0].geometry.location.lng);
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		/////////////////////////////////////////////		

		
	});
	
	
	////////////////////////////////////////////////////////////////////////////////////////
	
	
	
	/////////////////////////////////////////////////////////////////////////////////////
	//무한스크롤코드
	var intersectionObserver = new IntersectionObserver(function(entries) {
	  // If intersectionRatio is 0, the target is out of view
	  // and we do not need to do anything.
	  if (entries[0].intersectionRatio <= 0) return;
	
	  loadItems(10);
	  console.log('Loaded new items');
	});
	
	
	// start observing
	intersectionObserver.observe(document.querySelector('.scrollerFooter'));
	const io = new IntersectionObserver((entries, observer) => {
		entries.forEach(entry => {
		  if (!entry.isIntersecting) return; 
			//entry가 interscting 중이 아니라면 함수를 실행하지 않습니다.
		  if (page._scrollchk) return;
			//현재 page가 불러오는 중임을 나타내는 flag를 통해 불러오는 중이면 함수를 실행하지 않습니다.
	    observer.observe(document.getElementById('storelist'));
			//observer를 등록합니다.
	    page._page += 1;
			//불러올 페이지를 추가합니다.
	    page.list.search();
			//페이지를 불러오는 함수를 호출합니다.
		});
	});
	io.observe(document.getElementById('storelist'));




	/* 버튼 보이는 이벤트 */ function scrollFunction() { 
		var btn = document.getElementById('btn'); 
			if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) { 
				btn.style.display = "storelist";
				} else {
					btn.style.display = "none"; 
					} 
			} 
			/* 부드럽게 위로 가기 */ 
			function GoTop() { 
				window.scrollTo({top:0, behavior:'smooth'}); }
	

</script>

</html>