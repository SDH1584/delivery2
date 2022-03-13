<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="./assets/jquery-1.12.4.js"></script>
<link href="${pageContext.request.contextPath}/assets/css/total.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/store/menuManage.css" rel="stylesheet" type="text/css">
</head>

<body>
	<div id="wrap" class="box-gray clearfix">
		<!-- 가게 헤더 -->
		<c:import url="/WEB-INF/views/includes/store-header.jsp"></c:import>
		<!-- contents -->
		<div id="contents" class="clearfix">
			<!-- aside-->
			<div id="aside">
				<ul>
					<li><a href="${pageContext.request.contextPath}/store/menuManage" class="link2">메뉴추가</a></li>
					<li><a href="https://www.naver.com/" class="link2">댓글 게시판</a></li>
					<li><a href="https://www.naver.com/" class="link2">리뷰 게시판</a></li>
				</ul>
			</div>
			<!-- aside-->
			<div id="main">
				<div class="modal">
					<div class="modal_body">
						<form method="get" action="${pageContext.request.contextPath}/store/menucataadd">
							<input type="text" name="menu_cate_name" value="" class="textcate">
							<button type="submit" class="catebtnadd2">카테고리 등록</button>
						</form>
					</div>
				</div>

				<div id="list">
					<ul>
						<li>
							<button type="button" class="catebtnadd">+</button>
						</li>
						<li class="category">카테고리</li>
						<c:forEach items="${requestScope.menucatelist}" var="menucatelist">
							<li class="category"><a href="${pageContext.request.contextPath}/store/menuManage2?menu_cate_no=${menucatelist.menu_cate_no}">${menucatelist.menu_cate_name}</a></li>
						</c:forEach>
					</ul>
				</div>




				<div class="modal2">

					<div class="modal_body2">
						<form method="post" action="${pageContext.request.contextPath}/store/menuadd" enctype="multipart/form-data">
							<table class="file">
								<tbody>
									<tr>
										<td style="border: solid 1px rgb(223, 220, 220); height: 270px; width: 250px; padding: 0px;" id="image_container"><img id="menu_img" class="img2"></td>
									</tr>
									<tr>
										<td colspan="9" style="padding: 0px;">
											<!--button-->
											<div class="upload-btn_wrap">
												<button type="button">
													<span>메뉴사진</span>
												</button>
												<input type="file" class="input_file" id="image" onchange="setThumbnail(event);" name="file">
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						
							<table class="menu">
								<tbody>
									<tr>
										<th>구분</th>
										<td><select name="menu_cate_no" class="sort">
												<option selected="selected">선택하세요</option>
												<c:forEach items="${requestScope.menucatelist}" var="menucatelist">
													<option value="${menucatelist.menu_cate_no}">${menucatelist.menu_cate_name}</option>
												</c:forEach>
										</select></td>
										<th>가격</th>
										<td><input type="text" name="menu_price"></td>
									</tr>
									<tr>
										<th>메뉴이름</th>
										<td colspan="3"><input type="text" name="menu_name"></td>
									</tr>
									<tr>
										<th>상세정보</th>
										<td colspan="3"><textarea class="autosize" name="menu_desc"></textarea></td>
									</tr>
								</tbody>
							</table>
							<button type="submit" class="manuadd">등록</button>
						</form>
					</div>
				</div>
				<button type="button" class="manuaddbtn">메뉴추가</button>
			<c:forEach items="${requestScope.menulist}" var="menulist">
				<table class="manulist">
					<tbody>
						<tr>
							<td style="width: 150px;" rowspan="3"><a href="${pageContext.request.contextPath}/store/menuOption?menu_no=${menulist.menu_no}"><img id="profile-img" src="${pageContext.request.contextPath}/upload/${menulist.menu_img}"></a></td>
							<th>메뉴이름</th>
							<th>${menulist.menu_name}</th>
							<th>가격</th>
							<th>${menulist.menu_price}</th>
						</tr>

						<tr>
							<th colspan="5" style="text-align: left; padding-left: 30px;">상세정보</th>
						</tr>

						<tr>
							<td style="text-align: left; height: 93px; padding-left: 30px;" colspan="4">${menulist.menu_desc}</td>
						</tr>
					</tbody>
				</table>
			</c:forEach>
			</div>
		</div>
	</div>
	<!-- 푸터 -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

</body>

<script>
    //카테고리 등록 + 버튼 클릭시
        const body = document.querySelector('body');
        const modal = document.querySelector('.modal');
        const btnOpenPopup = document.querySelector('.catebtnadd');
  
        btnOpenPopup.addEventListener('click', () => {
          modal.classList.toggle('show');
  
          if (modal.classList.contains('show')) {
            body.style.overflow = 'hidden';
          }
        });
  
        modal.addEventListener('click', (event) => {
          if (event.target === modal) {
            modal.classList.toggle('show');
  
            if (!modal.classList.contains('show')) {
              body.style.overflow = 'auto';
            }
          }
        });
</script>

<script>
    //메뉴추가  버튼 클릭시
        const body2 = document.querySelector('body');
        const modal2 = document.querySelector('.modal2');
        const btnOpenPopup2 = document.querySelector('.manuaddbtn');
  
        btnOpenPopup2.addEventListener('click', () => {
          modal2.classList.toggle('show');
  
          if (modal2.classList.contains('show')) {
            body2.style.overflow = 'hidden';
          }
        });
  
        modal2.addEventListener('click', (event) => {
          if (event.target === modal2) {
            modal2.classList.toggle('show');
  
            if (!modal2.classList.contains('show')) {
              body2.style.overflow = 'auto';
            }
          }
        });


$("textarea.autosize").on('keydown keyup', function () {
    $(this).height(1).height( $(this).prop('scrollHeight')+12 );	
});
</script>

<script>
function setThumbnail(event) {
	var reader = new FileReader();
	reader.onload = function(event) {
		document.getElementById("menu_img").src = event.target.result;
	}
	reader.readAsDataURL(event.target.files[0]);
}
</script>

</html>