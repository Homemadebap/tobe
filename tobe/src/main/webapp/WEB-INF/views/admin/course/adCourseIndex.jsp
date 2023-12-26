<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>학원별 강좌관리 페이지</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<script>
	

</script>



<style>
* {
	box-sizing: border-box;
}

body {
	position: relative;
}
.box {
	position: absolute;
	width: 75rem;
	height: 22rem;
	top: 5.5rem; 
	left: 10rem;
	border: 1px solid #ddd;
	box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5);
}

.sbox {
	position: absolute;
	width: 17.5rem;
	height: 16rem;
	top: 90rem;
	border: 1px solid #ddd;
	box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5);
}

</style>

</head>
<body>
<%@include file="/WEB-INF/views/admin/common/adSideBar_logo2.jsp" %>
	<div class="box" id="sales_box ">
			<form action="chiefMemberListEmail.do" method="get" >
		<table class="table">
			<tr>
			    <td width="100px;">검색어</td>
			    <td>
					<input type="text" id="searchWord" name="searchWord" value="${memberVO.searchWord}"  title="검색">
				</td>
			</tr>
			<tr>   
		    
				<td>가입일</td>
		    	<td>
					<input type="date" name="startday" id="startday"> - <input type="date" name="endday" id="endday">
					<input id="today" type="button" value="오늘" >
					<input id ="week" type="button" value="일주일">
					<input id= "oneMonth" type="button" value="1개월">
					<input id= "threeMonth" type="button" value="3개월">
					<input id= "year" type="button" value="1년">
				</td>
			
			</tr>
			<tr>
				<td>생년 월일</td>
		    	<td>
					<input type="date" name="birthDayStartday" id="birthDayStartday"> - <input type="date" name="birthDayEndday" id="birthDayEndday">
				</td>
			</tr>
	   	 	<div class="searchOrReset">
				<input type="reset" >
				<input type="submit" id="" value="검색">
			</div>    
		</table>
		</form>
		

	
	
	  
         <table class="tablea">
         	 <p><span><strong>총 ${map.count }개</strong>  |  ${MemberVO.page }/${map.totalPage }페이지</span></p>
         <thead>
         	<th>    </th>
         	<th>이름</th>
         	<th>아이디</th>
         	<th>성별</th>
         	<th>가입일</th>
         	<th>생년월일</th>
         	<th>이메일</th>
         	<th>전화번호</th>
         </thead>
        <tbody>
 
         	<c:forEach var="member" items="${map.list}">       
			    <tr style="text-align:center;">
			   		<td><input  type="checkbox" class="input_button small" name="member_no" data-no="${member.member_no }"><label for="checkbox2">&nbsp;</label></td>
			        <td>${member.name}</td>
			        <td>${member.id}</td>
			        <td>${member.gender}</td>
			        <td>${member.registdate}</td>
			        <td>${member.birthday}</td>
			        <td>${member.email}</td>
			        <td>${member.hp}</td>
			    </tr>
			</c:forEach>
			
 		</tbody>
         	
         </table>
        	<div class="email">
        	 <div class="pagenate clear">
                       <ul class='paging'>
                       <c:if test="${map.prev }">
                       	<li><a href="/tobe/chiefAdmin/email/chiefEmailIndex.do?page=${map.startPage-1 }"> << </a></li>
                       </c:if>
                       <c:forEach var="p" begin="${map.startPage}" end="${map.endPage}">
                       	<c:if test="${p == memberVO.page}">
                           <li><a href='#;' class='current'>${p}</a></li>
                           </c:if>
                           <c:if test="${p != memberVO.page}">
                           <li><a href='/tobe/chiefAdmin/email/chiefEmailIndex.do?page=${p}'>${p}</a></li>
                           </c:if>
                       </c:forEach>
                       <c:if test="${map.next }">
                       	<li><a href="/tobe/chiefAdmin/email/chiefEmailIndex.do?page=${map.endPage+1 }"> >> </a></li>
                       </c:if>
                       </ul> 
              </div> 
			<div>
				<button type="button" name="button3" onclick="ProcessSendEmail();" class="btn_order">선택상품 주문하기</button>
			</div>	
          </div>
	</div>

</body>
</html>