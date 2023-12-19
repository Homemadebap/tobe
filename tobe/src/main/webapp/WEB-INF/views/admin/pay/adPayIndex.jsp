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
.admin_logo {
	position: absolute;
	width: 40rem;
	height: 5rem;
	top: 2rem;
	left: 15rem;
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
	height: 400px;
	margin: 170px 0 0 300px;
}
tr{
border: solid 1px;
}
</style>

</head>
<body>
<%@include file="/WEB-INF/views/admin/common/adSideBar_logo.jsp" %>
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
	

		<table class="table">
		<tr>
		    <td>검색어</td>
		    <td>두번째 칸</td>
		</tr><!-- 첫번째 줄 끝 -->
		<tr>
		    <td>날   짜</td>
		    <td>두번째 칸</td>
		</tr><!-- 첫번째 줄 끝 -->
		<tr><!-- 두번째 줄 시작 -->
		    <td>주문상태</td>
		    <td>두번째 칸</td>
		</tr><!-- 두번째 줄 끝 -->
		<tr>
		    <td>과    목</td>
		    <td>두번째 칸</td>
		</tr><!-- 첫번째 줄 끝 -->
	    </table>
			            
</body>
</html>