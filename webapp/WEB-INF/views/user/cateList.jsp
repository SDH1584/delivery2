<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/assets/css/total.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/user/cateList.css" rel="stylesheet" type="text/css">
</head>

    <body>
    <div id="wrap" class="box-gray clearfix">
		
		<!-- 사용자 헤더 -->
		<c:import url="/WEB-INF/views/includes/customer-header.jsp"></c:import>
		
        <!-- contents -->
        <div id="contents" class="clearfix">
        
            <div class="fileimg">
                <a href="${pageContext.request.contextPath}/user/storeList"><img src="${pageContext.request.contextPath}/assets/images/전체.PNG" class="img2"></a>
            </div>
		<c:forEach items="${requestScope.StorecateList}" var="StorecateVo">
            <div class="fileimg">
                <a href="${pageContext.request.contextPath}/user/storeList?store_cate_no=${StorecateVo.store_cate_no}" ><img src="${pageContext.request.contextPath}/assets/images/${StorecateVo.store_cate_no}.PNG" class="img2"></a>
            </div>
    
            </c:forEach>
        </div>
		<!-- 푸터 -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</div>

    </body>
</html>