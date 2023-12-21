<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Tobe 총관리자 매출관리</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<script>

// $(function() {
// 	$("#emailCheck").click(function() {
// 		$.ajax({
// 			url:'emailCheck.do',
// 			data:{email:$('#email').val()},
// 			success:function(res) {
// 				console.log(res);
// 				if (res == 'true') {
// 					alert('이메일이 중복되었습니다.');
// 					$("#email").val('');
// 					$("#email").focus();
// 				} else {
// 					dupCheck = true;
// 					alert('사용가능한 이메일입니다.');
// 					$("#email").attr('readonly','readonly');
// 				}
// 			}
// 		})
// 	})
// })

</script>

</head>
<style>

.searchBox {
	position: absolute;
	width: 75rem;
	height: 7.5rem;
	top: 6rem; 
	left: 12rem;
	border: 3px solid #ddd;
	box-shadow: 3px 3px 7px rgba(0, 0, 0, 0.5);
}

.searchBox table {
	position: absolute;
	top: 1rem;
}

.searchBox th {
	width: 10rem;
	font-size: 1.25rem;
}

.searchBox td {
	width: 40rem;
	font-size: 1.25rem;
}

.input {
	height: 2rem;
	width: 10rem;
	font-size: 1rem;
}

.frmBtn {
	position: absolute;
	left: 64rem;
	top: 4.75rem;
}
.frmBtn input {
	width: 5rem;
	height: 1.75rem;
	font-size: 1rem;
	background-color: #F0F5F8;
	cursor: pointer;
	border-color: #F0F5F8;
}

.lBox {
	position: absolute;
	width: 40rem;
	height: 28rem;
	top: 17.5rem; 
	left: 12rem;
	border: 1px solid #ddd;
	box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5);
}

.salesList {
	position: absolute;
	top: 1rem;
	border-collapse: collapse;
	width: 100%;
}

.salesList th, .salesList td {
    border: 1px solid #dddddd;
    text-align: center;
    padding: 8px;
    width: 25%;
}

.salesList th {
    border-right: none; /* 오른쪽 구분선 없음 */
    border-bottom: none; /* 아래쪽 구분선 없음 */
    border-top: none; /* 아래쪽 구분선 없음 */
}

.salesList > tr:last-child td {
    border-bottom: none; /* 마지막 행의 아래쪽 구분선 없음 */
}

.total {
	position: absolute;
	width: 33rem;
	height: 28rem;
	top: 17.5rem; 
	left: 54rem;
	border: 1px solid #ddd;
	box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5);
	padding: 0 0;
	margin: 0 0;
}

.total th, .total td {
    text-align: center;
    width: 33.3%;
    padding: 0 0;
    margin: 0 0;
}

.total td{
	font-size: 1.5rem;
}




</style>
<body>
	<%@include file="/WEB-INF/views/chiefAdmin/common/chiefSideBar_logo.jsp" %>
   	
   	<div class="searchBox">
   		<form action="payList.do" method="get">
   			<table>
   				<tr>
   					<th>학원명</th>
   					<td>
   						<select name="education" class="input">
   							<option value="">전체</option>
   							<option value="1">해커스</option>
   							<option value="2">파고다</option>
   							<option value="3">YBM</option>
   						</select>
   					</td>	
   				</tr>
				<tr>
					<th>날짜</th>
					<td>
						<input type="date" name="startday" class="input"> <b style="margin: 0 0.5rem; font-size: 2rem;">-</b>
						<input type="date" name="endday" class="input">
				</tr>   			
   			</table>
   			<div class="frmBtn">
		   		<input type="submit" value="검색" >
   				<input type="reset" value="초기화">
   			</div>
   		</form>
   	</div>
   	
	<div class="lBox">
		<table class="salesList">
			<tr>
				<th>학원명</th>
				<th>결제일</th>
				<th>결제총액</th>
				<th>수수료</th>
			</tr>
			<c:forEach var="vo" items="${payList}">
				<td>${vo.education}</td>
				<td>${vo.pay_date}</td>
				<td>${vo.pay_total}</td>
				<td>${vo.charge_total}</td>
			</c:forEach>
		
		</table>
	
	</div>
	

	<table class="total">
		<tr style="background-color: #D9D9D9; height: 3.5rem;">
			<th colspan="3" style="font-size: 1.15rem;">총매출: </th>
		</tr>
		<tr style="height: 10rem;">
			<td><b>해커스</b><br><br>ㅇㅇㅇㅇ원 </td>
			<td><b>파고다</b><br><br>ㅇㅇㅇㅇ원 </td>
			<td><b>ybm</b><br><br>ㅇㅇㅇㅇ원 </td>
		</tr>
		<tr style="background-color: #D9D9D9; height: 3.5rem;">
			<th colspan="3" style="font-size: 1.15rem;">총수수료: </th>
		</tr>
		<tr style="height: 10rem;">
			<td><b>해커스</b><br><br>ㅇㅇㅇㅇ원 </td>
			<td><b>파고다</b><br><br>ㅇㅇㅇㅇ원 </td>
			<td><b>ybm</b><br><br>ㅇㅇㅇㅇ원 </td>
		</tr>
	</table>

   
</body>
</html>