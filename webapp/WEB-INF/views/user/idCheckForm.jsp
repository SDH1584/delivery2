<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="${pageContext.request.contextPath}/assets/css/user/user.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>

</head>
<body onload="pValue()">
	<div id="wrap">
		<div id="idChk_page">
		<h3>아이디 중복체크</h3>
		<div id="chk">
			<form id="checkForm">
				<input type="text" name="idInput" id="userId">
				<button id="chkBtn" type="button" onclick="idCheck()" class="btn btn_default">중복확인</button>
			</form>
			<div id="msg"></div>
			<button type="button" id="cancleBtn" onclick="window.close()" class="btn btn_default">취소</button>
			<button type="button" id="useBtn" onclick="sendCheckValue()" class="btn btn_default">사용하기</button>
		</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	// 회원가입 페이지의 아이디 값을 가져온다
	function pValue() {
		document.getElementById("userId").value = opener.document.userInfo.id.value;
	}

	// 아이디 중복 체크
	function idCheck() {

		console.log("중복 확인 버튼 클릭")
		var id = document.getElementById("userId").value;

		if (!id) {
			console.log("아이디 입력값 없음")
			alert("아이디를 입력하지 않았습니다.");
			return false;
		} else {
			
			var userVo = {
				id: id
			};
			
			console.log(userVo);
			
			$.ajax({
						url : "${pageContext.request.contextPath }/user/id-check",
						type : "post",
						data : userVo,
						
						dataType : "json",
						success : function(result) {
							console.log("success")
							
							if (result == 0) {
								alert("사용할 수 없는 아이디입니다.");
								document.getElementById("cancleBtn").style.visibility = "visible";
								document.getElementById("useBtn").style.visibility = "hidden";
								document.getElementById("msg").innerHTML = "";
							} else {
								console.log("사용가능")
								document.getElementById("cancleBtn").style.visibility = "hidden";
								document.getElementById("useBtn").style.visibility = "visible";
								document.getElementById("msg").innerHTML = "사용 가능한 아이디입니다.";
							}

						},
						error : function(XHR, status, error) {
							console.error(status + ":" + error);
						}
					});

		}
	}

	// 사용하기 클릭 시 부모창으로 값 전달
	function sendCheckValue() {
		opener.document.userInfo.idDuplication.value = "idCheck";
		opener.document.userInfo.id.value = document.getElementById("userId").value;

		if (opener != null) {
			opener.chkForm = null;
			self.close();
		}

	}
</script>
</html>