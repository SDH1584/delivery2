<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/total.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/user/user.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>

</head>
<body>
	<div id="wrap" class="box-gray clearfix">


		<!-- 사용자 헤더 -->
		<c:import url="/WEB-INF/views/includes/customer-header.jsp"></c:import>

		<!-- contents -->
		<div id="contents" class="clearfix">
			<div id="main_no_aside">
				<div class="tit_page_join">
					<h2 class="tit_join">사업자 회원가입</h2>
				</div>
				<div id="join_page">
					<p class="page_sub">
						<span class="ico">*</span> 필수입력사항
					</p>
					<form action="${pageContext.request.contextPath}/user/s-join" method="post" enctype="multipart/form-data">
						<table class="tbl_join">
							<tbody>
								<tr class="fst">
									<th>가게 로고</th>
									<td>
										<div class="s_profile_photo">
											<img id="profile_photo" src="${pageContext.request.contextPath}/assets/images/profile.png">
										</div> <input type="file" id="s_logoImg" name="file" onchange="setThumbnail(event);">
									</td>
									<script>
										function setThumbnail(event) {
											var reader = new FileReader();
											reader.onload = function(event) {
												$("#profile_photo").attr("src", event.target.result);
											}
											reader
													.readAsDataURL(event.target.files[0]);
										}
									</script>
								</tr>
								<tr>
									<th>아이디 <span class="ico">*</span>
									</th>
									<td><input type="text" id="s_id" name="id" value="" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합">
										<button type="button" id="" class="btn btn_default">중복확인</button></td>
								</tr>
								<tr>
									<th>비밀번호 <span class="ico">*</span>
									</th>
									<td><input type="password" id="s_password" name="password" placeholder="비밀번호를 입력해주세요"></td>
								</tr>
								<tr>
									<th>사업자 등록번호 <span class="ico">*</span>
									</th>
									<td><input type="number" id="s_bizNo" name="bizNo" placeholder="사업자 등록번호를 입력해주세요"></td>
								</tr>
								<tr>
									<th>상호명 <span class="ico">*</span>
									</th>
									<td><input type="text" id="s_storeName" name="storeName" placeholder="상호명을 입력해주세요"></td>
								</tr>
								<tr>
									<th>전화번호 <span class="ico">*</span>
 									</th>
									<td><input type="text" id="s_storePhone" name="storePhone" placeholder="숫자만 입력해주세요"></td>
								</tr>
								<tr>
									<th>휴대전화 <span class="ico">*</span>
									</th>
									<td><input type="text" id="s_hp" name="hp" placeholder="숫자만 입력해주세요">
										<button type="button" id="" class="btn btn_default">인증번호 받기</button></td>
								</tr>
								<tr>
									<th>이메일</th>
									<td><input type="text" id="s_email" name="email" placeholder="예: marketkurly@kurly.com">
										<button type="button" id="" class="btn btn_default">중복확인</button></td>
								</tr>
								<tr>
									<th>주소 <span class="ico">*</span>
									</th>
									<td><input type="text" id="s_storeMAdr" name="storeMAdr" placeholder="가게 주소를 검색해주세요" readonly>
										<button type="button" id="addressSearch" class="btn btn_default" onclick="findAddr()">주소 검색</button></td>
								</tr>
								<tr class="lst">
									<th>상세 주소 <span class="ico">*</span>
									</th>
									<td><input type="text" id="s_storeSAdr" name="storeSAdr" placeholder="가게 상세 주소를 입력해주세요">
								</tr>
								<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
								<script>
									// 카카오 API 사용하여 주소 받아오기
									function findAddr() {
										new daum.Postcode(
												{
													oncomplete : function(data) {
														console.log(data);
														$("#s_storeMAdr").val(data.jibunAddress);

														// 구글맵 API 사용하여 위경도 받아오기
														var address = data.address;

														console.log(address);

														//추출
														var url = "https://maps.googleapis.com/maps/api/geocode/json?address="
																+ address
																+ "&key=AIzaSyDl9EqQnWPqoxn5ZOEOAde3auL9VBp4NYU"

														//요청 파라미터 방식
														$
																.ajax({

																	url : url,
																	type : "post",
																	dataType : "json",
																	success : function(
																			data) {
																		//성공시 처리해야될 코드 작성
																		console
																				.log(data.results[0].geometry.location.lat);
																		console
																				.log(data.results[0].geometry.location.lng);

																		$(
																				"#lat")
																				.val(
																						data.results[0].geometry.location.lat);
																		$(
																				"#lng")
																				.val(
																						data.results[0].geometry.location.lng);
																	},
																	error : function(
																			XHR,
																			status,
																			error) {
																		console
																				.error(status
																						+ " : "
																						+ error);
																	}
																});
													}

												}).open();

									}
								</script>
							</tbody>
						</table>
						<input type="hidden" id="lat" name="storeLat" value=""> <input type="hidden" id="lng" name="sotreLng" value="">
						<div id="btn_area">
							<button type="submit" id="btn_submit" class="btn btn_join">가입하기</button>
						</div>
					</form>
				</div>
			</div>

		</div>

		<!-- 푸터 -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	</div>
</body>
<script type="text/javascript">
	$("#btn_submit").on("click", function() {
		console.log("가입하기 버튼 클릭");

		var id = $("#s_id").val();
		var pw = $("#s_password").val();
		var no = $("#s_bizNo").val();
		var name = $("#s_storeName").val();
		var phone = $("#s_storePhone").val();
		var hp = $("#s_hp").val();
		var main = $("#s_storeMAdr").val();
		var sub = $("#s_storeSAdr").val();

		if (id == "") {
			alert("아이디를 입력해 주세요.");
			return false;
		}
		if (pw == "") {
			alert("비밀번호를 입력해 주세요.");
			return false;
		}
		if (no == "") {
			alert("사업자 등록번호를 입력해 주세요.");
			return false;
		}
		if (name == "") {
			alert("상호명을 입력해 주세요.");
			return false;
		}
		if (phone == "") {
			alert("가게 전화 번호를 입력해 주세요.")
			return false;
		}
		if (hp == "") {
			alert("휴대전화 번호를 입력해 주세요.");
			return false;
		}
		if (main == "") {
			alert("가게 주소를 입력해 주세요.");
			return false;
		}
		if (sub == "") {
			alert("상세 주소를 입력해 주세요.");
			return false;
		}

		return true;
	});
	
</script>
</html>