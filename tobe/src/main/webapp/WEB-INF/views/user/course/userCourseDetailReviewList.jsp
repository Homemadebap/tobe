<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<META name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=no">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
<link rel="stylesheet" href="/tobe/css/user_Header_Footer.css" />
    
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
          
          <tbody>
          	<tr>
	        <td>${Cqna.cq_title}</td>
	        <td><c:out value="${Cqna.cq_writedate}" /></td>
	    </tr>
          </tbody>
          <tbody>
          	<c:if test="${empty qna }">
                        <tr>
                            <td class="first" colspan="8">등록된 글이 없습니다.</td>
                        </tr>
			</c:if>
			<c:forEach var="vo" items="${qna }">       
                  <tr>
                      <td>${vo.cqna_no }</td>
                      <td style="text-align:left;">
                      	<!--<c:forEach begin="1" end="${vo.nested }">
                      	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      	</c:forEach>
                      	<!--<c:if test="${vo.nested > 0 }">
                      		<img src="">
                      	</c:if>-->
                    
                      </td>
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
