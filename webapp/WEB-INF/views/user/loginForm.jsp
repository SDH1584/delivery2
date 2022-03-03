<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/assets/css/main.css" rel="stylesheet" type="text/css">
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

									<!-- 로그인 실패/성공 처리 -->
									<c:if test="${param.result eq 'fail'}">
										<script type="text/javascript">
											alert("로그인에 실패하였습니다.");
										</script>
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

		<!-- 푸터 -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	</div>


</body>
</html>