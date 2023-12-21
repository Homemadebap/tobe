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

.title {
	position: absolute;
	top: 13rem;
	left: 3rem;
}
.info {
	position: absolute;
	top: 17rem;
	left: 4rem;
	width:  69rem;
	border-top: 1px solid #ddd;
	border-bottom: 1px solid #ddd;
}

#firstRow {
	background-color: #F5F5F5;
	font-size: 1.25rem;
	height: 3rem;
}

#secondRow {
	height: 10rem;
}

.info td {
	width: 25%;
	text-align: center;
}

.title2 {
	position:absolute;
	top: 32rem;
	left: 3rem;
}

</style>

</head>
<body>
	<div class="wrap">
		<%@include file="/WEB-INF/views/user/common/userHeader.jsp"%>
		<div class="title">
			<h2 style="margin: 1rem; padding: 0;">주문상품</h2>
		</div>
		
		<table class="info">

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
					<td>dfdfd</td>
				</tr>
		</table>

		
		
		
		<div class="title2">
			<h2 style="margin: 1rem; padding: 0;">결제 정보</h2>
		</div>

		<%@include file="/WEB-INF/views/user/common/userFooter.jsp"%>
	</div>
</body>
</html>