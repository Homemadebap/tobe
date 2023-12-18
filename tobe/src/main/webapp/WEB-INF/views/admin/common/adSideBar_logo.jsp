<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지 사이드바</title>


</head>
<style>

.mainLeftBar {
	position: absolute;
	width: 12rem;
	height: 50rem;
	background-color: #3F4350;
}

#admin_logo {
	position: absolute;
	width: 12rem;
	top: 0.25rem;
}

#admin_course {
	position: absolute;
	width: 10rem;
	top: 9rem;
	left: 1rem;
	color: #fff;
}


</style>
<body>
<div class="mainLeftBar">
	<img src="/tobe/img/admin_logo.png" id="admin_logo">
	<hr style="position: absolute; top: 5.5rem; border: solid 1px pink; width: 11.85rem;">
	
	<a class="admin_course" id="admin_course">
		<img src="/tobe/img/admin_course_img.png" style="width: 3rem;">
		<span style="position: absolute; top: 0.75rem; left: 4rem; font-size: 1.23rem;"><b>강좌관리</b></span>
	</a>


</div>
</body>
</html>