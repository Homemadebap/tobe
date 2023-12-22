<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="kr.co.tobe.util.CodeToString"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<META name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=no"> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<link rel="stylesheet" href="/tobe/css/user_Header_Footer.css" />
<script>


$(document).ready(function() {
	$('#paytotal').text('0원'); 
	$('#payfinal').text('0원'); 

	$('#payfinalbyP').text('0원'); 
});

var selectedPrices =0;
// checkbox 클릭 시 호출되는 함수
function MathPrice(checkbox) {
    var price = parseFloat($(checkbox).val());  // checkbox의 value를 숫자로 변환
	console.log(price);
    
    if ($(checkbox).is(':checked')) {
    	selectedPrices += price;
    } else {
    	selectedPrices -= price;
    }
    document.getElementById("paytotal").innerText =selectedPrices+'원';
    var pot = parseFloat($("#point").val()) || 0;
    
    document.getElementById("payfinal").innerText =selectedPrices-pot+"원";
    document.getElementById("payfinalbyP").innerText =(selectedPrices-pot)*0.01+"원";
    
    var individualCheckboxes = $('.input_button.small');
    var allChecked = true;

    individualCheckboxes.each(function() {
        if (!$(this).is(':checked')) {
            allChecked = false;
            return false; 
        }
    });
    $('.check_all').prop('checked', allChecked);
}


function BasketAllSelect(checkAllCheckbox) {
    var individualCheckboxes = $('.input_button.small');
    var isChecked = $(checkAllCheckbox).is(':checked');
    
    if(isChecked){
    	$('.input_button.small').prop('checked', true);
    	selectedPrices =0;
    } else{
    	$('.input_button.small').prop('checked', false);
    	//
    }
    
    
    individualCheckboxes.each(function() { 
    	MathPrice(this);
    });
}

function removeSelectedItems() {
    var selectedNoList = [];

    $('.input_button.small:checked').each(function() {
        var cartNo = $(this).data('no');
        selectedNoList.push(cartNo);
    });

    if (selectedNoList.length > 0) {
		 window.location.href= 'userBasketDelete.do?cartNo='+selectedNoList.join(',');
        //$.ajax ({
		//	url: 'userBasketDelete.do?cartNo='+selectedNoList.join(','),
		/* 	success: function(res) {
			}
		}); */
    }
    /* else {
        alert("삭제할 상품을 선택해주세요.");
    }*/
}

function ProcessOrder() {
	console.log(1);
    var selectedNoList = [];

    $('.input_button.small:checked').each(function() {
        var cartNo = $(this).data('no');
        selectedNoList.push(cartNo);
    });

    if (selectedNoList.length > 0) {
		 window.location.href= '/tobe/user/pay/userPayDetail.do?cartNo='+selectedNoList.join(',');
    }
}

</script>
</head>
<style>

	.cart_wrap {
		    height:500px;
	    width:100%;
	    position: relative;
	    top: 13rem;
	}
	.cart{
		width:70%;	
		float:left;
	}
	.payment{
		width:30%;	
		float:left;
	}
	
</style>
<body>	
	<div class="wrap">
		<%@ include file="/WEB-INF/views/user/common/userHeader.jsp" %>
		<div class="cart_wrap">
			<div class = "cart">
				<h3 class="title">장바구니<span>(${cart.total })</span></h3>
				<table class="cart_product">
					<colgroup>
						<col style="width: 30px">
						<col style="width: 80px">
						<col style="width: 300px">
						<col style="width: 100px">
					</colgroup>
					<thead>
						<tr>
							<th><span >
	            	 	       	<input type="checkbox" name="checkAll" class="check_all" onclick="BasketAllSelect(this);">
	                		     <label for="checkAll">&nbsp;</label> </span>
							</th>
							<th></th>
							<th>강좌정보</th>
							<th>강좌금액</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var= "vo" items="${cart.list }"> 
						<!-- <c:set var="education" value="${CodeToString.educationToString(vo.education)}" />
							<c:set var="subject" value="${CodeToString.subjectToString(vo.subject)}" />
							<c:set var="area" value="${CodeToString.areaToString(vo.area)}" />
							<c:set var="branch" value="${CodeToString.branchToString(vo.branch)}" />
							<c:set var="date" value="${CodeToString.dateToStirng(vo.mon, vo.tue, vo.wed, vo.thu, vo.fri, vo.sat, vo.sun)}" /> -->
							<tr>
							  <td class="input_btn" ><span>
							  <input  type="checkbox" class="input_button small" name="chknum_0" data-no="${vo.cart_no }" value="${vo.price }" onclick="MathPrice(this);"><label for="checkbox2">&nbsp;</label></span></td>
							  <td class="img"><a></a></td>
							  <td class="product"> 
							  	학원명 : ${CodeToString.educationToString(vo.education)}<br>
							  	과정명 : ${vo.cname}<br>
							  	과목 : ${CodeToString.subjectToString(vo.subject)}<br>
							  	지역 : ${CodeToString.areaToString(vo.area)} <br>
							  	지점 : ${CodeToString.branchToString(vo.branch)} <br>
								시간 : ${vo.time} <br>
							  	요일 : ${CodeToString.dateToStirng(vo.mon, vo.tue, vo.wed, vo.thu, vo.fri, vo.sat, vo.sun)}<br></td>
							  <td class="price">${vo.price }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="bx_btn">
					<button type="button" name="button1" class="btn" onclick="removeSelectedItems();">선택상품삭제</button>
                    <button type="button" name="button2" class="btn gray"><a href="/tobe/user/course/userCourseIndex.do">쇼핑계속하기</a></button>
				</div>
			</div>
			<div class="payment">
				<h3>최종결제금액</h3>
		         <ul>
		             <li>
		                 <strong>총 상품 금액 </strong>
		                 <p id="paytotal"></p>
		             </li>
		             <li>
	                     <strong>사용 가능한 포인트</strong>
	                     <p id="point">${loginInfo.point }원</p>
		             </li>
		             <li>
		                 <strong>총 결제금액</strong>
		                 <p id="payfinal"></p>
		             </li>
		             <li>
		                 <strong>적립예정 포인트</strong>
		                 <p id="payfinalbyP"></p>
		             </li>
		         </ul>
	         	<button type="button" name="button3" onclick="ProcessOrder();" class="btn_order">선택상품 주문하기</button>
			
			</div>
		</div>   
        
		<%@include file="/WEB-INF/views/user/common/userFooter.jsp"%>
	</div>
		
</body>
</html>