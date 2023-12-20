<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세페이지</title>
</head>
<body>
<%@include file="/WEB-INF/views/chiefAdmin/common/chiefSideBar_logo.jsp" %>
	<form action="">
			<div class = "noticeDetailTitle">
		   		<h1>공지사항</h1>
		   	</div>
		   	<div id="firstLine">
			   	<hr>
		   	</div>
		   	<div>
		   		<table>
				    <tr>
				        <td>${notice.n_title}</td>
				        <td><c:out value="${notice.n_writedate}" /></td>
				    </tr>
				</table>
		   	</div>
		   	<div id="secondLine">
		   		<hr>
		   	</div>
		   	<div class = "textBox">
		   		<div class = "subContainer">
		   			<input type="text" value="${notice.n_content}" readonly id="realTextBox">
		   		</div>
		   	</div>
		   	<div class = "combackBtn">
		  			<button type="button" onclick="location.href='/tobe/chiefAdmin/customer/chiefCustomerIndex.do'" class="comBack">목록</button></td>
		 	</div>
	</form>
</body>
</html>