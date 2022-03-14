<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div id="header" class="clearfix">
	<h1>
		<a href="https://www.naver.com/"><img src="${pageContext.request.contextPath}/assets/images/kurly.PNG"></a>
	</h1>
</div>

<div id="nav">
	<ul class="clearfix ullink1">
		<li><a href="${pageContext.request.contextPath}/user/cateList" class="link2">주변가게</a></li>
		<li><a href="${pageContext.request.contextPath}/main">주변예약</a></li>
		<li><a href="" class="link2">EVENT</a></li>

		<c:choose>
			<c:when test="${empty sessionScope.authUser}">
				<!-- 사용자 로그인 실패, 로그인 전 -->
				<ul class="ullink2">
					<li><a href="${pageContext.request.contextPath}/user/loginForm" class="link2">로그인</a></li>
					<li><a href="${pageContext.request.contextPath}/user/joinForm" class="link2">회원가입</a></li>
				</ul>
			</c:when>
			<c:otherwise>
				<!-- 사용자 로그인 성공 -->
				<ul class="ullink2">
					<li><a href="" class="link2">${sessionScope.authUser.id}님</a></li>
					<li><a href="${pageContext.request.contextPath}/user/logout" class="link2">로그아웃</a></li>
					<li><a href="${pageContext.request.contextPath}/mypage/editForm" class="link2">마이페이지</a></li>
					<li><a href="${pageContext.request.contextPath}/mypage/orderList" class="link2">주문내역</a></li>
				</ul>
			</c:otherwise>
		</c:choose>
	</ul>
</div>

<div id="nav2">
	<h2>
		<a href="https://www.naver.com/"><img src="${pageContext.request.contextPath}/assets/images/header.PNG" class="h2img"></a>
	</h2>
</div>