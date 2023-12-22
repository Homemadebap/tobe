<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>학원별 문의관리 페이지</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<script>
$(function(){
	//console.log(${map});
    $(".tog").click(function(){
    	console.log("dddd");
        var idx = $(this).index(".tog");
        
        // 현재 클릭한 토글 외의 다른 토글 닫기
        //$(".content").not(":eq("+idx+")").slideUp(300);
        $(".content").slideUp(300);
        // 클릭한 토글 열기 또는 닫기
        $(".content").eq(idx).slideToggle(300);
    });
})
	
</script>


<style>
* {
	box-sizing: border-box;
}

body {
	position: relative;
}
.box {
	position: absolute;
	width: 75rem;
	height: 38rem;
	top: 5.5rem; 
	left: 10rem;
	border: 1px solid #ddd;
	box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5);
}

.sbox {
	position: absolute;
	width: 17.5rem;
	height: 16rem;
	top: 29rem;
	border: 1px solid #ddd;
	box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5);
}

</style>

</head>
<body>
	<%@include file="/WEB-INF/views/admin/common/adSideBar_logo2.jsp" %>
	<div class="sub box">
           <div class="size">
               <h3 class="sub_title">답변게시판</h3>
               <div class="bbs">
                   <table class="list">
                   <p><span><strong>총 ${map.count }개</strong>  |  ${cqnaVO.page }/${map.totalPage }페이지</span></p>
                       <caption>문의 목록</caption>
                       <colgroup>
                           <col width="80px" />
                           <col width="*" />
                           <col width="100px" />
                           <col width="100px" />
                           <col width="100px" />
                       </colgroup>
                       <thead>
                           <tr>
                               <th>번호</th>
                               <th>제목</th>
                               <th>작성자</th>
                               <th>작성일</th>
                               <th>답변여부</th>
                           </tr>
                       </thead>
                       <tbody>
					 	<c:if test="${empty map.list }">
                           <tr>
                               <td class="first" colspan="8">등록된 글이 없습니다.</td>
                           </tr>
						</c:if>
                       <c:forEach var="vo" items="${map.list }">       
                           <tr>
                               <td>${vo.cqna_no }</td>
                               <td class ="tog">${vo.cq_title }</td>

                               <td class="writer">
                                   ${vo.member_no }
                               </td>
                               <td class="date"><fmt:formatDate value="${vo.cq_writedate }" pattern="YYYY-MM-dd"/></td>
                               <td> <c:if test="${empty vo.cq_reply}"> 미답변</c:if></td>
                           </tr>
                           <tr>
                           	<td class="content" style="display:none;" colspan="5">
                           		<p><textarea cols="100" rows="10">${vo.cq_content }</textarea></p>
                           		<c:if test="${!empty vo.cq_reply}"> ${vo.cq_reply}</c:if>
                           	 	
                           	 	<c:if test="${empty vo.cq_reply}">
	                           	 	<form>
									      <p><textarea cols="100" rows="10"></textarea></p>
									      <p><a href="">등록</a></p>
								    </form>
                           	 	</c:if>
                           	</td>
                            </tr>

                           <tr>
                           	 <td class="c"> 
                           	 	
                           	 </td>
                           </tr>
                      </c:forEach>
                       </tbody>
                   </table> 
                   <table>
                   
                   </table>
            
                    <div class="pagenate clear">
                       <ul class='paging'>
                       <c:if test="${map.prev }">
                       	<li><a href="/tobe/admin/customer/adQnaIndex.do?page=${map.startPage-1 }"> << </a></li>
                       </c:if>
                       <c:forEach var="p" begin="${map.startPage}" end="${map.endPage}">
                       	<c:if test="${p == cqnaVO.page}">
                           <li><a href='#;' class='current'>${p}</a></li>
                           </c:if>
                           <c:if test="${p != cqnaVO.page}">
                           <li><a href='/tobe/admin/customer/adQnaIndex.do?page=${p}'>${p}</a></li>
                           </c:if>
                       </c:forEach>
                       <c:if test="${map.next }">
                       	<li><a href="/tobe/admin/customer/adQnaIndex.do?page=${map.endPage+1 }"> >> </a></li>
                       </c:if>
                       </ul> 
                   </div> 
               
                
                         
               </div>
           </div>
        </div>

</body>
</html>