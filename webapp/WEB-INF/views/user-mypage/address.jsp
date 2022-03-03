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
<link href="${pageContext.request.contextPath}/assets/css/user-mypage/address.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/mypage.css" rel="stylesheet">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

</head>
<body>
	<div id="wrap" class="box-gray clearfix">


		<!-- 고객 헤더 -->
		<c:import url="/WEB-INF/views/includes/customer-header.jsp"></c:import>

		<!-- contents -->
		<div id="contents" class="clearfix">

			<!-- aside-->
			<div id="aside">
				<ul>
					<li id="aside-top">마이페이지</li>
					<li><a href="https://www.naver.com/" class="link2">회원정보수정</a></li>
					<li><a href="https://www.naver.com/" class="link2">주소 등록/수정</a></li>
					<li><a href="https://www.naver.com/" class="link2">주문내역</a></li>
					<li><a href="https://www.naver.com/" class="link2">포인트 확인</a></li>
					<li><a href="https://www.naver.com/" class="link2">리뷰내역</a></li>
					<li><a href="https://www.naver.com/" class="link2">고객센터</a></li>
				</ul>
			</div>
			<!-- aside-->

			<div id="main">
				<div id="address-header" class="clearfix">
					<h3>배송지 관리</h3>
					<button type="button" id="newAddress" class="addressModify">+ 새 배송지 추가</button>
				</div>

				<table id="addressTable">
					<tr>
						<th>기본배송지</th>
						<th>주소</th>
						<th>주소명</th>
						<th>연락처</th>
						<th>수정</th>
					<tr>
					<tr>
						<td>
							<div id="default-adress">기본배송지</div>
						</td>
						<td class="address">서울시 관악구 관악대로12길 15 303호</td>
						<td>집</td>
						<td>010-1234-1234</td>
						<td><button type="button" class="addressModify">
								<img src="${pageContext.request.contextPath}/assets/images/btn_modify.JPG">
							</button></td>
					</tr>
					<tr>
						<td></td>
						<td class="address">서울시 관악구 관악대로12길 15 303호</td>
						<td>부모님 집</td>
						<td>010-1234-1234</td>
						<td><button type="button" class="addressModify">
								<img src="${pageContext.request.contextPath}/assets/images/btn_modify.JPG">
							</button></td>
					</tr>
					<tr>
						<td></td>
						<td class="address">서울시 관악구 관악대로12길 15 303호</td>
						<td>학교</td>
						<td>010-1234-1234</td>
						<td><button type="button" class="addressModify">
								<img src="${pageContext.request.contextPath}/assets/images/btn_modify.JPG">
							</button></td>
					</tr>
				</table>
			</div>

		</div>

		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	</div>


	<!-- 주소 등록/수정 -->
	<div id="addressModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">주소 등록/수정</h4>
				</div>

				<div class="modal-body">
					<form>
						<div id="modal-address-input">
							<input type="text" name="addressMain" value="" id="addressMain" placeholder="주소를 검색해주세요">
							<button type="button" id="addressSearch">검색</button>
						</div>
						<input type="text" name="addressSub" value="" placeholder="나머지 주소를 입력해주세요"> <label for="addressName">주소명</label> <input type="text" name="addressName" value="" placeholder=""> <label for="addressHp">전화번호</label> <input type="text" name="addressHp" value="" placeholder="">
						<div id="modal-button">
							<button type="submit" class="address-write">저장</button>
							<button type="button" class="address-close">닫기</button>

						</div>
					</form>
				</div>
				<div class="modal-footer"></div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>

</body>

<script type="text/javascript">
	/* 주소 등록수정 */
	$(".addressModify").on("click", function() {
		console.log("주소창 클릭");
		$("#addressModal").modal('show');
	});

	/* 주소등록창 닫기 */
	$(".reply-close").on("click", function() {
		console.log("닫기");
		$("#addressModal").modal('hide');
	});
	
	/* 주소등록창 닫기 */
	$(".address-close").on("click", function() {
		console.log("닫기");
		$("#addressModal").modal('hide');
	});
	
</script>
</html>