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
					<li><a href="https://www.naver.com/" class="link2">회원정보수정</a></li>
					<li><a href="https://www.naver.com/" class="link2">주소 등록/수정</a></li>
					<li><a href="${pageContext.request.contextPath }/mypage/orderList" class="link2">주문내역</a></li>
					<li><a href="https://www.naver.com/" class="link2">포인트 확인</a></li>
					<li><a href="https://www.naver.com/" class="link2">리뷰내역</a></li>
					<li><a href="https://www.naver.com/" class="link2">고객센터</a></li>
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
							<form action="${pageContext.request.contextPath}/mypage/modify" method="get">
								<table class="tbl_edit">
									<tbody>
										<tr class="fst">
											<th>프로필 사진</th>
											<td>
												<div class="c_profile_photo">
													<img id="profile_photo" src="${pageContext.request.contextPath}/assets/images/profile.png">
												</div> <input type="file" id="c_photo" name="c_photo">
											</td>
										</tr>
										<tr>
											<th>아이디 <span class="ico">*</span>
											</th>
											<td><input type="text" readonly name="c_id" value="kim1234" label="아이디"></td>
										</tr>
										<tr>
											<th>새 비밀번호 <span class="ico">*</span>
											</th>
											<td><input type="password" name="c_pass" label="비밀번호" placeholder="새로운 비밀번호를 입력해주세요"></td>
										</tr>
										<tr>
											<th>휴대전화 <span class="ico">*</span>
											</th>
											<td><input type="text" name="c_phone" label="휴대전화" value="01012341234">
												<button type="button" id="" class="btn btn_default">다른번호 인증</button></td>
										</tr>
										<tr>
											<th>이메일</th>
											<td><input type="text" name="c_email" label="이메일" value="kim1234@gmail.com">
												<button type="button" id="" class="btn btn_default">중복확인</button></td>
										</tr>
										<tr class="lst">
											<th>주소 <span class="ico">*</span>
											</th>
											<td><input type="text" name="c_addr" label="주소" value="서울 관악구 에그옐로우빌딩 14층">
												<button type="button" id="" class="btn btn_default">주소 검색</button></td>
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