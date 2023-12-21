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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<script>
   

</script>



<style>
#top{
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
   border: solid 1px ;
   width: 1000px;
   height: 70px;
   margin: 140px 0 0 250px;
   border-collapse: collapse;
}
.tablea {
   position: absolute;
   border: solid 1px ;
   width: 1000px;
   height: 500px;
   margin: 260px 0 0 250px;
   border-collapse: collapse;
}
tr{
border: solid 1px;
height: 30px;
}
td{
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
.ti{
   margin:
}   
#searchOrReset{
   margin: 5px;
   text-align: end;
}
#searchOrReset > button{
   cursor: pointer;
   border: 0;
   background-color: #F0F8FF;
   color: #808080;
}

</style>

</head>
<body>
<%@include file="/WEB-INF/views/chiefAdmin/common/chiefSideBar_logo.jsp" %>

   <div id="top">
      <table class="table">
		<thead>
	      <tr>
	          <td width="100px;">이름</td>
	          <td>
	            <input type="text" id="name" name="name" width="50%" value="${MemberVO.name }"  title="회원 이름">
	         </td>
	         <td width="100px;">성별</td>
	          <td>
	            <input type="text" id="gender" name="gender" width="50%" value="${MemberVO.gender }"  title="회원 성별">
	         </td>
	      </tr>
	      
	      <tr>
	          <td width="100px;">아이디</td>
	          <td>
	            <input type="text" id="id" name="id" width="50%" value="${MemberVO.id }"  title="아이디">
	          </td>
	          <td width="100px;">이메일</td>
	          <td>
	            <input type="email" id="email" name="email" width="50%" value="${MemberVO.email }"  title="이메일">
	         </td>
	      </tr>
	      
	      <tr>   
	          <td>가입일</td>
	          <td>
	            <input type="date" name="startday"> - <input type="date" name="startday">
	            <input type="button" value="오늘">
	            <input type="button" value="일주일">
	            <input type="button" value="1개월">
	            <input type="button" value="3개월">
	            <input type="button" value="전체">
	         </td>         
	      </tr>
	      
	      <tr>   
	          <td>생년월일</td>
	          <td>
	            <input type="date" name="startday"> - <input type="date" name="startday">
	         </td>	         
	      </tr>
	     </thead>
       </table>
       
             
        <div class="btn" float="right;">
	       	<input type="button" id="reset" value="초기화">
	       	<input type="button" id="search" value="검색">
       </div> 
   
 
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
		               <td><a href="chiefMemberDetail.do?no=${MemberVO.member_no }"><input type="text" name="point" id="point" style="float:left;" value="${MemberVO.point }"></a>point</td>
		               <td>${MemberVO.addr1 }</td> <td>${MemberVO.addr2 }</td>           
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
                        	<li><a href="index.do?page=${map.startPage-1 }"> &lt;&lt; </a></li>
                        </c:if>
                        <c:forEach var="p" begin="${map.startPage}" end="${map.endPage}">
                        	<c:if test="${p == MemberVO.page}">
                            <li><a href='#;' class='current'>${p}></a></li>
                            </c:if>
                            <c:if test="${p != MemberVO.page}">
                            <li><a href="chiefMemberIndex.do?page=${p}">${p}></a></li>
                            </c:if>
                        </c:forEach>
                        <c:if test="${map.next }">
                        	<li><a href="chiefMemberIndex.do?page=${map.endPage+1 }"> &gt;&gt; </a></li>
                        </c:if>
                        </ul>
                    </div>

</body>
</html>