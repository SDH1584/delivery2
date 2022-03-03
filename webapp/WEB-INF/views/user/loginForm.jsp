<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/assets/css/main.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/user.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="wrap" class="box-gray clearfix">


		<!-- 사용자 헤더 -->
		<c:import url="/WEB-INF/views/includes/customer-header.jsp"></c:import>

		<!-- contents -->
		<div id="contents" class="clearfix">
			<div id="main_no_aside">
				<div id="login_page">
					<div class="tit_page_login">
						<h3 class="tit_login">로그인</h3>
					</div>
					<div id="login_form">
						<div class="login_box">
							<div id="loginForm">
								<form action="${pageContext.request.contextPath}/user/login" method="get">
									
									<!-- 아이디 -->
									<input type="text" name="u_id" value="" placeholder="아이디를 입력해주세요"> 
									
									<!-- 비밀번호 -->
									<input type="password" name="u_pass" value="" placeholder="비밀번호를 입력해주세요">
									
									<div class="chk_area">
										<label class="chk_box"> <input type="checkbox" id="chk_security"> 보안접속
										</label>
										<div class="login_search">
											<span class="id_search">아이디 찾기</span> <span class="bar"></span> <span class="pass_search">비밀번호 찾기</span>
										</div>
									</div>
									
									<!-- 로그인 실패 -->
									<c:if test="${param.result eq 'fail'}">
										
									</c:if>
									
									<!-- 버튼 -->
									<button id="btn-submit" class="btn_login" type="submit">로그인</button>
									<button class="btn_join" type="button" onclick="location.href='${pageContext.request.contextPath}/user/joinForm'">회원가입</button>

								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>

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
	</div>


</body>
</html>