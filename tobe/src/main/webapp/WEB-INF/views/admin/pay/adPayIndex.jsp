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
	

</script>



<style>
#top{
   position: relative;
   margin: -760px 0 0 -90px; 
}
.admin_logo {
	position: absolute;
	width: 40rem;
	height: 5rem;
	top: 2rem;
	left: 10rem;
}
/*.box{
	position: absolute;
	width: 75rem;
	height: 22rem;
	top: 6rem; 
	left: 15.5rem;
	border: 1px solid #ddd;
}*/
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
	margin: 260px 0 0 250px;
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
.ti{
	margin:
}	
#searchOrReset{
	margin: 5px;
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
	<div class="hackers_logo admin_logo">
			<img src="/tobe/img/HACKERS_logo.png" style="width: 13rem;">
			<span style="position: absolute; top: 0.5rem; left: 14rem; font-size: 2rem;"><b>관리자 페이지_해커스</b></span>
		</div>

	<c:if test="${adminVo.ad_type} == 2">
		<div class="PAGODA_logo admin_logo">
			<img src="/tobe/img/PAGODA_logo.png" style="position: absolute; width: 13rem; top:0.5rem;">
			<span style="position: absolute; top: 0.5rem; left: 14rem; font-size: 2rem;"><b>관리자 페이지_파고다</b></span>
		</div>
	</c:if>
	<c:if test="${adminVo.ad_type} == 3">
		<div class="YBM_logo admin_logo">
			<img src="/tobe/img/YBM_logo.png" style="position: absolute;  width: 13rem; top: -0.5rem;">
			<span style="position: absolute; top: 0.5rem; left: 14rem; font-size: 2rem;"><b>관리자 페이지_YBM</b></span>
		</div>
	</c:if>
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
				<input type="date" name="startday"> - <input type="date" name="startday">
				<input type="button" value="오늘">
				<input type="button" value="일주일">
				<input type="button" value="1개월">
				<input type="button" value="3개월">
				<input type="button" value="전체">
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
						<button>초기화</button>
						<button>검색</button>
					</div>    
         <table class="tablea">
         <tr class="ti">
         	<th>주문번호</th>   
         	<th>이름</th>
         	<th>아이디</th>
         	<th>이메일</th>
         	<th>과목</th>
         	<th>강좌명</th>
         	<th>주문상태</th>
         	<th>포인트사용금액</th>
         	<th>결제일</th>
         	<th>결제총액</th>
         </tr>
         	
         </table>   
         </div>    
</body>
</html>