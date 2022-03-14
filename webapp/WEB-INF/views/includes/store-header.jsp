<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

	<div id="header" class="clearfix">
			<h1>
				<a href=""><img src="${pageContext.request.contextPath}/assets/images/kurly.PNG"></a>
			</h1>
		</div>

		<div id="nav">
			<ul class="clearfix ullink1">
				<li><a href="https://www.naver.com/" class="link2">주문현황</a></li>
				<li><a href="https://www.naver.com/" class="link2">지난주문</a></li>
				<li><a href="${pageContext.request.contextPath}/store/storeEdiForm" class="link2">가게정보수정</a></li>

				<ul class="ullink2">
					<li><a href="" class="link2">${sessionScope.map.ID}님의 가게</a></li>
					<li><a href="${pageContext.request.contextPath}/user/logout" class="link2">로그아웃</a></li>
				</ul>
			</ul>
		</div>

		<div id="nav2">
			<a href=""><img src="${pageContext.request.contextPath}/assets/images/header.PNG" class="h2img"></a>
		</div>
