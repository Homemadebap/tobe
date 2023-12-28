<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
</head>
<style>
.container{
   position: relative;
   margin: -845px 0 0 10rem;
   width : 1340px ;
   height : 850px;
} 
.payform {
	height : 80px;
	width : 82rem;
}
input{
	margin-left: 10px;	
}
#searchText {	
	color : #808080;
	width: 300px;
}
.period{
	margin-left: 10px;
	margin-right: 10px;
	cursor: pointer;
	background-color: white;
	border:1;
	border-color: #8FB0C6;
	border-radius: 20px;
}
#allPeriod{
	border: 1;
	border-color : #e9ecef;
	color: #8FB0C6;
}
#searchOrReset{
	margin-top: 5px;
	margin-left: 77.25rem;
	width: 4.75rem;
}
#searchOrReset > button{
	cursor: pointer;
	border: 0;
	background-color: #F0F8FF;
	color: #808080;
}
.viewForm{
	height : 50px;
	width : 82rem;
}
.viewForm > th{
	padding-left: 30px;
	padding-right: 30px;
}
</style>



<body>
<%@include file="/WEB-INF/views/chiefAdmin/common/chiefSideBar_logo.jsp" %>
	<div class="container">
		<table border="1" cellspacing = "0" class = "payform">
			<tr class = "title">
				<th>검색어</th>
				<td><input type="text" id="searchText" value = "주문자명, 아이디, 휴대전화, 이메일" onclick='this.value="";this.onclick="";'></td>
			</tr>
			<tr>
				<th>날 짜</th>
				<td>
					<input type="date"><b>&nbsp-</b><input type="date">
					<button class = "period">오늘</button>
					<button class = "period">일주일</button>
					<button class = "period">1개월</button>
					<button class = "period">3개월</button>
					<button class = "period" id = "allPeriod">전체</button>
				</td>
			</tr>
			<tr>
				<th>주문상태</th>
				<td>
					<input type = "checkbox" id = "agree-chkOrder"><label for="agree-chkOrder"><span>주문접수</span></label>
					<input type = "checkbox" id = "agree-chkPay"><label for="agree-chkPay"><span>결제완료</span></label>
					<input type = "checkbox" id = "agree-chkWait"><label for="agree-chkWait"><span>입금대기</span></label>
					<input type = "checkbox" id = "agree-chkCancel"><label for="agree-chkCancel"><span>주문취소</span></label>
					<input type = "checkbox" id = "agree-chkFail"><label for="agree-chkFail"><span>결제실패</span></label>
					<input type = "checkbox" id = "agree-chkBack"><label for="agree-chkBack"><span>환 불</span></label>
				</td>
			</tr>
			<tr>
				<th>결제방법</th>
				<td>
					<input type = "checkbox" id = "agree-chkAccount"><label for="agree-chkAccount"><span>가상계좌</span></label>
					<input type = "checkbox" id = "agree-chkCard"><label for="agree-chkCard"><span>신용카드</span></label>
				</td>
		</table>
		<div id="searchOrReset">
			<button>초기화</button>
			<button>검색</button>
		</div>
		<div>
			<table border = "1" cellspacing = "0" class = "viewForm">
				<tr>
					<th>주문번호</th>
					<th>회원번호</th>
					<th>이름</th>
					<th>아이디</th>
					<th>휴대전화</th>
					<th>이메일</th>
					<th>강좌명</th>
					<th>주문상태</th>
					<th>결제방법</th>
					<th>포인트<br>사용금액</th>
					<th>결제일</th>
					<th>결제총액</th>
				</tr>
				<tr>
					<td>1</td>
					<td>2</td>
					<td>3</td>
					<td>4</td>
					<td>5</td>
					<td>6</td>
					<td>7</td>
					<td>8</td>
					<td>9</td>
					<td>10</td>
					<td>11</td>
					<td>12</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>