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
					<form action="${pageContext.request.contextPath}/user/s_join" method="get">
						<table class="tbl_join">
							<tbody>
								<tr class="fst">
									<th>가게 로고</th>
									<td>
										<div class="s_profile_photo">
											<img id="profile_photo" src="${pageContext.request.contextPath}/assets/images/profile.png">
										</div> <input type="file" id="s_logoImg" name="logoImg">
									</td>
								</tr>
								<tr>
									<th>아이디 <span class="ico">*</span>
									</th>
									<td><input type="text" id="s_id" name="id" value="" label="아이디" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합">
										<button type="button" id="" class="btn btn_default">중복확인</button></td>
								</tr>
								<tr>
									<th>비밀번호 <span class="ico">*</span>
									</th>
									<td><input type="password" id="s_password" name="password" label="비밀번호" placeholder="비밀번호를 입력해주세요"></td>
								</tr>
								<tr>
									<th>사업자 등록번호 <span class="ico">*</span>
									</th>
									<td><input type="number" id="s_bizNo" name="bizNo" label="사업자 등록번호" placeholder="사업자 등록번호를 입력해주세요"></td>
								</tr>
								<tr>
									<th>상호명 <span class="ico">*</span>
									</th>
									<td><input type="text" id="s_storeName" name="storeName" label="상호명" placeholder="상호명을 입력해주세요"></td>
								</tr>
								<tr>
									<th>전화번호</th>
									<td><input type="text" id="s_storePhone" name="storePhone" label="전화번호" placeholder="숫자만 입력해주세요"></td>
								</tr>
								<tr>
									<th>휴대전화 <span class="ico">*</span>
									</th>
									<td><input type="text" id="s_hp" name="hp" label="휴대전화" placeholder="숫자만 입력해주세요">
										<button type="button" id="" class="btn btn_default">인증번호 받기</button></td>
								</tr>
								<tr>
									<th>이메일</th>
									<td><input type="text" id="s_email" name="email" label="이메일" placeholder="예: marketkurly@kurly.com">
										<button type="button" id="" class="btn btn_default">중복확인</button></td>
								</tr>
								<tr>
									<th>주소 <span class="ico">*</span>
									</th>
									<td><input type="text" id="s_storeMAdr" name="storeMAdr" label="주소" placeholder="가게 주소를 검색해주세요">
										<button type="button" id="" class="btn btn_default">주소 검색</button></td>
								</tr>
								<tr class="lst">
									<th>상세 주소 <span class="ico">*</span>
									</th>
									<td><input type="text" id="s_storeSAdr" name="storeSAdr" label="주소" placeholder="가게 상세 주소를 입력해주세요">
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
		
		var id = $("#s_id").val();
		var pw = $("#s_password").val();
		
		if(id == "") {
			alert("아이디를 입력해 주세요.");
			return false;
		}
		if(pw == "") {
			alert("비밀번호를 입력해 주세요.");
			return false;
		}

		return true;
	});
</script>
</html>