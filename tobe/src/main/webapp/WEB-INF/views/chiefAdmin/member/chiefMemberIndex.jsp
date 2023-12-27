<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 페이지 회원관리</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<script>
	$(function(){
		
	    
	    $('#today').click(function(){
	    	$("#startday").val(getDates('today').start);
	    	$("#endday").val(getDates('today').end);
	    })
	    $('#week').click(function(){
	    	$("#startday").val(getDates('oneWeek').start);
	    	$("#endday").val(getDates('oneWeek').end);
	    })
	    $('#oneMonth').click(function(){
	    	$("#startday").val(getDates('oneMonth').start);
	    	$("#endday").val(getDates('oneMonth').end);
	    })
	    $('#threeMonth').click(function(){
	    	$("#startday").val(getDates('threeMonths').start);
	    	$("#endday").val(getDates('threeMonths').end);
	    })
	    $('#year').click(function(){
	    	$("#startday").val(getDates('oneYear').start);
	    	$("#endday").val(getDates('oneYear').end);
	    })
	    
	
	})
	
		function getDates(period) {
	    var currentDate = new Date();
	    var pastDate = new Date();
	
	    switch (period) {
		    case 'today':
	            pastDate.setDate(currentDate.getDate());
	            break;
	        case 'oneWeek':
	            pastDate.setDate(currentDate.getDate() - 7);
	            break;
	        case 'oneMonth':
	            pastDate.setMonth(currentDate.getMonth() - 1);
	            break;
	        case 'threeMonths':
	            pastDate.setMonth(currentDate.getMonth() - 3);
	            break;
	        case 'oneYear':
	            pastDate.setFullYear(currentDate.getFullYear() - 1);
	            break;
	        default:
	            // 기본값은 현재 날짜
	            pastDate = currentDate;
	            break;
	    }
	
	    return {
	        start: getFormattedDate(pastDate),
	        end: getFormattedDate(currentDate)
	    };
	 
		}
	
	 function getFormattedDate(date) {
		    var year = date.getFullYear();
		    var month = (date.getMonth() + 1).toString().padStart(2, '0');
		    var day = date.getDate().toString().padStart(2, '0');
		    return year + '-' + month + '-' + day;
	}
</script>



<style>
#top {
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
	border: solid 1px;
	width: 1000px;
	height: 70px;
	margin: 140px 0 0 250px;
	border-collapse: collapse;
}

.tablea {
	position: absolute;
	border: solid 1px;
	width: 1000px;
	margin: 260px 0 0 250px;
	border-collapse: collapse;
	top: 2rem;
}

tr {
	border: solid 1px;
	height: 30px;
}

td {
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

.ti {
	margin:
}

#searchOrReset {
	margin: 5px;
	text-align: end;
}

#searchOrReset>button {
	cursor: pointer;
	border: 0;
	background-color: #F0F8FF;
	color: #808080;
}

.searchWord {
	margin: 1000px 0 0 500px;
	position: relative;
	top: 265px;
}
.searchOrReset{
	position: absolute;
	margin: 234px 0 0 1145px;
	text-align: end;
}
.paging{
	position: absolute;
	margin: 775px 0 0 1145px;
	text-align: end;
}
</style>

</head>
<body>
	<%@include
		file="/WEB-INF/views/chiefAdmin/common/chiefSideBar_logo.jsp"%>

	<div id="top">

		<form action="chiefMemberIndex.do" method="get">
			<table class="table">
				<tr>
					<td width="100px;">검색어</td>
					<td><input type="text" id="searchWord" name="searchWord"
						value="${MemberVO.searchWord}" title="검색"></td>
				</tr>
				<thead>

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
						<td>생년월일</td>
						<td><input type="date" name="birthDayStartday" id="birthDayStartday"> - <input type="date" name="birthDayEndday" id="birthDayEndday"></td>
					</tr>
					
					<div class="searchOrReset">
						<input type="reset" >
						<input type="submit" id="" value="검색">
					</div> 
				</thead>
			</table>
		</form>
		<!--
       <form method ="get" name="searchForm" id="searchForm" action="chiefMemberIndex.do">
		   <span class="searchWord">
		   	 <input id="search" type="search" name="searchWord" value="${MemberVO.searchWord }" placeholder="검색">                        
			 <button type="submit" class="btn" style="background-color: #ECEDE8; color:#44546A; border-width: 1px; border-radius: 7px; padding:3x 10px; ">검색</button>
		   </span>
		</form> 
		-->




		<table class="tablea">
			<tr stlye="text-align: center;">
				<td>no</td>
				<td>이름</td>
				<td>아이디</td>
				<td>성별</td>
				<td>가입일</td>
				<td>생년월일</td>
				<td>이메일</td>
				<td>전화번호</td>
				<td>포인트</td>
				<td>주소</td>
				<c:forEach var="MemberVO" items="${map.list }">
					<tr>
						<td>${MemberVO.member_no }</td>
						<td>${MemberVO.name }</td>
						<td>${MemberVO.id }</td>
						<td>${MemberVO.gender }</td>
						<td>${MemberVO.registdate }</td>
						<td>${MemberVO.birthday }</td>
						<td>${MemberVO.email }</td>
						<td>${MemberVO.hp }</td>
						<td><a href="chiefMemberDetail.do?no=${MemberVO.member_no }">
						<input type="text" name="point" id="point" style="float: left;" value="${MemberVO.point }"></a>point</td>
						<td>${MemberVO.addr1 }</td>
						<td>${MemberVO.addr2 }</td>
					</tr>
				</c:forEach>
			</tr>
		</table>

		<tbody>

		</tbody>

	</div>

	<div class="pagenate_clear">
		<ul class='paging'>
			<c:if test="${map.prev }">
				<li><a href="chiefMemberIndex.do?page=${map.startPage-1 }"> &lt;&lt; </a></li>
			</c:if>
			<c:forEach var="p" begin="${map.startPage ge 0 ? map.startPage : 0}"
				end="${map.endPage}">
				<c:if test="${p == MemberVO.page}">
					<li><a href='#;' class='current'>${p}></a></li>
				</c:if>
				<c:if test="${p != MemberVO.page}">
					<li><a href="chiefMemberIndex.do?page=${p}">${p}></a></li>
				</c:if>
			</c:forEach>
			<c:if test="${map.next }">
				<li><a href="chiefMemberIndex.do?page=${map.endPage+1 }">
						&gt;&gt; </a></li>
			</c:if>
		</ul>
	</div>

</body>
</html>