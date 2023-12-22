<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강후기</title>
<META name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=no">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
<link rel="stylesheet" href="/tobe/css/user_Header_Footer.css" />
</head>
<style>
.mainContent{
   width: 1200px;
   margin: 0 auto;
   position: relative;
   display: block;
   top: 12rem;
}
.subContentBar{
   margin-left: 800px;
}
.DetailSelectBtn{
   cursor: pointer;
      color: black;
      border: 0;
      /* display: flex; */
      /*align-items: center;
      justify-content: center;
      /* position: inherit; */
      font-size: 16px;
      /* padding: 8px 16px; */
      margin: 5px 10px;
      height: 34px;
      border-radius: 20px;
      background-color: #8ba888;
      border-color: #000;
      /* text-align: center; */
      letter-spacing: -0.5px;
      position: relative;
}
.DetailpayBtn{
   cursor: pointer;
      color: white;
      border: 0;
      /* display: flex; */
      /*align-items: center;
      justify-content: center;
      /* position: inherit; */
      font-size: 16px;
      /* padding: 8px 16px; */
      margin: 5px 10px;
      height: 34px;
      border-radius: 20px;
   background-color: #253528; 
   border-color: #000;
      /* text-align: center; */
      letter-spacing: -0.5px;
      position: relative;
}
.reviewQnA{
   width: 1200px;
   border-collapse: collapse;
}

.reviewQnA td {
    padding: 10px; /* 셀 안의 내용과 셀 경계 간의 간격 설정 */
    border: 1px solid #ddd; /* 셀 경계 선 설정 */
    text-align: center; /* 셀 내용 가운데 정렬 */
}

.reviewQnA tr:first-child {
    background-color: #8ba888; /* 첫 번째 행 배경색 설정 */
}
.reviewCol, .cqnaCol{
   display: none;
}
#detailButton, #reviewButton, #cqnaButton{
   width:100%;
   height:100%;
   cursor: pointer;
      color: white;
      border: 0;
      /* display: flex; */
      /*align-items: center;
      justify-content: center;
      /* position: inherit; */
      font-size: 16px;
      /* padding: 8px 16px; */
      margin: 5px 10px;
      height: 34px;
      border-radius: 20px;
      background-color: #8ba888;
      border-color: #000;
      /* text-align: center; */
      letter-spacing: -0.5px;
      position: relative;
}
</style>
<script>
document.addEventListener('DOMContentLoaded', function(){
   
    var detailButton = document.getElementById('detailButton');
    var reviewButton = document.getElementById('reviewButton');
    var cqnaButton = document.getElementById('cqnaButton');
    
    var buttons = [detailButton, reviewButton, cqnaButton];

    function setActiveButton(button) {
        // 모든 버튼 초기화
        buttons.forEach(function (btn) {
            btn.parentElement.style.backgroundColor = '#8ba888';
        });

        // 현재 버튼 활성화
        button.parentElement.style.backgroundColor = '#253528'; // 원하는 배경색으로 변경
    }
    
    var courseNo = <%= request.getParameter("course_no") %>;
    
    $.ajax({
		url: "/tobe/user/course/userCourseDetailQnaList.do?courseNo=${courseNo}",
		type: 'GET',
		success: function(courseInfo){
			console.log("반가워");
			console.log(courseInfo);
			document.querySelector('.cqnaCol').innerHTML = '<h2>' + courseInfo.cq_content + '</h2>';
		},
		error: function() {
			console.error('강좌 정보를 가져오는데 실패했습니다.');
		}
    });
    
    detailButton.addEventListener('click', function(){
    	hideAll();
    	toggleDisplay(detailCol);
    	moveSubContentToRelative();
    	setActiveButton(detailButton);
    });
    
    reviewButton.addEventListener('click', function() {
        hideAll();
        toggleDisplay(reviewCol);
        showReview();
        moveSubContentToTop();
        setActiveButton(reviewButton);
    });

    cqnaButton.addEventListener('click', function() {
        hideAll();
        toggleDisplay(cqnaCol);
        showQna();
        moveSubContentToTop();
        setActiveButton(cqnaButton);
    });
    
    var detailCol = document.querySelector('.detailCol');
    var reviewCol = document.querySelector('.reviewCol');
    var cqnaCol = document.querySelector('.cqnaCol');
    var subContentLecture = document.querySelector('.subContentLecture');
    var subContent = document.querySelector('.subContent');

    function toggleDisplay(element){
        element.style.display = (element.style.display === 'none' || element.style.display === '') ? 'block' : 'none';
    }

    function hideAll() {
        detailCol.style.display = 'none';
        reviewCol.style.display = 'none';
        cqnaCol.style.display = 'none';
    }

    function showReview() {
        hideAll();
        toggleDisplay(reviewCol);
    }

    function showQna() {
        hideAll();
        toggleDisplay(cqnaCol);
    }

    function moveSubContentToTop() {
        subContent.style.position = 'absolute';
        subContent.style.top = '0';
        subContentLecture.style.display = 'none'; // 숨기기
    }

    function moveSubContentToRelative() {
        subContent.style.position = 'relative';
        subContent.style.top = '';
        subContentLecture.style.display = 'block'; // 보이기
    }

    detailButton.addEventListener('click', function() {
        hideAll();
        toggleDisplay(detailCol);
        moveSubContentToRelative();
        setActiveButton(detailButton);
    });

    reviewButton.addEventListener('click', function() {
        hideAll();
        toggleDisplay(reviewCol);
        showReview();
        moveSubContentToTop();
        setActiveButton(reviewButton);
    });

    cqnaButton.addEventListener('click', function() {
        hideAll();
        toggleDisplay(cqnaCol);
        showQna();
        moveSubContentToTop();
        setActiveButton(cqnaButton);
    });
});


