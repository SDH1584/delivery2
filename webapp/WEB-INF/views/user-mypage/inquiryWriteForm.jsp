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
<link href="${pageContext.request.contextPath}/assets/css/user-mypage/inquiryWriteForm.css" rel="stylesheet">

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
					<li id="aside-top">마이페이지</li>
					<li><a href="https://www.naver.com/" class="link2">회원정보수정</a></li>
					<li><a href="https://www.naver.com/" class="link2">주소 등록/수정</a></li>
					<li><a href="https://www.naver.com/" class="link2">주문내역</a></li>
					<li><a href="${pageContext.request.contextPath}/mypage/point" class="link2">포인트 확인</a></li>
					<li><a href="https://www.naver.com/" class="link2">리뷰내역</a></li>
					<li><a href="${pageContext.request.contextPath}/mypage/inquiryList" class="link2">고객센터</a></li>
					<li><a href="${pageContext.request.contextPath}/mypage/inquiryList" class="link2">문의내역보기</a></li>
					<li><a href="${pageContext.request.contextPath}/mypage/inquiryWriteForm" class="link2">문의글 작성</a></li>
				</ul>
			</div>
			<!-- aside-->


			<div id="main">
				<span id="formtitle">1대1문의</span> <br>
				<table id="qnaForm">
					<tr>
						<td class="element">제목</td>
						<td><label id="selection"></label> <select size="1" id="select">
								<option value="one">내용1</option>
								<option value="two">내용2</option>
								<option value="three">내용3</option>
								<option value="four" selected>선택하세요</option>
						</select> <br> <label><input type="text" id="title"></label></td>
					</tr>
					<tr>
						<td class="element">주문번호</td>
						<td><label><input type="text" id="ordernum"></label>
							<button type="button" class="ref">주문조회</button></td>
					</tr>
					<tr>
						<td class="element">이메일</td>
						<td><input type="text" id="email"> <label> <input type="checkbox" name="subject" value=""> 답변수신을 이메일로 받겠습니다
						</label></td>
					</tr>
					<tr>
						<td class="element">휴대폰번호</td>
						<td><input type="text" id="hp"> <label> <input type="checkbox" name="subject" value=""> 답변 수신을 문자메세지로 받겠습니다
						</label></td>
					</tr>
					<tr>
						<td class="element">내용</td>
						<td id="qnacheck"><br> <br> <textarea id="textarea"></textarea></td>
					</tr>
					<tr>
						<td class="element">이미지</td>
						<td><input type="file" name="profile" id="filesubmit"></td>
					</tr>

				</table>
				<br>
				<button type="submit" id="submit">문의 등록</button>
			</div>

		</div>
		<!-- 모달 -->
		<div id="ordersearch" class="modal fade bs-example-modal-sm">
			<div class="modal-dialog modal-xm">
				<div class="modal-content clearfix">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>

						</button>
						<h4 class="modal-title">주문 조회</h4>
					</div>

					<div class="modal-body"></div>
					<!-- modal-body -->
					주문번호를 입력해주세요<br> <input type="text" id="ordernumpopup">
					<button type="button" class="ref">조회</button>
					<br> 
					<div class="modal-footer"></div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
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
<script type="text/javascript">
	$(".ref").on("click", function() {
		console.log("메뉴 클릭")
		$("#ordersearch").modal('show');
	});
</script>
</html>