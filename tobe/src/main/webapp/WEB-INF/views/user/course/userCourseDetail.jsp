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
.body {
   min-width: 1200px;
   height: 100%;
}

.wrap {
   width: 1200px;
   /*height: 70rem;*/
   margin: 0 auto;
   position: relative;
}

* {
   box-sizing: border-box;
}

.header {
   width: 75rem;
   height: 15rem;
   position: absolute;
   top: 0;
   left: 0;
}

.header_memberBar {
   position: absolute;
   color: #000;
   right: 0;
   top: 10%;
   font-family: Inter;
   text-align: center;
   font-size: 1rem;
   letter-spacing: 0;
}

.tobe_logo {
   position: absolute;
   top: 4.5rem;
   width: 20rem;
}

.menu_container {
   position: absolute;
   width: 50rem;
   right: 0;
   top: 6.5rem;
}

.menu {
   width: 14rem;
   height: 5rem;
   font-size: 2rem;
   text-align: center;
}

.footer {
   background-color: #d3d3d3;
   width: 100%;
   /* width:75rem; */
   height:250px; 
   position: absolute;
   top: 1500px;
}

.footer_content {
   display: grid;
   place-items: center;
}

.footer_logo {
   width: 6rem;
   display: grid;
   place-items: center;
   float: left;
   height: 5rem;
}

.footer_info {
   width: 37.5rem;
   display: grid;
   place-items: center;
   float: left;
   height: 5rem;
}
.mainContent{
	width: 1200px;
	margin: 0 auto;
	position: relative;
	display: block;
	bottom: 900px;
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
</style>
<body>
	<div class="wrap">
		<%@include file = "/WEB-INF/views/user/common/userHeader.jsp"%>
		</div>
	</div>
	<div class = "mainContent">
		<div class = "subContent">
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
		<div class = "subContent">
			<div class = "detailContent">
				<table class = "reviewQnA">
					<tr>
						<td>강좌 상세 내용</td>
						<td>강좌 후기</td>
						<td>강좌 문의</td>
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
</body>
</html>