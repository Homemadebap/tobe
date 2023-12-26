<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="/WEB-INF/views/chiefAdmin/common/chiefSideBar_logo.jsp" %>
  <div id="con">
	   <div id="boxa">
    	  <div id="a">
            <a href="/tobe/chiefAdmin/email/chiefEmailForm.do" id="dd"><font size=1px;>메일작성하기</a></font>
            <img src="/tobe/img/mail.png" onclick="location.href='/tobe/chiefAdmin/email/chiefEmailForm.do';" id="mail"><br>
         </div>
           <div id="a">
            <a href="/tobe/chiefAdmin/email/chiefEmailBox.do" id="dd"><font size=1px;>보낸메일함</a></font>
            <img src="/tobe/img/mail.png" onclick="location.href='/tobe/chiefAdmin/email/chiefEmailBox.do';" id="mail"><br>
            <a href="/tobe/chiefAdmin/email/chiefEmailIndex.do" id="mailp">메일작성 바로가기</a>
         </div>
         <div id="a">
            <a href="/tobe/chiefAdmin/email/chiefMemberListEmail.do" id="dd"><font size=1px;>회원목록바로가기</a></font>
            <img src="/tobe/img/mail.png" onclick="location.href='/tobe/chiefAdmin/email/chiefMemberListEmail.do';" id="mail"><br>
         </div>
      </div>
  </div>    	
</body>
</html>