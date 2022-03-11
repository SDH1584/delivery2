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
					<h2 class="tit_join">사용자 회원가입</h2>
				</div>
				<div id="join_page">
					<p class="page_sub">
						<span class="ico">*</span> 필수입력사항
					</p>
					<form action="${pageContext.request.contextPath}/user/c_join" method="post" enctype="multipart/form-data">
						<table class="tbl_join">
							<tbody>
								<tr class="fst">
									<th>프로필 사진</th>
									<td>
										<div class="c_profile_photo">
											<img id="profile_photo" src="${pageContext.request.contextPath}/assets/images/profile.png">
										</div> <input type="file" id="c_profile_img" name="file" onchange="setThumbnail(event);">
									</td>
									<script>
										function setThumbnail(event) {
											var reader = new FileReader();
											reader.onload = function(event) {
												document
														.getElementById("profile_photo").src = event.target.result;
											}
											reader
													.readAsDataURL(event.target.files[0]);
										}
									</script>
								</tr>
								<tr>
									<th>아이디 <span class="ico">*</span>
									</th>
									<td><input type="text" id="c_id" name="id" value="" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합">
										<button type="button" id="" class="btn btn_default">중복확인</button></td>
								</tr>
								<tr>
									<th>비밀번호 <span class="ico">*</span>
									</th>
									<td><input type="password" id="c_password" name="password" placeholder="비밀번호를 입력해주세요"></td>
								</tr>
								<tr>
									<th>휴대전화 <span class="ico">*</span>
									</th>
									<td><input type="text" id="c_hp" name="hp" placeholder="숫자만 입력해주세요">
										<button type="button" id="" class="btn btn_default">인증번호 받기</button></td>
								</tr>
								<tr>
									<th>이메일</th>
									<td><input type="text" id="c_email" name="email" placeholder="예: marketkurly@kurly.com">
										<button type="button" id="" class="btn btn_default">중복확인</button></td>
								</tr>
								<tr class="lst">
								<tr>
									<th>주소명 <span class="ico">*</span></th>
									<td><input type="text" id="c_address_name" name="address_name" placeholder="배송받을 주소명을 입력해주세요"></td>
								</tr>
								<tr>
									<th>주소 <span class="ico">*</span></th>
									<td><input type="text" id="c_main_address" name="main_address" placeholder="배송받을 주소를 검색해주세요" readonly>
										<button type="button" id="addressSearch" class="btn btn_default" onclick="findAddr()">주소 검색</button></td>
								</tr>
								<tr>
									<th>상세 주소 <span class="ico">*</span></th>
									<td><input type="text" id="c_sub_address" name="sub_address" placeholder="상세 주소를 입력해주세요"></td>
								</tr>
								<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
								<script>
									function findAddr() {
										new daum.Postcode(
												{
													oncomplete : function(data) {
														console.log(data);
														document
																.getElementById("c_main_address").value = data.address;
													}

												}).open();

									}
								</script>
							</tbody>
						</table>
						<input type="hidden" id="lat" name="lat" value=""> <input type="hidden" id="lng" name="lng" value="">
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
	// 회원가입 예외처리
	$("#btn_submit").on("click", function() {
		console.log("가입하기 버튼 클릭");

		var id = $("#c_id").val();
		var pw = $("#c_password").val();
		var hp = $("#c_hp").val();
		var name = $("#c_address_name").val();
		var main = $("#c_main_address").val();
		var sub = $("#c_sub_address").val();

		if (id == "") {
			alert("아이디를 입력해 주세요.");
			return false;
		}
		if (pw == "") {
			alert("비밀번호를 입력해 주세요.");
			return false;
		}
		if (hp == "") {
			alert("휴대전화 번호를 입력해 주세요.");
			return false;
		}
		if (name == "") {
			alert("주소명을 입력해 주세요.");
			return false;
		}
		if (main == "") {
			alert("주소를 입력해 주세요.");
			return false;
		}
		if (sub == "") {
			alert("상세 주소를 입력해 주세요.");
			return false;
		}

		return true;
	});

	// 위경도 추출
	/*
	$("#addressSearch")
			.on(
					"click",
					function() {
						console.log("주소 검색 버튼 클릭");

						var address = $("#c_main_address").val();
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
									success : function(data) {
										//성공시 처리해야될 코드 작성
										console
												.log(data.results[0].geometry.location.lat);
										console
												.log(data.results[0].geometry.location.lng);

										$("#lat")
												.val(
														data.results[0].geometry.location.lat);
										$("#lng")
												.val(
														data.results[0].geometry.location.lng);
									},
									error : function(XHR, status, error) {
										console.error(status + " : " + error);
									}
								});

					});
	 */
</script>
</ html>