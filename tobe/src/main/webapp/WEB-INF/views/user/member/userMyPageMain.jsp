<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Tobe 마이페이지</title>

<META name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=no">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
<link rel="stylesheet" href="/tobe/css/user_Header_Footer.css" />

<script type="text/javascript">

$(function(){
	
	$('.mainMenu').click(function(){
		
	    $('.mainMenu').removeClass('on');
	    $(this).addClass('on');
	    if($(this).text() == '현재 수강 중인 강좌') {
	        $('.currentCourseIndex').show();
	        $('.pastCourseIndex').hide();
	        $('.askIndex').hide();
	        $('.myReviewIndex').hide();
	    } else if($(this).text() == '수강 신청 내역'){
	        $('.currentCourseIndex').hide();
	        $('.pastCourseIndex').show();
	        $('.askIndex').hide();
	        $('.myReviewIndex').hide();
	    } else if($(this).text() == '나의 문의'){
	        $('.currentCourseIndex').hide();
	        $('.pastCourseIndex').hide();
	        $('.askIndex').show();
	        $('.myReviewIndex').hide();
	    } else if($(this).text() == '나의 후기'){
	        $('.currentCourseIndex').hide();
	        $('.pastCourseIndex').hide();
	        $('.askIndex').hide();
	        $('.myReviewIndex').show();
	    }
	})
	
	
	
	
})




</script>


<style>
.main {
	position: absolute;
	width: 75rem;
	height: 10rem;
	top: 12rem;
	background-color: #E4E6D9;
}

.part1 {
	position: absolute;
	width: 10rem;
	height: 10rem;
	text-align: center;
	font-color: #000;
	font-size: 1.5rem;
	left: 1rem;
	color: #49654E;
}

#userName {
	position: absolute;
	top: 0.75rem;
	left: 1.5rem;
}
#userId {
	position: absolute;
	top: 4rem;
	left: 1.5rem;
}

.part2 {
	position: absolute;
	width: 20rem;
	height: 10rem;
	font-size: 1.25rem;
	left: 15rem;
	color: #49654E;
}

#set {
	position: absolute;
	width: 20rem;
	height: 4rem;
	margin: 0 auto;
	padding: 0;
	top: 1rem;

}

#quit {
	position: absolute;
	width: 20rem;
	height: 4rem;
	top: 4.5rem;
	margin: 0 auto;
	padding: 0;
}

#setImg, #quitImg {
	position: absolute;
	width: 2.5rem;
	top: 1rem;
}

#setText{
	position: absolute;
	text-align: center;
	left: 3.5rem;
	top: 1.35rem;
}
#quitText {
	position: absolute;
	text-align: center;
	left: 3.5rem;
	top: 1.25rem;
}

.pointContainer {
	position: absolute;
	width: 20rem;
	height: 10rem;
	right: 0rem;
}

#pointImg {
	position: absolute;
	left: 0;
	top: 1.75rem;
}

#point {
	position: absolute;
	width: 15rem;
	height: 10rem;
	right: 0;
	color: #49654E;
}

#userPointText {
	position: absolute;
	width: 13rem;
	top: 3rem;
	left: 1rem;
	font-size: 1.25rem;
}
#numPointText {
	position: absolute;
	width: 11.5rem;
	top: 6rem;
	left: 1rem;
	font-size: 1.25rem;
}

.myPageMenu {
	position: absolute;
	width: 60rem;
	height: 2.25rem;
	margin: 0 auto;
	left: 7.5rem;
	top: 15rem;
	font-size: 1.75rem;
}

.mainMenu_bar {
	position: absolute;
	width: 70rem;
	height: 4rem;
	top: 12rem;
	left: 1rem;
}

.mainMenu_bar>ul>li {
	list-style: none;
	float: left;
	height: 3.5rem;
	line-height: 3.5rem;
	width: 25%;
	text-align: center;
	font-size: 1.5rem;
	color: #d3d3d3;
}

.mainMenu_bar>ul>li:hover {
	color: #49654E;
	font-weight: bolder;
	cursor: pointer;
}

.line {
	position: absolute;
	background-color: #49654E;
	width: 70rem;
	height: 2px;
	top: 17rem;
	left: 2rem;
}

.mainMenu.on {
	color: #49654E;
	font-weight: bolder;
	cursor: pointer;
}

