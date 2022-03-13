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
</head>
<body>
	<div id="wrap" class="box-gray clearfix">


		<!-- 사용자 헤더 -->
		<c:import url="/WEB-INF/views/includes/customer-header.jsp"></c:import>

		<!-- contents -->
		<div id="contents" class="clearfix">
			<div id="main_no_aside">
				<div id="both_join">
					<h1 class="tlt_both">마켓컬리 회원가입을 환영합니다.</h1>
					<ul>
						<li class="c_join">
							<div class="inner_join">
								<img id="join_icon" src="${pageContext.request.contextPath}/assets/images/customer-join.png">
								<h3>개인 회원</h3>
								<span class="join_guide_txt">나에게 딱 맞는 배달정보를 찾는 분</span>
							</div>
							<div class="btn_area">
								<button type="button" class="btn_login" onclick="location.href='${pageContext.request.contextPath}/user/c-joinForm'">가입하기</button>
							</div>
						</li>
						<li class="c_join s_join">
							<div class="inner_join">
								<img id="join_icon" src="${pageContext.request.contextPath}/assets/images/store-join.png">
								<h3>사업자 회원</h3>
								<span class="join_guide_txt">가게를 등록해서 손님을 모으고 싶은 분</span>
							</div>
							<div class="btn_area">
								<button type="button" class="btn_join" onclick="location.href='${pageContext.request.contextPath}/user/s-joinForm'">가입하기</button>
							</div>
						</li>
					</ul>
				</div>
			</div>

		</div>

		<!-- 푸터 -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	</div>


</body>
</html>