</script>
<body>
   <div class="wrap">
      <%@include file = "/WEB-INF/views/user/common/userHeader.jsp"%>
      <div class = "mainContent">
         <div class = "subContentLecture">
            <div class = "detailContent">
               <c:forEach var="lecture" items="${lectureList }">
                   <p><img src="${lecture.teacher_img_org}" alt="강사 이미지" width="50" height="50"></p>
                      <p>${lecture.cname}</p>
                      <p>${lecture.time}</p>
                      <p>${lecture.price}</p>
                  </c:forEach>
            </div>
            <div class = "subContentBar">
                <table>
                   <tr>
                      <td><button type="button" onclick="location.href='/tobe/user/common/userBasket.do'" class="DetailSelectBtn">장바구니 담기</button></td>
                      <td><button type="button" onclick="location.href='/tobe/user/common/userCompareCourse.do'" class="DetailSelectBtn">비교함 담기</button></td>
                      <td><button type="button" onclick="location.href='/tobe/user/pay/userPayDetail.do'" class="DetailpayBtn">결제 하기</button></td>
                   </tr>
                </table>
            </div>
         </div>
         <div class = "subContentInfo">
            <div class = "detailContent">
               <table class = "reviewQnA">
                  <tr>
                     <td><button type = "button" id = "detailButton">강좌 상세 내용</button></td>
                     <td><button type = "button" id = "reviewButton">강좌 후기</button></td>
                     <td><button type = "button" id = "cqnaButton">강좌 문의</button></td>
                  </tr>
                  <tr class = "detailCol">
                     <td colspan="3">
                        강좌상세정보
                     </td>
                  </tr>
                  <tr class = "reviewCol">
                     <td colspan="3">
                        후기목록   
                     </td>
                  </tr>
                  <tr class = "cqnaCol">
                     <td colspan="3">
                        <div id = "cqnaListContainer"></div>
                     </td>
                  </tr>
               </table>
            </div>
         </div>
         <div class = "subContent">
            <div class = "detailContent">
               
            </div>
         </div>
      </div>
   <%@include file = "/WEB-INF/views/user/common/userFooter.jsp" %>
   </div>
</body>
</html>