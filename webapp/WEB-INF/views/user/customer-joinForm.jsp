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
					<form action="${pageContext.request.contextPath}/user/c_join" method="get">
						<table class="tbl_join">
							<tbody>
								<tr class="fst">
									<th>프로필 사진</th>
									<td>
										<div class="c_profile_photo">
											<img id="profile_photo" src="${pageContext.request.contextPath}/assets/images/profile.png">
										</div> <input type="file" id="c_profile_img" name="profile_img">
									</td>
								</tr>
								<tr>
									<th>아이디 <span class="ico">*</span>
									</th>
									<td><input type="text" id="c_id" name="id" value="" label="아이디" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합">
										<button type="button" id="" class="btn btn_default">중복확인</button></td>
								</tr>
								<tr>
									<th>비밀번호 <span class="ico">*</span>
									</th>
									<td><input type="password" id="c_password" name="password" label="비밀번호" placeholder="비밀번호를 입력해주세요"></td>
								</tr>
								<tr>
									<th>휴대전화 <span class="ico">*</span>
									</th>
									<td><input type="text" id="c_hp" name="hp" label="휴대전화" placeholder="숫자만 입력해주세요">
										<button type="button" id="" class="btn btn_default">인증번호 받기</button></td>
								</tr>
								<tr>
									<th>이메일</th>
									<td><input type="text" id="c_email" name="email" label="이메일" placeholder="예: marketkurly@kurly.com">
										<button type="button" id="" class="btn btn_default">중복확인</button></td>
								</tr>
								<tr class="lst">
									<th>주소 <span class="ico">*</span>
									</th>
									<td><input type="text" id="c_addr" name="addr" label="주소" placeholder="배송받을 주소를 검색해주세요">
										<button type="button" id="" class="btn btn_default">주소 검색</button></td>
								</tr>
							</tbody>
						</table>
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
		
		var id = $("#c_id").val();
		var pw = $("#c_pass").val();
		var phone = $("#c_phone").val();
		var addr = $("#c_addr").val();
		
		if(id == "") {
			alert("아이디를 입력해 주세요.");
			return false;
		}
		if(pw == "") {
			alert("비밀번호를 입력해 주세요.");
			return false;
		}
		if(phone == "") {
			alert("휴대전화 번호를 입력해 주세요.");
			return false;
		}
		/*
		if(addr == "") {
			alert("주소를 입력해 주세요.");
			return false;
		}
		*/
		return true;
	});
</script>
</html>