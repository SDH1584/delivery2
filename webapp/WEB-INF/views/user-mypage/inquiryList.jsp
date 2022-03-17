<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/total.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/user-mypage/inquiryList.css" rel="stylesheet">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

</head>

<body>
	<div id="wrap" class="box-gray clearfix">


		<c:import url="/WEB-INF/views/includes/customer-header.jsp"></c:import>


		<!-- contents -->
		<div id="contents" class="clearfix">
			<!-- aside-->
			<div id="aside">
				<ul>
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
				<div id="formtitle">문의답변 보기</div>
				<table id="pointlist">
					<thead>
						<tr>
							<th>문의날짜</th>
							<th>문의번호</th>
							<th>문의종류</th>
							<th>제목</th>
							<th>답변대기중</th>
						</tr>
					</thead>
					<tbody>
						<tr data-toggle="collapse" data-target="#demo3" class="accordion-toggle">
							<td>2022-02-24</td>
							<td>1234456</td>
							<td>포인트</td>
							<td>포인트 미지급문의드립니다</td>
							<td>답변대기중</td>
						</tr>
						<tr>
							<td colspan="5" class="hiddenRow"><div id="demo3" class="accordian-body collapse">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div></td>
						</tr>
						<tr data-toggle="collapse" data-target="#demo3" class="accordion-toggle">
							<td>2022-02-24</td>
							<td>1234456</td>
							<td>포인트</td>
							<td>포인트 미지급문의드립니다</td>
							<td>답변대기중</td>
						</tr>
						<tr>
							<td colspan="5" class="hiddenRow"><div id="demo3" class="accordian-body collapse">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div></td>
						</tr>
						<tr id="last">
							<td>2022-02-24</td>
							<td>1234456</td>
							<td>포인트</td>
							<td>포인트 미지급문의드립니다</td>
							<td>답변대기중</td>
						</tr>

					</tbody>
				</table>
			</div>
			<div id="paging" class="clearfix">
				<ul>
					<li><a href="">◀</a></li>
					<li class="active"><a href="">1</a></li>
					<li><a href="">2</a></li>
					<li><a href="">3</a></li>
					<li><a href="">4</a></li>
					<li><a href="">5</a></li>
					<li><a href="">6</a></li>
					<li><a href="">7</a></li>
					<li><a href="">8</a></li>
					<li><a href="">9</a></li>
					<li><a href="">10</a></li>
					<li><a href="">▶</a></li>
				</ul>
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
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js'></script>

</html>