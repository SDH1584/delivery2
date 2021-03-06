<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="./assets/jquery-1.12.4.js"></script>
<link href="${pageContext.request.contextPath}/assets/css/total.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/store/menuOption.css" rel="stylesheet" type="text/css">
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
                    <li><a href="https://www.naver.com/" class="link2">주문현황</a></li>
                    <li><a href="https://www.naver.com/" class="link2">지난주문</a></li>
                    <li><a href="https://www.naver.com/" class="link2">가게정보수정</a></li>   
                </ul>
            </div>
            <!-- aside-->
        <div id="main">
                    <div>
                        <table id="manu">
                            <tbody>
                                <tr>
                                    <td style="width: 150px;" rowspan="3"><img id="profile-img" src="${pageContext.request.contextPath}/upload/${Menuone.menu_img}"></td>
                                    <th>메뉴이름</th>
                                    <th>${requestScope.Menuone.menu_name}</th>
                                    <th>가격</th>
                                    <th>${requestScope.Menuone.menu_price}</th>
                                </tr>
                                
                                <tr>
                                    <th colspan="5"  style="text-align: left; padding-left: 30px;">상세정보</th>
                                </tr>
        
                                <tr>
                                    <td style="text-align: left;  height: 93px; padding-left: 30px;" colspan="4">${requestScope.Menuone.menu_desc}</td>
                                    <td><button type="submit" class="modi">수정</button> </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
            
            <div class="clearfix" id="op">

                    <div id="list">
                        <ul>
                            <li><div class="modal">

                                    <div class="modal_body">
                                        <form action="${pageContext.request.contextPath}/admin/menuOptioncateadd">
                                            <table style="margin: 0px;">
                                                <tbody>
                                                    <tr>
                                                        <th>구분</th>
                                                        <th>사이드체크</th>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        	<input type="hidden" name="menu_no" value="${requestScope.Menuone.menu_no}" class="textcate">
                                                            <input type="text" name="option_cate_name" value="" class="textcate">
                                                        </td>
                                                        <td>
                                                            <span>
                                                                <input type="checkbox" name="chk_rdo" value="1" class="chbtn">
                                                            </span>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <button type="submit" class="opcate"> 카테고리 등록</button>
                                        </form>
                                    </div>
                                </div>
                                <button type="button" class="optionadd">+</button></li>
                            <c:forEach items="${requestScope.menuOptioncateList}" var="menuOptioncateList">
                            <li class="category"><a href="${pageContext.request.contextPath}/admin/menuOption?menu_no=${requestScope.Menuone.menu_no}&option_cate_no=${menuOptioncateList.option_cate_no}">${menuOptioncateList.option_cate_name}</a></li>
                            </c:forEach>        
                        </ul>
                    </div>
                    
                    <div class="modal2">

                        <div class="modal_body2">
                            <form action="${pageContext.request.contextPath}/admin/cateOption">
                                <table id="optionmodal" style="margin: 0px;">
                                    <tbody>

                                        <tr>
                                            <th>구분</th>
                                            <th>옵션</th>
                                            <th>가격</th>
                                        </tr>

                                        <tr>
                                            <td>
                                                <select name="optionCateNo" class="sort">
                                                    <c:forEach items="${requestScope.menuOptioncateList}" var="menuOptioncateList">
                                                    <option value="${menuOptioncateList.option_cate_no}">${menuOptioncateList.option_cate_name}</option>
                                                	</c:forEach>
                                                </select>
                                            </td>
                                            <td>
                                                <input type="text" name="optionName" value="">
                                            </td>
                                            <td>
                                                <input type="text" name="optionPrice" value="">
                                            </td>
                                            
                                            <td>
                                            	<input type="hidden" name="menuNo" value="${requestScope.Menuone.menu_no}">
                                            </td>
                                        </tr>        
                                    </tbody>
                                </table>
                                <button type="submit" class="optionmodaladd">등록</button>
                            </form>
                        </div>
                    
                    </div>
                    
                <div class="optiontable">
                    <button type="button" class="optionadd2">+</button>
                    <table class="option">
                        <tbody id="memDiv">
                            <tr>
                                <th style="width: 200px">옵션</th>
                                <th style="padding-left: 150px;">가격</th>
                            </tr>
                            <tr>
                                <td>곱빼기</td>
                                <td style="padding-left: 150px;">1000원</td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- <img id="profile-img" src="./assets/img/jung.jpg"> -->
        </div>
        </div>
		<!-- 푸터 -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
    </div>


    </body>

    <script>
        //옵션 카테고리 + 버튼 클릭시
            const body = document.querySelector('body');
            const modal = document.querySelector('.modal');
            const btnOpenPopup = document.querySelector('.optionadd');
      
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
    //옵션추가  버튼 클릭시
        const body2 = document.querySelector('body');
        const modal2 = document.querySelector('.modal2');
        const btnOpenPopup2 = document.querySelector('.optionadd2');
  
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
</script>

</html>