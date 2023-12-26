<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="kr.co.tobe.util.CodeToString"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제창</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
<link rel="stylesheet" href="/tobe/css/user_Header_Footer.css" />
<!-- jQuery -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
  <!-- iamport.payment.js -->
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-{SDK-최신버전}.js"></script>
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
<script>
$(document).ready(function() {
	$('#paytotal').text('0원'); 
	$('#payfinal').text('0원'); 

	$('#payfinalbyP').text('0원'); 
});

function requestPay() {
	var IMP = window.IMP; // 생략 가능
	IMP.init("store-e48427ce-8dd2-476e-ac6f-992c6044483e"); // 예: imp00000000
  //IMP.request_pay(param, callback) 결제창 호출
  
  IMP.request_pay({ // param
      pg: "html5_inicis.INIpayTest", //결제대행사 설정에 따라 다르며 공식문서 참고
      pay_method: "card", //결제방법 설정에 따라 다르며 공식문서 참고
      merchant_uid: map.cart_no, / /주문(db에서 불러옴) 고유번호
      name: data.products,
      amount: map.pay_total,
      //buyer_email: "",
      buyer_name: data.name,
      //buyer_tel: "010-4242-4242",
      buyer_addr: data.addr,
      //buyer_postcode: "01181"
  }, function (rsp) { // callback
      if (rsp.success) {
    	// 결제 성공 시: 결제 승인 또는 가상계좌 발급에 성공한 경우
          // jQuery로 HTTP 요청
          jQuery.ajax({
            url: "/payment/verify/"+ rsp.imp_uid, 
            method: "POST",
          }).done(function (data) {
        	// 위의 rsp.paid_amount 와 data.response.amount를 비교한후 로직 실행 (iamport 서버검증)
        	  if(rsp.paid_amount == data.response.amount){
		        	succeedPay(rsp.imp_uid, rsp.merchant_uid);
	        	} else {
	        		alert("결제 검증 실패");
	        	}
          })
      } else {
    	  var msg = '결제에 실패하였습니다.';
          msg += '에러내용 : ' + rsp.error_msg;
          alert(msg);
      }
  });
}
	function AgreeAllSelect(checkAllCheckbox) {
	    var individualCheckboxes = $('.input_button.small');
	    var isChecked = $(checkAllCheckbox).is(':checked');
	    
	    if(isChecked){
	    	$('.input_button.small').prop('checked', true);
	    	selectedPrices =0;
	    } else{
	    	$('.input_button.small').prop('checked', false);
	    }
	    
}
	
	function requestPay() {//결제하기 버튼
		console.log(1);
	    var selectedNoList = [];

	    $('.input_button.small:checked').each(function() {
	        var order_no = $(this).data('no');
	        selectedNoList.push(cartNo);
	    });

	    if (selectedNoList.length > 0) {
			 window.location.href= '/tobe/user/pay/userPayCompleteDetail.do?cartNo='+selectedNoList.join(',');
	    }
	}

</script>
</head>
<body>
<div class="wrap">
<%@include file="/WEB-INF/views/user/common/userHeader.jsp"%>
<div class="title">
<h2 style="margin: 1rem; padding: 0;">주문상품</h2>
</div>
<form method="post" name="cart" id="cart" action="/user/pay/userPayDetail">
		<table class="info" >
				<tr id="firstRow">
					<td>강좌정보</td>
					<td>가격</td>
					<td>총상품금액</td>
				</tr>
				 <c:forEach var="cart" items="${basket}"> 
				<tr id="secondRow">
					<td>
						  학원명 : ${CodeToString.educationToString(cart.education)}<br>
                          과정명 : ${cart.cname}<br>
                          과목 : ${CodeToString.subjectToString(cart.subject)}<br>
                          지역 : ${CodeToString.areaToString(cart.area)} <br>
                          지점 : ${CodeToString.branchToString(cart.branch)} <br>
                       	  시간 : ${cart.time} <br>
                          요일 : ${CodeToString.dateToStirng(cart.mon, cart.tue, cart.wed, cart.thu, cart.fri, cart.sat, cart.sun)}<br></td>
                       
					</td>
					<td class="price">${cart.price }</td>
					<td class="totalprice">${cart.pay_total}</td>
				</tr>
				</c:forEach>
		</table>
		<c:forEach var="cart" items="${basket}"> 
		<div class="title2">
			<h2 style="margin: 1rem; padding: 0;">포인트 사용</h2>
			<hr width="800px;" style="margin-left:15px;">
			<strong >결제 예정 금액</strong>  <p id="paytotal"></p>원 <br style="margin-bottom:15px;"> 
			<br><hr width="800px;">
			<br>
			<strong>보유 포인트</strong> <input type="text" style="margin-left:15px;" hiegth="10px;">원 / ${loginInfo.point }원 <button style="margin-left:15px; background-color:#000; color: #fff; border-radius:5px;">전액 사용</button>
			<hr width="800px;">
		</div>
		</c:forEach>
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
					<input type="checkbox" name="checkAll" class="check_all" onclick="AgreetAllSelect(this);"> 주문 정보를 확인하였으며, 약관 전체에 동의합니다.<br>
					<input  type="checkbox" class="input_button small"  onclick="MathPrice(this);"> 주문 상품정보에 동의(필수)<br>
					<input  type="checkbox" class="input_button small"  onclick="MathPrice(this);"> 결제대행서비스 이용을 위한 개인정보 제3자 제공 및 위탁 동의(필수)<br>
					<input  type="checkbox" class="input_button small"  onclick="MathPrice(this);"> 개인정보 수집 및 이용에 대한 동의(필수)<br>
					<input  type="checkbox" class="input_button small"  onclick="MathPrice(this);"> 개인정보 제3자 제공에 대한 동의(필수)
				</div>
				<input type="submit" class="payment" onClick="requestPay()" port="post" value="결제하기">
					
				</button>
</form>
<%@include file="/WEB-INF/views/user/common/userFooter.jsp"%>
</div>
</body>
</html>