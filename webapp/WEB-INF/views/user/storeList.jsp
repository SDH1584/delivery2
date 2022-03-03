<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/assets/css/total.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/user/storeList.css" rel="stylesheet" type="text/css">
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
                    <li><a href="https://www.naver.com/" class="link2">전체보기</a></li>    
                    <li><a href="https://www.naver.com/" class="link2">1인주문</a></li>    
                    <li><a href="https://www.naver.com/" class="link2">프랜차이즈</a></li>
                    <li><a href="https://www.naver.com/" class="link2">치킨</a></li>    
                    <li><a href="https://www.naver.com/" class="link2">피자/양식</a></li>    
                    <li><a href="https://www.naver.com/" class="link2">중국집</a></li>    
                    <li><a href="https://www.naver.com/" class="link2">한식</a></li>    
                    <li><a href="https://www.naver.com/" class="link2">일식/돈가스</a></li>
                    <li><a href="https://www.naver.com/" class="link2">족발/보쌈</a></li>
                    <li><a href="https://www.naver.com/" class="link2">야식</a></li>
                    <li><a href="https://www.naver.com/" class="link2">분식</a></li>
                    <li><a href="https://www.naver.com/" class="link2">카페/디저트</a></li>                
                </ul>
            </div>
            <!-- aside-->
            <div class="conten2" >
                <p class="search" style="font-size: 13px;"><strong style="margin-right: 10px;">검색</strong><input type="text" name="" value="" class="search2"></p>
                <select name="km" class="sort">
                <option value="ll" selected="selected" >기본정렬순</option> <!--selected="selected" 미리 선택 가능 -->
                <option value="sk">추천 많은순</option>
                <option value="kt">리뷰 많은순</option>
                <option value="lg">최소주문금액순</option>
                <option value="et">거리순</option>
            </select>
             
            </div>
            <div class="conten">
                <table>
                    <tbody>
                        <tr>
                            <th class="imgtable"  rowspan="4"><img id="profile-img" src="${pageContext.request.contextPath}/assets/images/전체.PNG"></th>
                            <td>기본배달료</td>
                            <td>3000원</td>
                        </tr>
                        <tr>
                            <td>위치</td>
                            <td>2.4km</td>
                        </tr>
                        <tr>
                            <td>전화번호</td>
                            <td>02-1234-1234</td>
                        </tr>
                        <tr>
                            <td>추천개수</td>
                            <td>123개</td>
                        </tr>
                    </tbody>
                </table>

            </div>
            
            <div class="conten">
                
                <table>
                    <tbody>
                        <tr>
                            <th class="imgtable"  rowspan="4"><img id="profile-img" src="${pageContext.request.contextPath}/assets/images/전체.PNG"></th>
                            <td>기본배달료</td>
                            <td>3000원</td>
                        </tr>
                        <tr>
                            <td>위치</td>
                            <td>2.4km</td>
                        </tr>
                        <tr>
                            <td>전화번호</td>
                            <td>02-1234-1234</td>
                        </tr>
                        <tr>
                            <td>추천개수</td>
                            <td>123개</td>
                        </tr>
                    </tbody>
                </table>

            </div>

            <div id="main">
               
            </div>
           
        </div>
		<!-- 푸터 -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
    </div>


    </body>
</html>