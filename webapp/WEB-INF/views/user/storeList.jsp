<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/assets/css/total.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/user/storeList.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/user/storeList2.css" rel="stylesheet" type="text/css">

</head>

    <body>
    <div id="wrap" class="box-gray clearfix">
		<!-- 사용자 헤더 -->
		<c:import url="/WEB-INF/views/includes/customer-header.jsp"></c:import>
		
        <!-- contents -->
        <div id="contents" class="clearfix">
             <!-- aside-->
             <div id="aside">
                <ul>
                	<li id="aside-top">주변가게</li>
                    <li><a href="${pageContext.request.contextPath}/user/storeList" class="link2">전체보기</a></li>    
                    <li><a href="${pageContext.request.contextPath}/user/storeList?store_cate_name=one" class="link2">1인주문</a></li>    
                    <li><a href="${pageContext.request.contextPath}/user/storeList?store_cate_name=Chinese" class="link2">중국집</a></li>
                    <li><a href="${pageContext.request.contextPath}/user/storeList?store_cate_name=Korean" class="link2">한식</a></li>    
                    <li><a href="${pageContext.request.contextPath}/user/storeList?store_cate_name=chicken" class="link2">치킨</a></li>    
                    <li><a href="${pageContext.request.contextPath}/user/storeList?store_cate_name=jpane" class="link2">일식/돈까스</a></li>    
                    <li><a href="${pageContext.request.contextPath}/user/storeList?store_cate_name=convenience" class="link2">편의점/마트</a></li>    
                    <li><a href="${pageContext.request.contextPath}/user/storeList?store_cate_name=fran" class="link2">프렌차이즈</a></li>
                    <li><a href="${pageContext.request.contextPath}/user/storeList?store_cate_name=pizza" class="link2">피자/양식</a></li>
                    <li><a href="${pageContext.request.contextPath}/user/storeList?store_cate_name=night" class="link2">야식</a></li>
                    <li><a href="${pageContext.request.contextPath}/user/storeList?store_cate_name=jokbal" class="link2">족발/보쌈</a></li>
                    <li><a href="${pageContext.request.contextPath}/user/storeList?store_cate_name=cafe" class="link2">카페/디저트</a></li>
                    <li><a href="${pageContext.request.contextPath}/user/storeList?store_cate_name=Koreansnak" class="link2">분식</a></li>                
                </ul>
            </div>
            <!-- aside-->
            
            <div id="main">
				
				<div id="title">
            		<h2 class="sub_title">주변가게</h2>
            	</div>

            	<div id="content" >
            		<div id="content-head" class="clearfix">
	            		<div class="left_box">
	                		<input  class="search2 txt-keyword" type="text" name="" value="" >
	                		<button class="btn">검색</button>
	                	</div>
	                	<div class="right_box">
	                		<select name="km" class="sel-sort">
	                		<option value="ll" selected="selected" >기본정렬순</option> <!--selected="selected" 미리 선택 가능 -->
			                	<option value="sk">추천 많은순</option>
			                	<option value="kt">리뷰 많은순</option>
			                	<option value="lg">최소주문금액순</option>
			                	<option value="et">거리순</option>
	            			</select>
	                	</div>
                	</div>
                	<!-- content-head -->
                	
                	<div id="content-body" class="clearfix">
                		<c:forEach items="${BusinessVo}" var="vo">
	                		<div class="storeBox">
				                <table>
				                    <colgroup>
				                    	<col width="28%">
				                    	<col width="19%">
				                    	<col width="15%">
				                    	<col width="9%">
				                    	<col width="14%">
				                    </colgroup>
				                    <tbody>
				                        <tr>
				                            <td class="profile-img-box"  rowspan="3">
				                            	<img class="profile-img" src="${pageContext.request.contextPath}/upload/${vo.logoImg}">
				                            </td>
				                            <td colspan="4" class="s-title">${vo.storeName}</td>
				                        </tr>
				                        <tr>
				                            <td>최소주문금액</td>
				                            <td colspan="3">${vo.minPrice}</td>
				                        </tr>
				                        <tr>
				                            <td>전화번호</td>
				                            <td>${vo.minPrice}</td>
				                            <td>추천</td>
				                            <td>${vo.cnt}</td>
				                        </tr>
				                    </tbody>
				                </table>
				            </div>
                		</c:forEach>
                	
                	</div>
                	<!-- content-body -->
                	
            	</div>
            	<!-- /content -->
          
             
            </div>
            
            
           
            <div id="main">
               
            </div>
           
        </div>
		<!-- 푸터 -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
    </div>


    </body>
</html>