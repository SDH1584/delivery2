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
<link href="${pageContext.request.contextPath}/assets/css/mypage.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

</head>
<body>
	<div id="wrap" class="box-gray clearfix">

		<!-- 사용자 헤더 -->
		<c:import url="/WEB-INF/views/includes/customer-header.jsp"></c:import>

		<!-- contents -->
		<div id="contents" class="clearfix">
		
			<!-- aside-->
			<div id="aside">
				<ul>
					<li id="aside-top">마이페이지</li>
					<li><a href="${pageContext.request.contextPath}/mypage/editForm" class="link2">회원정보수정</a></li>
					<li><a href="${pageContext.request.contextPath}/mypage/address" class="link2">주소 등록/수정</a></li>
					<li><a href="${pageContext.request.contextPath}/mypage/orderList-now">주문현황</a></li>
					<li><a href="${pageContext.request.contextPath}/mypage/orderList-old">주문내역</a></li>
					<li><a href="${pageContext.request.contextPath}/mypage/point" class="link2">포인트 확인</a></li>
					<li><a href="${pageContext.request.contextPath}/mypage/review" class="link2">리뷰내역</a></li>
					<li><a href="${pageContext.request.contextPath}/mypage/inquiryList" class="link2">고객센터</a></li>
				</ul>
			</div>
			<!-- aside-->
			
			<div id="main">
				<div id="mypage">
					<div id="edit_page">
						<div class="tit_page_join">
							<h2 class="tit_edit">회원 정보 수정</h2>
						</div>
						<div id="join_page">
							<p class="page_sub">
								<span class="ico">*</span> 필수입력사항
							</p>
							<form action="${pageContext.request.contextPath}/mypage/edit" method="post" enctype="multipart/form-data">
								<table class="tbl_edit">
									<tbody>
										<tr class="fst">
											<th>프로필 사진</th>
											<td>
												<div class="c_profile_photo">
													<input id="profileImgChk" type="hidden" value="${userVo.profile_img }">
													<img id="profile_photo" src="">
												</div> <input type="file" id="c_profile_img" name="file">
											</td>
										</tr>
										<tr>
											<th>아이디 <span class="ico">*</span>
											</th>
											<td><input type="text" readonly id="c_id" name="id" value="${userVo.id }"></td>
										</tr>
										<tr>
											<th>새 비밀번호 <span class="ico">*</span>
											</th>
											<td><input type="password" id="c_password" name="password" placeholder="새로운 비밀번호를 입력해주세요"></td>
										</tr>
										<tr>
											<th>휴대전화 <span class="ico">*</span>
											</th>
											<td><input type="text" id="c_hp" name="hp" value="${userVo.hp }">
												<button type="button" id="" class="btn btn_default">다른번호 인증</button></td>
										</tr>
										<tr>
											<th>이메일</th>
											<td><input type="text" id="c_email" name="email" value="${userVo.email }" placeholder="예: marketkurly@kurly.com">
												<button type="button" id="btn_emailChk" class="btn btn_default">중복확인</button></td>
										</tr>
									</tbody>
								</table>
								<div id="btn_area">
									<button type="submit" id="btn_submit" class="btn btn_edit">수정하기</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

		</div>


		<!-- 푸터 -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	</div>
</body>
<script type="text/javascript">

	var profileImgChk = $("#profileImgChk").val();
	
	// 프로필 이미지 예외처리
	if (!profileImgChk) {
		// 프로필 이미지가 없을 때
		$("#profile_photo").attr("src", "${pageContext.request.contextPath}/assets/images/profile.png");
	} else {
		// 프로필 이미지가 있을 때
		$("#profile_photo").attr("src", "${pageContext.request.contextPath}/upload/${userVo.profile_img}");
	}
	
	//첨부파일을 선택했을 때
	$("#c_profile_img").on("change", function() {
		console.log("첨부파일 선택")
		var reader = new FileReader();
		reader.onload = function(event) {
			$("#profile_photo").attr("src", event.target.result);
		}
		reader.readAsDataURL(event.target.files[0]);
	});		
</script>