.content_area {
	position: absolute;
	width: 70rem;
	border: 1px solid #ddd;
	magin: 0 auto;
	top: 20rem;
	left: 2rem;
}

.currentCourseIndex, .pastCourseIndex, .askIndex, .myReviewIndex {
	display: none;
}

.url {
	cursor: pointer;
}

input[type="button"], input[type="submit"] {
	background-color: #F0F5F8;
	border: #F0F5F8;
	cursor: pointer;
}

</style>



</head>
<body>
	<div class="wrap">
		<%@include file="/WEB-INF/views/user/common/userHeader.jsp"%>
		<div class="main">
			
			<div class="part1">
				<p id="userName"><b>${user.name }</b>님</p>
				<p id="userId">${user.id }</p>
			</div>
			<div class="part2">
				<div id="set">
					<a href="/tobe/user/member/userModify.do">
						<img src="/tobe/img/set.png" id="setImg">
						<span id="setText">회원정보수정</span>
					</a>
				</div>
				<div id="quit">
					<a href="/tobe/user/member/userQuit.do">
						<img src="/tobe/img/quit.png" id="quitImg">
						<span id="quitText">회원탈퇴</span>
					</a>
				</div>
			</div>
			
			<div class="pointContainer"><img src="/tobe/img/point.png" id="pointImg">
				<span id="point">
					<span id="userPointText"><b>${user.name }</b>님의 잔여포인트</span>
					<span id="numPointText"> ${user.point } 포인트</span>
				</span>
			</div>
			
			<div>
				
			</div>

			<div class="mainMenu_bar">
				<ul>
					<li class="mainMenu">현재 수강 중인 강좌</li>
					<li class="mainMenu">수강 신청 내역</li>
					<li class="mainMenu">나의 문의</li>
					<li class="mainMenu">나의 후기</li>
				</ul>
			</div>
			<div class="line"></div>

			<div class="content_area">
				<div class="currentCourseIndex">
					<c:if test="${empty cci}">
                        <tr>
                            <td class="noIndex">현재 수강 중인 강좌가 없습니다.</td>
                        </tr>
                    </c:if>
                    <c:if test="${!empty cci}">
                    	<table style="width: 100%; text-align: center;">
                    		<tr style="font-weight: bolder; font-size: 1.25rem;">
                    			<td style="width: 20%;">강좌번호</td>
								<td colspan="2" style="width: 40%;">강좌명</td>
								<td style="width: 20%;">개강일</td>
								<td style="width: 20%;">종강일</td>
							</tr>
		                    <c:forEach var="vo" items="${cci}">
								<tr style="text-align: center;">
	                        		<td>${vo.course_no }</td>
		                            <td class="url" onclick="location.href='/tobe/user/course/userCourseDetail.do?course_no=${vo.course_no}'">${vo.teacher_img}</td>
		                            <td class="url" onclick="location.href='/tobe/user/course/userCourseDetail.do?course_no=${vo.course_no}'">${vo.i_cname}</td>    
		                            <td>${vo.i_startday}</td>
		                            <td>${vo.i_endday}</td>
		                        </tr>
		                    </c:forEach>
                    	</table>
                    </c:if>
				</div>

				<div class="pastCourseIndex">
					<c:if test="${empty pci}">
                        <tr>
                            <td class="noIndex">수강 신청한 내역이 없습니다.</td>
                        </tr>
                    </c:if>
                    <c:if test="${!empty pci}">
	                    <table style="width: 100%; text-align: center;">
							<tr style="font-weight: bolder; font-size: 1.25rem; "> 
								<td>결제일</td>
								<td>주문번호</td>
								<td>강좌명</td>
								<td>가격</td>
								<td>강좌개강일</td>
								<td>강좌종강일</td>
								<td>비고</td>
							</tr>
                    	
		                    <c:forEach var="vo" items="${pci}">
		                        <tr >
									<td>${vo.pay_date }</td>    
		                            <td>${vo.detail_no}<input type="button" onclick="location.href='/tobe/user/pay/userPayCompleteDetail.do?detail_no=${vo.detail_no}'" value="주문상세보기"/></td>    
		                            <td class="url" onclick="location.href='/tobe/user/course/userCourseDetail.do?course_no=${vo.course_no}'">${vo.teacher_img}${vo.i_cname}</td> 
		                            <td>${vo.i_price}</td>
		                            <td>${vo.i_startday}</td>
		                            <td>${vo.i_endday}</td>
		                            
		                            <td><form action="/tobe/user/review/write.do" method="get">
		                            	<input type="hidden" name="infoCourse_no" value="${vo.course_no }">
		                            	<input type="hidden" name="infoDetail_no" value="${vo.detail_no }">
		                            	<input type="hidden" name="infoCourseName" value="${vo.i_cname }">
		                            	
		                            	<c:forEach var="rvo" items="${mri}">
		                            		<c:if test="${rvo.course_no ne vo.course_no}">
		                            			
		                            		</c:if>
		                            		
		                            		<c:choose>
											    <c:when test="${rvo.course_no eq vo.course_no}">
											        <input type="button" value="나의 후기" onclick="location.href='/tobe/user/review/userReviewDetail.do?review_no=${vo.review_no}'" >
											    </c:when>
											    <c:otherwise>
											        <input type="submit" value="후기작성">
											    </c:otherwise>
											</c:choose>
		                            		
		                            	</c:forEach>
		                            </form></td>
		                        </tr>
		                    </c:forEach>
	                    </table>
                    </c:if>
				</div>

				<div class="askIndex" style="overflow-y:scroll; height: 30rem;" >
					<c:if test="${empty mcai}">
                        <tr>
                            <td class="noIndex">문의한 내역이 없습니다.</td>
                        </tr>
                    </c:if>
                    <c:if test="${!empty mcai}">
	                    <table style="width: 100%; text-align: center;">
							<tr style="font-weight: bolder; font-size: 1.25rem; ">
								<td>문의번호</td>
								<td>제목</td>
								<td>작성일</td>
							</tr>
		                    <c:forEach var="vo" items="${mcai}">
		                        <tr>
		                            <td>${vo.cqna_no}</td>
		                            <td class="url" onclick="location.href='/tobe/user/customer/userAskForm.do?cqna_no=${vo.cqna_no}'">${vo.cq_title}</td>    
		                            <td>${vo.cq_writedate}</td>
		                            <td><input type="button" onclick="location.href='/tobe/user/customer/userModAskFrom.do?cqna_no=${vo.cqna_no}'" value="수정하기"/></td>    		                            
		                        </tr>
		                    </c:forEach>
		                    <tr></tr>
		                    <c:forEach var="vo" items="${ai}">
		                        <tr>
		                            <td>${vo.qna_no}</td>
		                            <td class="url" onclick="location.href='/tobe/user/customer/userAskForm.do?qna_no=${vo.qna_no}'">${vo.q_title}</td>    
		                            <td>${vo.q_writedate}</td>
		                            <td><input type="button" onclick="location.href='/tobe/user/customer/userModAskFrom.do?qna_no=${vo.qna_no}'" value="수정하기"/></td>    		                            
		                        </tr>
	                        </c:forEach>
	                    </table>
                    </c:if>
				</div>

				<div class="myReviewIndex">
					<c:if test="${empty mri}">
                        <tr>
                            <td class="noIndex">작성한 후기 내역이 없습니다.</td>
                        </tr>
                    </c:if>
                    <c:if test="${!empty mri }">
	                    <table style="width: 100%; text-align: center;">
							<tr style="font-weight: bolder; font-size: 1.25rem; ">
								<td>후기번호</td>
								<td>강좌명</td>
								<td>제목</td>
								<td>작성일</td>
							</tr>
		                    <c:forEach var="vo" items="${mri}">
		                        <tr>
		                            <td>${vo.review_no}</td>
		                            <td><a class="url" href="/tobe/user/review/userReviewDetail.do?review_no=${vo.review_no}">${vo.cname}</a></td>
		                            <td><a class="url" href="/tobe/user/review/userReviewDetail.do?review_no=${vo.review_no}">${vo.r_title}</a></td> 
		                            <td>${vo.r_writedate}</td>  
		                        </tr>
		                    </c:forEach>
	                    </table>
                    </c:if>
				</div>
			</div>
		</div>
	<%@include file="/WEB-INF/views/user/common/userFooter.jsp"%>
	</div>
</body>
</html>