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

            <div class="fileimg">
                <a href="${pageContext.request.contextPath}/user/storeList?store_cate_name=one" ><img src="${pageContext.request.contextPath}/assets/images/1인.PNG" class="img2"></a>
            </div>
            
            <div class="fileimg">
                <a href="${pageContext.request.contextPath}/user/storeList?store_cate_name=Chinese"><img src="${pageContext.request.contextPath}/assets/images/중국집.PNG" class="img2"></a>
            </div>
            
            <div class="fileimg">
                <a href="${pageContext.request.contextPath}/user/storeList?store_cate_name=Korean"><img src="${pageContext.request.contextPath}/assets/images/한식.PNG" class="img2"></a>
            </div>
            
            <div class="fileimg">
                <a href="${pageContext.request.contextPath}/user/storeList?store_cate_name=chicken"><img src="${pageContext.request.contextPath}/assets/images/치킨.PNG" class="img2"></a>
            </div>
            
            <div class="fileimg">
                <a href="${pageContext.request.contextPath}/user/storeList?store_cate_name=jpane"><img src="${pageContext.request.contextPath}/assets/images/일식돈가스.PNG" class="img2"></a>
            </div>
            
            <div class="fileimg">
                <a href="${pageContext.request.contextPath}/user/storeList?store_cate_name=convenience"><img src="${pageContext.request.contextPath}/assets/images/편의점.PNG" class="img2"></a>
            </div>
            
            <div class="fileimg">
                <a href="${pageContext.request.contextPath}/user/storeList?store_cate_name=fran"><img src="${pageContext.request.contextPath}/assets/images/프랜.PNG" class="img2"></a>
            </div>
            
            <div class="fileimg">
                <a href="${pageContext.request.contextPath}/user/storeList?store_cate_name=pizza"><img src="${pageContext.request.contextPath}/assets/images/피자.PNG" class="img2"></a>
            </div>
            
            <div class="fileimg">
                <a href="${pageContext.request.contextPath}/user/storeList?store_cate_name=night"><img src="${pageContext.request.contextPath}/assets/images/야식.PNG" class="img2"></a>
            </div>
            
            <div class="fileimg">
                <a href="${pageContext.request.contextPath}/user/storeList?store_cate_name=jokbal"><img src="${pageContext.request.contextPath}/assets/images/족발.PNG" class="img2"></a>
            </div>
            
            <div class="fileimg">
                <a href="${pageContext.request.contextPath}/user/storeList?store_cate_name=cafe"><img src="${pageContext.request.contextPath}/assets/images/카페디저트.PNG" class="img2"></a>
            </div>
            
            <div class="fileimg">
                <a href="${pageContext.request.contextPath}/user/storeList?store_cate_name=Koreansnak"><img src="${pageContext.request.contextPath}/assets/images/분식.PNG" class="img2"></a>
            </div>
            
        </div>
		<!-- 푸터 -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</div>

    </body>
</html>