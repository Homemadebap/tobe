<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제창</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
<link rel="stylesheet" href="/tobe/css/user_Header_Footer.css" />
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
	width:  49rem;
	border-top: 1px solid #ddd;
	border-bottom: 1px solid #ddd;
}

#firstRow {
	background-color: #F5F5F5;
	font-size: 1.25rem;
	height: 3rem;
	width: 2rem;
}

#secondRow {
	height: 10rem;
}

.info td {
	width: 15%;
	text-align: center;
}
.info{
	width: 
}
.title2 {
	position:absolute;
	top: 32rem;
	left: 3rem;
}

.title3 {
	position:absolute;
	top: 50rem;
	left: 3rem;
}
#orderbox{
 width: 60%;
}
[type="radio"]{
		appearance: none;
        width: 15px;
        height: 15px;
        border-radius: 50%;
        background-color: #fff;
        border: 0.3px solid black;
}
[type="radio"]:checked{
        background-color: #fff;
        border: 5px solid black;

}
hr, strong{
	margin-left: 15px;
}
.finalpay{
	border: 0.5px solid #000;
	position: absolute;
	top: 17rem;
	left: 56rem;
	width:  15rem;
	border-top: 1px solid #ddd;
	
}
.agree{
	border: 0.5px solid #000;
	position: absolute;
	top: 45rem;
	left: 56rem;
	width:  15rem;
}
input[type="checkbox"] {
    width: 1rem;
    height: 1rem;
    border-radius: 50%;
    border: 1px solid #999;
    appearance: none;
    cursor: pointer;
    transition: background 0.2s;
  }

  input[type="checkbox"]:checked {
    background: #000;
    border: none;
  }
  .payment{

	position: absolute;
	top: 60.5rem;
	left: 56rem;
	width:  15rem;
	height: 2.5rem;
	color: #fff;
	background-color: #000;
}
</style>
</head>
<body>
<div class="wrap">
<%@include file="/WEB-INF/views/user/common/userHeader.jsp"%>
<div class="title">
<h2 style="margin: 1rem; padding: 0;">주문상품</h2>
</div>
		<table class="info" >
				<tr id="firstRow">
					<td>강좌정보</td>
					<td>가격</td>
					<td>총상품금액</td>
				</tr>
				<tr id="secondRow">
					<td>dfdf</td>
					<td>dfdf</td>
					<td>dfdfd</td>
				</tr>
		</table>
		<div class="title2">
			<h2 style="margin: 1rem; padding: 0;">포인트 사용</h2>
			<hr width="800px;" style="margin-left:15px;">
			<strong >결제 예정 금액</strong> <input type="text" style="margin-left:15px;" heigth="10px;">원 <br style="margin-bottom:15px;"> 
			<br><hr width="800px;">
			<br>
			<strong>보유 포인트</strong> <input type="text" style="margin-left:15px;" heigth="10px;">원 <button style="margin-left:15px; background-color:#000; color: #fff; border-radius:5px;">전액 사용</button>
			<hr width="800px;">
		</div>
		<div class="title3">
			<h2 style="margin: 1rem; padding: 0;">결제 수단</h2>
			<hr width="800px;" >
			<input type="radio" name="myRadio" style="margin-left:30px;"> 무통장입금
			<hr width="800px;" >
			<input type="radio" name="myRadio" style="margin-left:30px;"> 신용카드
			<hr width="800px;" >
		</div>
			<table class="finalpay">
				<tr id="firstRow">
					<td>최종결제금액</td>
				</tr>
				<tr id="secondRow">
					<td>총 상품 금액</td>
						<tr>
							<td>포인트</td>
						</tr>
				</tr>
				<tr id="secondRow">
					<td>최종 결제 금액</td>
					<tr>
						<td>적립예정 포인트</td>
					</tr>
				</tr>
				</table>
				
				<div class="agree">
					<input type="checkbox"> 주문 정보를 확인하였으며, 약관 전체에 동의합니다.<br>
					<input type="checkbox"> 주문 상품정보에 동의(필수)<br>
					<input type="checkbox"> 결제대행서비스 이용을 위한 개인정보 제3자 제공 및 위탁 동의(필수)<br>
					<input type="checkbox"> 개인정보 수집 및 이용에 대한 동의(필수)<br>
					<input type="checkbox"> 개인정보 제3자 제공에 대한 동의(필수)
				</div>
				<button class="payment">
					<h>결제하기</h>
				</button>

<%@include file="/WEB-INF/views/user/common/userFooter.jsp"%>
</div>
</body>
</html>