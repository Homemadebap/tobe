<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
</head>
<style>
#con{
	margin: -680px 0 0 150px;
}
#boxa{
	display: flex;
}

#a{
	margin: 100px 0 0 40px;
	width:250px; 
	height:200px; 
	background-color:#fff;
	border-color: #A9D0F5;
	border: solid 0.3px;
}

#b{
	margin: 100px 0 0 40px;
	width:400px; 
	height:200px; 
	background-color:#fff;
	border-color: #A9D0F5;
	border: solid 0.3px;
}

#aa{
	margin: 0 0 0 190px;
	text-decoration: none;
	color: #585858;
}
#bb{
	margin: 0 0 0 320px;
	text-decoration: none;
	color: #585858;
}
#cc{
	margin: 0 0 0 340px;
	text-decoration: none;
	color: #585858;
}
#dd{
	margin: 0 0 0 200px;
	text-decoration: none;
	color: #585858;
}
#class1{
	margin: 25px 0 0 25px;
	width:200px; 
	height:45px; 
	background-color: #EFF8FB;
	display: flex;	
}
#class2{
	margin: 25px 0 0 25px;
	width:200px; 
	height:45px; 
	background-color: #EFF8FB;
	display: flex;
}
#w1{
	text-decoration: none;
	color: #000;
	margin: 9px 0 0 35px;
}
#w2{
	text-decoration: none;
	color: #000;
	margin: 9px 0 0 20px;
}
#class1> img {
	margin: 6px 0 0 0;
}
#class2> img {
	margin: 6px 0 0 0;
}
#class1> p{
	margin: 12px 0 0 10px; 
}
#class2> p{
	margin: 12px 0 0 10px; 
}
#mail{
	width: 90px;
	height: 90px;
	margin: 19px 0 0 80px;
}
#mailp{
	margin: 60px 0 0 60px;
	text-decoration: none;
	color: #000;
}
#wrap{
	display:table;
}
#cnt{
	color: #81DAF5;
	font-size: 
	display: table-cell;
	vertical-align:middle;
}
#today{
	font-size: 
	display:table-cell;
	vertical-align:middle;
}
#all{
	font-size: 
	display:table-cell;
	vertical-align:middle;
}
}
</style>
<body>
<%@include file="/WEB-INF/views/chiefAdmin/common/chiefSideBar_logo.jsp" %>
  <div id="con">
	   <div id="boxa">
         <div id="a">
            <a href="/tobe/chiefAdmin/member/chiefMemberIndex.do" id="aa"><font size=1px;>회원관리→</a></font>
            <div id="wrap">
	            <div id="cnt">6</div>
	            <div id="today">오늘 신규 회원 수</div>
	            <div id="all">총 회원 1260</div>
            </div>
         </div>
         <div id="b">
            <a href="/tobe/chiefAdmin/pay/chiefPayIndex.do" id="cc"><font size=1px;>결제관리→</a></font>
             <div>
             	<div>    3        1        2</div>
             	<div> 오늘 결제   주문 취소   입금 대기</div>
             </div>
         </div>
         <div id="a">
            <a href="/tobe/chiefAdmin/email/chiefEmailIndex.do" id="dd"><font size=1px;>이메일→</a></font>
            <img src="/tobe/img/mail.png" onclick="location.href='/tobe/chiefAdmin/email/chiefEmailIndex.do';" id="mail"><br>
            <a href="/tobe/chiefAdmin/email/chiefEmailIndex.do" id="mailp">메일작성 바로가기</a>
         </div>
      </div>
      <div id="boxa">
         <div id="a">
            <a href="/tobe/chiefAdmin/course/chiefCourseIndex.do" id="aa"><font size=1px;>강좌관리→</a></font>
            <div>
               <div id="class1">
                  <img src="/tobe/img/cl_1.png" width=22% height=80%;><p>  강좌  리스트</p><a href="/tobe/chiefAdmin/course/chiefCourseIndex.do" id="w1">→</a>
               </div>
               <div id="class2">
                  <img src="/tobe/img/cl_2.png" width=21% height=80%;><p>  강좌 등록하기</p><a href="/tobe/chiefAdmin/course/chiefCourseForm.do" id="w2">→</a>
               </div>
            </div>
         </div>
         <div id="b">
            <a href="/tobe/chiefAdmin/customer/chiefCustomerIndex.do" id="bb"><font size=1px;>고객센터관리→</a></font>
         </div>
         <div id="a">
            <a href="/tobe/chiefAdmin/sales/chiefSalesIndex.do" id="aa"><font size=1px;>정산관리→</a></font>
         	<div>10,000,000</div>
         	<div>이번 달 매출</div>                             
         </div>
      </div>   
  </div>    	
</body>
</html>