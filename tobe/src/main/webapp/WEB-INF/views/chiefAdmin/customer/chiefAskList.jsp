<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#top{
	position: relative;
	margin: -580px 0 0 570px; 
}
#topb{
	display: flex;
}
#f{
	border: solid 0.5px;
	width:170px; 
	height:140px;
}

#f> img{
	margin: 10px 0 0 0;
}
#f:hover{
	 color: #49654E;
    font-weight: bolder;
    cursor:pointer; 
    background-color: #F1F8E0;
}
#fi{
	border: solid 0.5px;
	width:170px; 
	height:140px;
	background-color:#F1F8E0;
}

#fi> img{
	margin: 10px 0 0 0;
}
</style>
</head>
<body>
<%@include file="/WEB-INF/views/chiefAdmin/common/chiefSideBar_logo.jsp" %>
<div id="top">
	<div id="topb">
		<div id="f">
		<br>
			<b style="margin-left:55px;">공지사항</b><br>
			<img src="/tobe/img/chiefAdmin_notice.png" width=35%; style="margin-left:55px;" onclick="location.href='/tobe/chiefAdmin/customer/chiefCustomerIndex.do';">
		</div>
		<div id="fi">
		<br>
			<b style="margin-left:55px;">1:1문의</b><br>
			<img src="/tobe/img/chiefAdmin_qna.png" width=35%; style="margin-left:55px;" onclick="location.href='/tobe/chiefAdmin/customer/chiefAskList.do';">
		</div>
		<div id="f">
		<br>
			<b style="margin-left:65px;">FAQ</b><br>
			<img src="/tobe/img/chiefAdmin_faq.png" width=35%; style="margin-left:55px;" onclick="location.href='/tobe/chiefAdmin/customer/chiefFaqList.do';">
		</div>
	</div>
</div>
</body>
</html>