<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>학원별 주문결제관리 페이지</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<script>
function datdAdd(src, field, amount){
	if(isNaN(amount)){
		return null;
	}
	var d=(src.gatDate ? src : toDate(src, '-'));
	amount = new Number(amount);
	
	switch(field.toLowerCase()){
	case'y':{
		d.setFullYear(d.getFullYear()+amount);
		break;
	}
	case'm':{
		d.setMonth(d.getMonth()+amount);
		break;
	}
	case'd':{
		d.setDate(d.getDate()+amount);
		break;
	}
	default:{
		return null;
	}
	}
	var month = parseInt(d.getMonth())+1;
	var day = parseInt(d.getDate());
	
	return d.getFullYear()+'-'+(month<10?'0'+month:month)+'-'+(day<10?'0'+day:day);
};

function formatDate(d,f){
	if(!this.valueOf())return'';
	
	return f.replace(/(yyyy|mm|dd|hh|nn|ss|aVp)/gi, function($1)){
		switch($1.toLowerCase()){
		case 'yyyy': return d.getFullYear();
		case 'mm': return (d.getMonth()+1<10?'0':")+(d.getMonth()+1);
		case 'dd': return (d.getDate()<10?'0':")+d.getDate();
		case 'hh': return (d.getHours()<10?'0':")+d.getHours();
		case 'nn': return (d.getMinutes()<10?'0':")+d.getMinutes();
		case 'ss': return (d.getSeconds()<10?'0':")+d.getSeconds();
		}
	});
};
function toDate(dateStr, delm){
	var year;
	var month;
	var day;
	
	if(delm){
		var d= dateStr.split(delm);
		year = d[0];
		month = d[1]-1;
		day=d[2];
	} else{
		year = dateStr.substr(0,4);
		month = dateStr.substr(4,2)-1;
		day=dateStr.substr(6,2);
	}
	return new Date(year, month, day);
}


</script>



<style>
#top{
   position: relative;
   margin: -145px 0 0 -250px; 
}
.box {
	position: absolute;
	width: 75rem;
	height: 22rem;
	top: 5.5rem; 
	left: 10rem;
}
.admin_logo {
	position: absolute;
	width: 40rem;
	height: 5rem;
	top: 2rem;
	left: 10rem;
}

.table {
	position: absolute;
	border: solid 1px ;
	width: 1000px;
	height: 70px;
	margin: 140px 0 0 250px;
	border-collapse: collapse;
}
.tablea {
	position: absolute;
	border: solid 1px ;
	width: 1000px;
	height: 500px;
	margin: 270px 0 0 250px;
	border-collapse: collapse;
}

tr{
border: solid 1px;
height: 30px;
}
td{
border: solid 1px;
}
#noticeSeachMain { /*검색버튼*/
			margin-left: 500px;
			border: 1px solid #808080;
			text-align: center;
			width: 50px;
			height: 32px;
			background-color: #E4E6D9;
			cursor: pointer;
			border-radius: 5px;
		}
td{
	height: 5px;
}	
#searchOrReset{
	position: absolute;
	margin: 234px 0 0 1145px;
	text-align: end;
}
#searchOrReset > button{
	cursor: pointer;
	border: 0;
	background-color: #F0F8FF;
	color: #808080;
}
</style>

</head>
<body>
<%@include file="/WEB-INF/views/admin/common/adSideBar_logo2.jsp" %>
<div class="box">
<div id="top">
		<table class="table">
		<tr>
		    <td width="100px;">검색어</td>
		    <td>
				<input type="text" id="sval" name="searchWord" width="50%" value="${MemberVO.searchWord}"  title="검색어 입력" placeholder="주문자명, 아이디, 이메일">
			</td>
		</tr>
		<tr>   
		    <td>날   짜</td>
		    <td>
		    <form>
				<input type="date" path="searchDtFrom" cssClass="datepicker onlyDate essential" title="검색시작일" enddate="searchEndDate" readonly="true"/> - 
				<input type="date" path="searchDtTo" cssClass="datepicker onlyDate essential" title="검색종료일" startdate="searchStartDate" readonly="true"/>
				     <!-- <input type="date" name="startday"> - <input type="date" name="startday"> -->   
				<span class="btn_pack type10"><button type="button" name="search" class="date_range d0">오늘</button></span>
				<input type="button" value="일주일">
				<input type="button" value="1개월">
				<input type="button" value="3개월">
				<input type="button" value="전체">
			</form>	
			</td>
		</tr>
		<tr>
		    <td>주문상태</td>
		    <td>
				<label><input type="checkbox" name="">주문접수</label>
				<label><input type="checkbox" name="pay_complete">결제완료</label>
				<label><input type="checkbox" name="pay_cancel">입금대기</label>
				<label><input type="checkbox" name="pay_cancel">주문취소</label>
				<label><input type="checkbox" name="pay_cancel">결제실패</label>
				<label><input type="checkbox" name="pay_cancel">환 불</label>
			</td>
		</tr>
		<tr>
		    <td>과    목</td>
		    <td>
				<select name="subject">
		                 <option value="1">토익</option>
		                 <option value="2">토스</option>
		                 <option value="3">토플</option>
		                 <option value="4">아이엘츠</option>
		                 <option value="5">텝스</option>
		                 <option value="6">오픽</option>
		                 <option value="7">gre</option>
		                 <option value="8">g-telp</option>
	        		 </select>
			</td>
		</tr>
	    </table>
	 	 <div id="searchOrReset">
						<input type="reset" >
						<button>검색</button>
		 </div>    
         <table class="tablea">
         <tr  style="text-align:center;">
         	<td class="ti">주문번호</td>
         	<td>이름</td>
         	<td>아이디</td>
         	<td>이메일</td>
         	<td>과목</td>
         	<td>강좌명</td>
         	<td>주문상태</td>
         	<td>포인트사용금액</td>
         	<td>결제일</td>
         	<td>결제총액</td>
         	<c:forEach var="member" items="${list}">       
			    <tr style="text-align:center;">
			        <td>${member.product_no}</td>
			        <td>${member.name}</td>
			        <td>${member.id}</td>
			        <td>${member.email}</td>
			        <td>${member.i_subject}</td>
			        <td>${member.i_cname}</td>
			        <td>준비중</td>
			        <td>${member.point_usage}</td>
			        <td>${member.pay_date}</td>
			        <td>${member.pay_total}</td> 
			    </tr>
			</c:forEach>
			
 
         	
         </table>
          </div>  
         </div>    
</body>
</html>