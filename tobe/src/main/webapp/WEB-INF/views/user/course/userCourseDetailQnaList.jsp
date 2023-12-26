<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style>
	.list{
		margin: 0 auto;
	}
</style>
  <div class="board_head">
      <table class="list">
          <thead>
              <tr>
                  <th>번호</th>
                  <th>제목</th>
                  <th>작성일</th>
              </tr>
          </thead>
          
          <!-- <tbody>
          	<tr>
	        <td>${Cqna.cq_title}</td>
	        <td><c:out value="${Cqna.cq_writedate}" /></td>
	    	</tr>
          </tbody>  -->
          <tbody>
          	<c:if test="${empty cqnaList }">
                 <tr>
                     <td class="first" colspan="8">등록된 글이 없습니다.</td>
                 </tr>
			</c:if>
			<c:forEach var="vo" items="${cqnaList }">       
                  <tr>
                      <td>${vo.cqna_no }</td>
                      <td>${vo.cq_title }</td>                     
                      <td class="date"><fmt:formatDate value="${vo.cq_writedate }" pattern="YYYY-MM-dd"/></td>
                  </tr>
             </c:forEach>
          </tbody>
      </table>
      <div class="btnSet"  style="text-align:center;">
            	<c:if test="${!empty loginInfo}">
                	<a class="btn" href="userAskForm.do">작성하기</a>
            	</c:if>

			<div class="pagenate clear">
			    <ul class='paging'>
			        <c:if test="${currentPage > 1}">
					    <li><a href="userCourseDetailQnaList.do?page=${currentPage - 1}&course_no=${course_no}"> << </a></li>
					</c:if>
					<c:forEach var="p" begin="1" end="${totalPage}">
					    <c:choose>
					        <c:when test="${p == currentPage}">
					            <li><a href='#;' class='current'>${p}</a></li>
					        </c:when>
					        <c:otherwise>
					            <li><a href='userCourseDetailQnaList.do?page=${p}&course_no=${course_no}'>${p}</a></li>
					        </c:otherwise>
					    </c:choose>
					</c:forEach>
					<c:if test="${currentPage < totalPage}">
					    <li><a href="userCourseDetailQnaList.do?page=${currentPage + 1}&course_no=${course_no}"> >> </a></li>
					</c:if>
			    </ul>
			</div>
   	</div>
</div>
