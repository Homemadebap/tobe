<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
$(document).ready(function(){
  var currentPosition = parseInt($(".quickMenu").css("top"));
  $(window).scroll(function() {
    var position = $(window).scrollTop(); 
    $(".quickMenu").stop().animate({"top":position+currentPosition+"px"},500);
  });
});


// $("#goTop").click(function() {
// 	$('html').animate({scrollTop:0}, 2000);
// });

//document.querySelect("#goTop").onclick = () => {
//	window.scroppTop({top:0, behavior:"smooth"});
//};




</script>

</head>
<body>

<div class="header">
	<span class="header_memberBar">
		<c:if test="${empty loginInfo }">
		    <a href="/tobe/user/member/login.do">로그인</a> |
		    <a href="/tobe/user/member/userJoinForm.do">회원가입</a>
		</c:if>
		
		<c:if test="${!empty loginInfo }">
		    <a href="/tobe/user/member/userLogout.do">로그아웃</a> |
		    <a href="/tobe/user/member/userMyPageMain.do">마이페이지</a>
		</c:if>
	</span>
	
	
	<span><a href="/tobe/user/common/userIndex.do"><img src="/tobe/img/header_tobe_logo.png" class="tobe_logo"></a></span>
	<div class="menu_container">
		<ul>
			<li><a href="/tobe/user/course/userCourseIndex.do">수강신청</a></li>
			<li><a href="/tobe/user/common/userTestSchedule.do">시험일정</a></li>
			<li><a href="/tobe/user/review/userReviewIndex.do">수강후기</a></li>
			<li><a href="/tobe/user/customer/userCustomer.do">고객센터</a></li>
		</ul>
	</div>


	<span class="quickMenu">
		<span><img src="/tobe/img/top.png" class="quick" id="goTop" style="width: 27px; height: 20px; margin-left: 17px;"></span>
		<span><a href="/tobe/user/customer/userCustomer.do"><img src="/tobe/img/customer.png" class="quick" style="width: 55px; margin-left: 5px;"></a></span>
		<span><a href="/tobe/user/common/userBasket.do"><img src="/tobe/img/basket.png" class="quick" style="width: 55px; margin-left: 5px;"></a></span>
		<span><a href="/tobe/user/common/userCompareCourse.do"><img src="/tobe/img/compare.png" class="quick" style="width: 50px; margin-left: 8px;"></a></span>
		<span><img src="/tobe/img/bottom.png" class="quick" id="goBottom" style="width: 28px; height: 20px; margin-left: 18px;"></span>
	</span>

</div>

</body>
</html>

