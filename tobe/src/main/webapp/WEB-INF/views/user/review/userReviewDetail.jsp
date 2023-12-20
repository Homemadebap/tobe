<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강신청</title>
<META name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=no">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
<link rel="stylesheet" href="/tobe/css/user_Header_Footer.css" />
</head>
<style>
<style>
.body {
   min-width: 1200px;
   height: 100%;
}

.wrap {
   width: 1200px;
   height: 100%;
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
.reviewDetailTitle{
	width: 1200px;
	margin: 0 auto;
	position: relative;
	top: 14rem;
}
table{
	width: 1200px;
	margin: 0 auto;
	text-align: center;
	position: relative;
	bottom: 34rem;
}
#firstLine{
	width: 1200px;
	margin: 0 auto;
	position: relative;
	top:13rem;
}
#secondLine{
	width: 1200px;
	margin: 0 auto;
	position: relative;
	top: 15rem;
}
hr{
	border: 1px solid #000;
}
.textBox{
	width: 1200px;
	position: relative;
	margin: 0 auto;
	top: 18rem;
}
#realTextBox{
	width: 1200px;
	height: 700px;
	background-color: #f1f3f5;
	border: 0;
}
.combackBtn{
	position:relative;
	margin: 0 auto;
	width: 1200px;
	top: 20rem;
}
.comBack{
	width: 70px;
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
<body>
   	<div class="wrap">
      	<%@include file="/WEB-INF/views/user/common/userHeader.jsp"%>
      	</div>
    </div>
   	<div class = "reviewDetailTitle">
   		<h1>수강후기</h1>
   	</div>
   	<div id="firstLine">
	   	<hr>
   	</div>
   	<div>
   		<table>
		    <tr>
		        <td>${review.r_title}</td>
		        <td><c:out value="${review.r_writedate}" /></td>
		    </tr>
   	</div>
   	<div id="secondLine">
   		<hr>
   	</div>
   	<div class = "textBox">
   		<div class = "subContainer">
   			<input type="text" value="${review.r_content}" readonly id="realTextBox">
   		</div>
   	</div>
   	<div class = "combackBtn">
  			<button type="button" onclick="location.href='/tobe/user/review/userReviewIndex.do'" class="comBack">목록</button></td>
 	</div>
   	<%@include file="/WEB-INF/views/user/common/userFooter.jsp"%>
</body>
</html>