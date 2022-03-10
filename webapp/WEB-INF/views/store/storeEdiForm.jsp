<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/assets/css/store/storeEdiForm.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/total.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
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
					<li><a href="https://www.naver.com/" class="link2">메뉴추가</a></li>
					<li><a href="https://www.naver.com/" class="link2">댓글 게시판</a></li>
					<li><a href="https://www.naver.com/" class="link2">첨부 게시판</a></li>
				</ul>
			</div>
			<!-- aside-->
			<div id="main">
				<form method="post" action="${pageContext.request.contextPath}/store/modify" enctype="multipart/form-data">
					<div>
						<table id="table1">
							<tbody>
								<tr>
									<th>사업자등록번호</th>
									<td><span>${requestScope.businessVo.bizNo}</span></td>
									<th>상호명</th>
									<td><input type="text" name="storeName" value="${requestScope.businessVo.storeName}"></td>
								</tr>
								<tr>
									<th>가게번호</th>
									<td><span><input type="text" name="storePhone" value="${requestScope.businessVo.storePhone}" style="width: 100px;"></span></td>
									<th>휴대전화</th>
									<td><input type="text" name="hp" value="${requestScope.UserVo.hp}"></td>
								</tr>
								<tr>
									<th>Email</th>
									<td colspan="3"><input type="text" name="email" value="${requestScope.UserVo.email}"></td>
								</tr>
								<tr>
									<th>주소</th>
									<td colspan="2"><input type="text" name="storeMAdr" value="${requestScope.businessVo.storeMAdr}"></td>
									<td class="tdpadding"><span class="spancolor"><a href="https://www.naver.com/"><span class="fontcolor">주소검색</span></a></span></td>
								</tr>
								<tr>
									<th>상세주소</th>
									<td colspan="3"><input type="text" name="storeSAdr" value="${requestScope.businessVo.storeSAdr}"></td>
								</tr>
								<tr>
									<th>최소주문금액</th>
									<td colspan="3"><input type="text" name="minPrice" value="${requestScope.businessVo.minPrice}"></td>
								</tr>
								<tr>
									<th>기본배달지역</th>
									<td colspan="3" class="tdpadding"><span class="spancolor"><span class="fontcolor" id="btnOptAdd">배달지추가</span></span></td>
								</tr>

                        		<tbody id="memDiv">

                            
	                        	</tbody>

								<tr>
									<th>배달가능지역</th>
									<td colspan="2"><input type="text" name="delivery_area" value="${requestScope.DeliveryVo.delivery_area}"></td>
									<td class="tdpadding"><span class="spancolor"><a href="https://www.naver.com/"><span class="fontcolor">주소검색</span></a></span></td>
								</tr>
								<tr>
									<th colspan="4">영업시간</th>
								</tr>
								<tr>
									<th>요일</th>
									<th>오픈시간</th>
									<th>마감시간</th>
									<th style="text-align: center;">휴일체크</th>
								</tr>
								<tr>
									<th>월<input type="hidden" name="day" value="월"></th>
									<td><input type="text" name="" value=""></td>
									<td><span><input type="text" name="" value=""></span></td>
									<td><span><input type="checkbox" name="day_off" value="1" class="chbtn"></span></td>
								</tr>

								<tr>
									<th>화<input type="hidden" name="day" value="화"></th>
									<td><input type="text" name="" value="1"></td>
									<td><span><input type="text" name="" value=""></span></td>
									<td><span><input type="checkbox" name="day_off" value="1" class="chbtn"></span></td>
								</tr>

								<tr>
									<th>수<input type="hidden" name="day" value="수"></th>
									<td><input type="text" name="" value=""></td>
									<td><span><input type="text" name="" value=""></span></td>
									<td><span><input type="checkbox" name="day_off" value="1" class="chbtn"></span></td>
								</tr>

								<tr>
									<th>목<input type="hidden" name="day" value="목"></th>
									<td><input type="text" name="" value=""></td>
									<td><span><input type="text" name="" value=""></span></td>
									<td><span><input type="checkbox" name="day_off" value="1" class="chbtn"></span></td>
								</tr>

								<tr>
									<th>금<input type="hidden" name="day" value="금"></th>
									<td><input type="text" name="" value=""></td>
									<td><span><input type="text" name="" value=""></span></td>
									<td><span><input type="checkbox" name="day_off" value="1" class="chbtn"></span></td>
								</tr>

								<tr>
									<th>토<input type="hidden" name="day" value="토"></th>
									<td><input type="text" name="" value=""></td>
									<td><span><input type="text" name="" value=""></span></td>
									<td><span><input type="checkbox" name="day_off" value="1" class="chbtn"></span></td>
								</tr>

								<tr>
									<th>일<input type="hidden" name="day" value="일"></th>
									<td><input type="text" name="" value=""></td>
									<td><span><input type="text" name="" value=""></span></td>
									<td><span><input type="checkbox" name="day_off" value="1" class="chbtn"></span></td>
								</tr>

							</tbody>
						</table>
					</div>
					<div class="logo">
						<p>
							<strong>가게로고</strong>
						</p>
					</div>


					<div class="logoimgline">
						<img id="logoImg" src="${pageContext.request.contextPath}/upload/${businessVo.logoImg}" class="img2" name="logoImg">
					</div>

					<div class="upload-btn_wrap">
						<button type="button">
							<span>이미지 등록</span>
						</button>
						<input type="file" class="input_file" id="image" onchange="setThumbnail(event);" name="file">
					</div>


					<div class="textbar">
						<p>
							<strong>사장님공지</strong>
						</p>
					</div>

					<div class="textarea">			
						
						<div>
							<input type="text" name="notice" value="${requestScope.businessVo.notice}" style="width: 250px;">
						</div>
					</div>
					
					<div class="textbar">
						<p>
							<strong>원산지 정보</strong>
						</p>
					</div>

					<div class="textarea">			
						
						<div>
							<input type="text" name="origin" value="${requestScope.businessVo.origin}" style="width: 250px;">
						</div>
					</div>

					<div>
						<button class="button1" type="submit">수정버튼</button>
					</div>
					<input type="text" name="storeNo" value="${requestScope.businessVo.storeNo}"> <input type="text" name="storeNo" value="${requestScope.UserVo.no}">
				</form>
			</div>
		</div>

	</div>
	<!-- 푸터 -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</body>



<script>
$("textarea.autosize").on('keydown keyup', function () {
  $(this).height(1).height( $(this).prop('scrollHeight')+12 );	
});
</script>


<script>

    //배달지 추가 클릭할때
$("#btnOptAdd").on("click", function(){
    console.log("배달지 추가");

    insertTr();
});

function insertTr() {

var insertTr = "";


insertTr += '<tr>';
insertTr += '<th>기본배달지역</th>';
insertTr += '<td><input type="text" name="" value="010-1234-1234"></td>';
insertTr += '<th class="tdpadding"><span style="margin-left: 40px;">배달료</span></th>';
insertTr += '<td><input type="text" name="" value="010-1234-1234"></td>';
insertTr += '</tr>';


$("#memDiv").append(insertTr);
}

</script>

<script>
		function setThumbnail(event) {
			var reader = new FileReader();
			reader.onload = function(event) {
			document
			.getElementById("logoImg").src = event.target.result;
			}
			reader
			.readAsDataURL(event.target.files[0]);
			}
</script>

</html>
