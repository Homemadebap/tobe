<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>학원 관리자 페이지</title>

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
.admin_logo {
	position: absolute;
	width: 40rem;
	height: 5rem;
	top: 2rem;
	left: 15rem;
}

.box {
	position: absolute;
	width: 75rem;
	height: 22rem;
	top: 6rem; 
	left: 15.5rem;
	border: 1px solid #ddd;
	box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5);
}

.mbox {
	width: 15rem;
	height: 7rem;
	border: 1px solid #000;
}

.sbox {
	position: absolute;
	width: 17.5rem;
	height: 16rem;
	top: 29rem;
	border: 1px solid #ddd;
	box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5);
}

#mSales {
	position: absolute;
	width: 30rem;
	height: 8rem;
	top: 2rem;
	left: 22.5rem;
}

#pSales {
	position: absolute;
	bottom: 2rem;
	left: 12.5rem;
}

#pCommision {
	position: absolute;
	bottom: 2rem;
	left: 30rem;
}

#ySales {
	position: absolute;
	bottom: 2rem;
	left: 47.5rem;
}

p {
	margin: 0 0;
	paddint: 0 0;
}

.sbox > a:link, a:visited {
	position: absolute;
	right: 1rem;
	top: 0.5rem;
	color: #756767;
	text-decoration: none;
}

#course_list {
	position: absolute;
	left: 1rem;
	top: 5rem;
	width: 15.5rem;
	height: 2.5rem;
	background-color: #F4F8F9;
}

#course_form {
	position: absolute;
	left: 1rem;
	top: 10rem;
	width: 15.5rem;
	height: 2.5rem;
	background-color: #F4F8F9;
}

#today_pay {
	position: absolute;
	top: 4rem;
	left: 2rem;
	width: 6rem;
	height: 9rem;
}

#cancel_pay {
	position: absolute;
	top: 4rem;
	right: 2rem;
	width: 6rem;
	height: 9rem;
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
	
	<div class="box" id="sales_box ">
		<div class="mbox" id="mSales">
			<p>이번 달 매출</p>
			<span style="position: absolute; right: 3rem; bottom: 2rem;">${admin.mSales}<b style="font-size: 1.5rem;">원</b></span>
		</div>
		<div class="mbox" id="pSales">
			<span style="position: absolute; right: 2rem; top: 2rem;">${admin.pSales}<b >원</b></span>
			<p style="position: absolute; left: 4.5rem; bottom: 1rem;">지난 달 매출</p>
		</div>
		<div class="mbox" id="pCommision"> 
			<span style="position: absolute; right: 2rem; top: 2rem;">${admin.pCommision}<b>원</b></span>
			<p style="position: absolute; left: 4rem; bottom: 1rem;">지난 달 수수료</p>
		</div>
		<div class="mbox" id="ySales">
			<span style="position: absolute; right: 2rem; top: 2rem;">${admin.ySales}<b>원</b></span>
			<p style="position: absolute; left: 5.5rem; bottom: 1rem;">연 매출</p>
		</div>
	</div>
	
	<div class="sbox" id="course_box" style="left: 15.5rem;">
		<a href="/tobe/admin/course/adCourseIndex.do">강좌관리 →</a>
		<div id="course_list">
			<a href="/tobe/admin/course/adCourseIndex.do">
				<img src="/tobe/img/cl_1.png" style="position: absolute; top: 0.35rem; width: 2rem;">
				<span style="position: absolute; top: 0.5rem; left: 3rem; width: 7rem;">강좌 리스트</span>
				<span style="position: absolute; top: 0.5rem; right: 1rem;">→</span>
			</a>
		</div>
		<div id="course_form">
			<a href="/tobe/admin/course/adCourseForm.do">
				<img src="/tobe/img/cl_2.png" style="position: absolute; top: 0.35rem; width: 2rem;">
				<span style="position: absolute; top: 0.5rem; left: 3rem; width: 7rem;">강좌 등록하기</span>
				<span style="position: absolute; top: 0.5rem; right: 1rem;">→</span>
			</a>
		</div>
	</div>
	
	<div class="sbox" id="pay_box" style="position: absolute; left: 34.6rem;">
		<a href="/tobe/admin/pay/adPayIndex.do">주문/결제관리 →</a>
		<div id="today_pay">
			<span style="position:absolute; left: 1.5rem; font-size: 5rem; color: #766CE8">5</span>
			<span style="position:absolute; left: 1rem; bottom: 1rem;">금일결제</span>
		</div>
		<div id="cancel_pay">
			<span style="position:absolute; left: 1.5rem; font-size: 5rem; color: #AFAFAF">0</span>
			<span style="position:absolute; left: 1rem; bottom: 1rem;">결제취소</span>		
		</div>
		
	</div>
	
	<div class="sbox" id="qna_box" style="position: absolute; left: 53.7rem;">
		<a href="/tobe/admin/customer/adQnaIndex.do">문의관리 →</a>
		<c:if test="${empty admin.qna}">
                        <tr>
                            <td class="noIndex">새로운 문의가 없습니다.</td>
                        </tr>
                    </c:if>
		<c:if test="${!empty admin.qna }">
	                    <table>
		                    <c:forEach var="vo" items="${admin.qna}">
		                        <tr>
		                            <td>new!</td>
		                            <td><a href"">${vo.q_title}</a></td>    
		                            <td>${vo.q_writedate}</td>      		                            
		                        </tr>
		                    </c:forEach>
	                    </table>
                    </c:if>
		
		userReviewDetail.do?page=${map.startPage-1 }&searchType=${replyVO.searchType}&searchWord=${replyVO.searchWord}
	</div>
	
	<div class="sbox" id="userHomePage_box" style="position: absolute; left: 72.8rem;">
		<a href="/tobe/user/common/userIndex.do" style="position:absolute; width: 13rem; top: 5rem; left: 2.5rem;">
			<img src="/tobe/img/header_tobe_logo.png" style="width: 13rem;">
			<span style="position: absolute; left: 0.25rem; top: 4rem; text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);">사용자 홈페이지 바로가기</span>
		</a>
	</div>
</body>
</html>