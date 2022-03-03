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
                    <li><a href="https://www.naver.com/" class="link2">주문현황</a></li>
                    <li><a href="https://www.naver.com/" class="link2">지난주문</a></li>
                    <li><a href="https://www.naver.com/" class="link2">가게정보수정</a></li>   
                </ul>
            </div>
            <!-- aside-->
            <div id="main">

                <div id="list">
                    <ul>
                        <li>
                            <div class="modal">

                                <div class="modal_body">
                                <form method="post" action="" enctype="">
                                    <input type="text" name="" value="2000" class="textcate">
                                    <button type="submit" class="catebtnadd2">카테고리 등록</button>
                                </form>
                                </div>
                            </div>
                            <button type="button" class="catebtnadd">+</button>
                        </li>    
                        <li class="category">카테고리</li>
                        <li class="category">세트</li>        
                    </ul>
                </div>




                        <div class="modal2">

                            <div class="modal_body2">
                                <form action="">
                                <table class="file">
                                    <tbody>
                                        <tr>
                                            <td style="border: solid 1px rgb(223, 220, 220); height: 270px; width:250px; padding: 0px;" id="image_container"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="9" style="padding: 0px;"><!--button-->
                                                <div class="upload-btn_wrap">
                                                  <button type="button">
                                                    <span>메뉴사진</span>  
                                                  </button>
                                                  <input type="file" class="input_file" id="image" onchange="setThumbnail(event);">
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
        
                                <table class="menu">
                                   <tbody>
                                       <tr>
                                           <th>구분</th>
                                           <td><select name="km" class="sort">
                                                    <option value="ll" selected="selected" >선택하세요</option> <!--selected="selected" 미리 선택 가능 -->
                                                    <option value="sk">세트</option>
                                                    <option value="sk">단품</option>
                                                 </select>
                                            </td>
                                           <th>가격</th>
                                           <td><input type="text" name="" value="2000"></td>
                                       </tr>
                                       <tr>
                                           <th>메뉴이름</th>
                                           <td colspan="3"><input type="text" name="" value="2000"></td>
                                       </tr>
                                       <tr>
                                        <th>상세정보</th>
                                        <td colspan="3"> <textarea class="autosize" placeholder=""></textarea></td>
                                    </tr>
                                   </tbody>
                                </table>
                                <button type="submit" class="manuadd">등록</button>
                            </form>
                            </div>
                        </div>
                        <button type="button" class="manuaddbtn">메뉴추가</button>

                    <table class="manulist">
                        <tbody>
                        <tr>
                            <td style="width: 150px;" rowspan="3"><a href="https://www.naver.com/"><img id="profile-img" src="./assets/img/jung.jpg"></a></td>
                            <th>메뉴이름</th>
                            <th>후라이드 치킨</th>
                            <th>가격</th>
                            <th>13000</th>
                        </tr>
                        
                        <tr>
                            <th colspan="5"  style="text-align: left; padding-left: 30px;">상세정보</th>
                        </tr>

                        <tr>
                            <td style="text-align: left;  height: 93px; padding-left: 30px;" colspan="4">원산지 어쩌고 저쩌고 솰라 솰라 </td>
                        </tr>
                    </tbody>
                    </table>
            <!-- <img id="profile-img" src="./assets/img/jung.jpg"> -->
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
    //파일 미리보기 기능
    function setThumbnail(event) { 
    var reader = new FileReader(); reader.onload = function(event) 
    { 
    var img = document.createElement("img"); 
    img.setAttribute("src", event.target.result); 
    document.querySelector("td#image_container").appendChild(img); 
    };
     reader.readAsDataURL(event.target.files[0]); 
    } 
</script> 

</html>