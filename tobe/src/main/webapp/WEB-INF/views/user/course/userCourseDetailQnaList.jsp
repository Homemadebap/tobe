<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
     <div class="container">
       <div class="search-window">
         <form action="">
           <div class="search-wrap">
             <label for="search" class="blind" style="font-weight: bold;">문의</label>
                <form method="get" name="searchForm" id="searchForm" action="userCourseDetailQnaList.do">
                  <span class="srchSelect">
                     	<select id="stype" name="searchType" class="dSelect" title="검색분류 선택">
                     		<option value="all">전체</option>
                       <option value="cq_title"><c:if test="${CqnaVO.searchType == 'cq_title'}">selected</c:if>제목</option>
                       <option value="cq_writedate"><c:if test="${CqnaVO.searchType == 'cq_writedate'}">selected</c:if>작성일</option>
                  	</select>
                  </span>
                  
                  <span class="searchWord">
                   <input id="search" type="search" name="searchWord" value="${CqnaVO.searchWord }" placeholder="검색어를 입력하세요.">                        
                   <button type="submit" class="btn" style="background-color: #ECEDE8; color:#44546A; border-width: 1px; border-radius: 7px; padding:3x 10px; ">검색</button>
                  </span>
                 </form>
                 
           </div>
         </form>
       </div>
    </div>
        
  <div class="board_head">
      <table class="list">
          <thead>
              <tr style="text-align: center;" >
                  <th>번호</th>
                  <th>제목</th>
                  <th>작성일</th>
              </tr>
          </thead>
          
          <tbody>
          	<tr>
	        <td>${Cqna.cq_title}</td>
	        <td><c:out value="${Cqna.cq_writedate}" /></td>
	    </tr>
          </tbody>
          <tbody>
          <c:if test="${empty map.list }">
                        <tr>
                            <td class="first" colspan="8">등록된 글이 없습니다.</td>
                        </tr>
	</c:if>
	<c:forEach var="vo" items="${map.list }">       
                        <tr>
                            <td>${vo.cqna_no }</td>
                            <td style="text-align:left;">
                            	<c:forEach begin="1" end="${vo.nested }">
                            	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            	</c:forEach>
                            	<c:if test="${vo.nested > 0 }">
                            		<img src="">
                            	</c:if>
                          
                            </td>
                            <td>${vo.cq_title }</td>                     
                            <td class="date"><fmt:formatDate value="${vo.cq_writedate }" pattern="YYYY-MM-dd"/></td>
                        </tr>
                   </c:forEach>
          </tbody>

      </table>
         <div class="btnSet"  style="text-align:right;">
               <c:if test="${!empty loginInfo}">
                   <a class="btn" href="userAskForm.do">작성하기</a>
               </c:if>

<div class="pagenate clear">
                   <ul class='paging'>
                   <c:if test="${map.prev }">
                   	<li><a href="index.do?page=${map.startPage-1 }&searchType=${CqnaVO.searchType}&searchWord=${CqnaVO.searchWord}"> << </a></li>
                   </c:if>
                   <c:forEach var="p" begin="${map.startPage}" end="${map.endPage}">
                   	<c:if test="${p == CqnaVO.page}">
                       <li><a href='#;' class='current'>${p}</a></li>
                       </c:if>
                       <c:if test="${p != CqnaVO.page}">
                       <li><a href='userQna.do?page=${p}&searchType=${CqnaVO.searchType}&searchWord=${CqnaVO.searchWord}'>${p}</a></li>
                       </c:if>
                   </c:forEach>
                   <c:if test="${map.next }">
                   	<li><a href="userQna.do?page=${map.endPage+1 }&searchType=${CqnaVO.searchType}&searchWord=${CqnaVO.searchWord}"> >> </a></li>
                   </c:if>
                    </ul>
                </div>
                 
   	</div>
</div>
