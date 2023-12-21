<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Tobe 결제완료</title>

<META name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=no">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
<link rel="stylesheet" href="/tobe/css/user_Header_Footer.css" />

<script type="text/javascript">

$(function(){

	
})




</script>


<style>
.container {
	position: absolute;
	top: 13rem;
	left:3rem;
	width: 70rem;
}

.courseInfo {
	width:  70rem;
	border-top: 1px solid #ddd;
	border-bottom: 1px solid #ddd;
}

#firstRow {
	font-size: 1.25rem;
	height: 3rem;
	background-color: #F5F5F5;
}

#secondRow {
	height: 10rem;
}

.courseInfo td {
	width: 25%;
	text-align: center;
}

.payInfo {
	width:  70rem;
	border: 3px solid #000;
	text-align: center;
}

.payInfo tr:first-child {
	height: 3rem;
	font-size: 1.25rem;
}
.payInfo tr:last-child {
	background-color: #F5F5F5;
}

.payInfo td {
	width: 33.3%;
}

.payInfo div {
	height: 3rem;
}

.payMethod {
	border-top: 1px solid #ddd;
	border-bottom: 1px solid #ddd;
	height: 5rem;
}

.title {
	padding: 0.5rem 0.5rem 0 0;
}
</style>

</head>
<body>
	<div class="wrap">
		<%@include file="/WEB-INF/views/user/common/userHeader.jsp"%>
		<div class="container">
			
			<div class="title">
				<h2 style="margin: 1rem; padding: 0;">주문상품</h2>
			</div>
			
			<div>
				<table class="courseInfo">
					<tr id="firstRow">
						<td></td>
						<td>강좌정보</td>
						<td>가격</td>
						<td>총상품금액</td>
					</tr>
					<tr id="secondRow">
						<td>dfdf</td>
						<td>dfdf</td>
						<td>dfdf</td>
					</tr>
				</table>
			</div>
			
			<div class="title">
				<h2>결제 정보</h2>
			</div>
			
			<div>
				<table class="payInfo">
					<tr>
						<td>총 주문 금액</td>
						<td>총 할인 금액</td>
						<td>결제 금액</td>
					</tr>
					<tr>
						<td>dfdf</td>
						<td>dfdf</td>
						<td>
							<div></div>
							<div></div>
							<div></div>
							<div></div>
						</td>
					</tr>
				</table>			
			</div>
			
			<div class="title">
				<h2>결제 방법</h2>
			</div>
			<div class="payMethod">
			
			</div>
			
			
			
		</div>
		<%@include file="/WEB-INF/views/user/common/userFooter.jsp"%>
	</div>
</body>
</html>