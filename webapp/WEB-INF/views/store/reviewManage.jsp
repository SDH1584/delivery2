<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/main.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/store-review-manage.css" rel="stylesheet">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

</head>
<body>
	<div id="wrap" class="box-gray clearfix">


		<!-- 가게 헤더 -->
		<c:import url="/WEB-INF/views/includes/store-header.jsp"></c:import>

		<div id="container" class="clearfix">
			<!-- container -->

			<!-- 가게정보 수정 aside -->
			<c:import url="/WEB-INF/views/includes/aside/aside-store-admin.jsp"></c:import>
			
			<div id="main">
				<h3 id="review-manage">가게 리뷰 관리</h3>
				<div class="review-box">
					<div class="review-info">
						<table>
							<tr>
								<th>작성자</th>
								<td>kim1234님</td>
								<th>작성일</th>
								<td>2022년 2월 25일</td>
								<th>추천</th>
								<td class="btn">
									<button type="button" class="btn-reply">답글</button>
									<button type="button" class="btn-blind">블라인드</button>
								</td>
							</tr>
						</table>
					</div>
					<!-- review info -->

					<img class="review-img" src="./치킨.jpg">
					<p class="review-menu">펌치킨/콜라</p>
					<p class="review-content">이번에 처음 주문했는데, 은근 매력있어요! 대부분 맛쵸킹을 먹었는데 얘도 앞으로 주문할듯요 ^ ^</p>
				</div>
				<!-- review box -->

				<div class="review-box">
					<div class="review-info">
						<table>
							<tr>
								<th>작성자</th>
								<td>kim1234님</td>
								<th>작성일</th>
								<td>2022년 2월 25일</td>
								<th></th>
								<td class="btn">
									<button type="button" class="btn-reply">답글수정</button>
									<button type="button" class="btn-blind">블라인드</button>
								</td>
							</tr>
						</table>
					</div>
					<!-- review info -->

					<img class="review-img" src="./치킨.jpg">
					<p class="review-menu">펌치킨/콜라</p>
					<p class="review-content">치즈볼 시켰는데 누락되서 환불할건지 취소할건지 물어보고 연락 달라고 하니까 다시 연락와서 이미 출발했다고 해버려서 황당했는데, 밖에 종이 봉투 던지는 소리가 집 안까지 들려서 기분 나뻐서 먹을맛 사라집니다. 누락된것도 기분 별로지만 다시 와서 던지고 가는 소리 더 기분 나빠요. 그리고 순살 다시는 안시킵니다. 세일하는 이유가 있네요 맥도날드 너겟같은 맛이라 깜짝 놀랬어요. 뼈있는걸로 후라이드나 순살은 완전 별로네요. 다신 여기서 안시켜요. 요기요 패스 가입한거 아깝네요. 패스 해지하고 다신 요기요 어플 안쓸겁니다.</p>
					<div class="reply">
						<span> └ 사장님</span> <span class="reply-date">22년 2월 26일</span>
						<p class="reply-content">안녕하세요! 맛환장을 믿고 주문해주셔서 감사합니다! 언제나 정성 가득 담아 변함없는 맛과 양 유지하며 더 좋은 서비스로 보답해드리겠습니다. 또 불러주세요🥰 항상 고객만족에 최선을 다하는 맛환장이 되도록 하겠습니다. 항상 건강하시고 좋은 일들만 가득하세요. 감사합니다!</p>
					</div>



				</div>
				<!-- review box -->

				<div class="review-box">
					<div class="review-info">
						<table>
							<tr>
								<th>작성자</th>
								<td>kim1234님</td>
								<th>작성일</th>
								<td>2022년 2월 25일</td>
								<th>추천</th>
								<td class="btn">
									<button type="button" class="btn-reply">답글</button>
									<button type="button" class="btn-blind">블라인드</button>
								</td>
							</tr>
						</table>
					</div>
					<!-- review info -->

					<img class="review-img" src="./치킨.jpg">
					<p class="review-menu">펌치킨/콜라</p>
					<p class="review-content">이번에 처음 주문했는데, 은근 매력있어요! 대부분 맛쵸킹을 먹었는데 얘도 앞으로 주문할듯요 ^ ^</p>
				</div>
				<!-- review box -->

				<div class="review-box">
					<div class="review-info">
						<table>
							<tr>
								<th>작성자</th>
								<td>kim1234님</td>
								<th>작성일</th>
								<td>2022년 2월 25일</td>
								<th>추천</th>
								<td class="btn">
									<button type="button" class="btn-reply">답글</button>
									<button type="button" class="btn-blind">블라인드</button>
								</td>
							</tr>
						</table>
					</div>
					<!-- review info -->

					<img class="review-img" src="./치킨.jpg">
					<p class="review-menu">펌치킨/콜라</p>
					<p class="review-content">이번에 처음 주문했는데, 은근 매력있어요! 대부분 맛쵸킹을 먹었는데 얘도 앞으로 주문할듯요 ^ ^</p>
				</div>
				<!-- review box -->
			</div>
			<!-- main -->

		</div>
		<!-- //container -->


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
		<!-- footer -->
	</div>
	<!-- //wrap -->

	<!-- 답글달기모달 -->
	<div id="replyModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">답글 달기</h4>
				</div>

				<div class="modal-body">
					<form action="" method="post">
						<p>리뷰내용</p>
						<p class="review-content">이번에 처음 주문했는데, 은근 매력있어요! 대부분 맛쵸킹을 먹었는데 얘도 앞으로 주문할듯요 ^ ^</p>
						<textarea class="reply-write-area"></textarea>
					</form>
				</div>
				<div class="modal-footer">
					<button type="submit" class="reply-write">등록</button>
					<button type="button" class="reply-close">닫기</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>

</body>

<script type="text/javascript">
	/* 답글 달기 */
	$(".btn-reply").on("click", function() {
		console.log("답글달기 클릭");
		$("#replyModal").modal('show');
	});

	/* 답글모달 닫기 */
	$(".reply-close").on("click", function() {
		console.log("답글달기 닫기");
		$("#replyModal").modal('hide');
	});
</script>
</html>