<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<META name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=no">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
<link rel="stylesheet" href="/tobe/css/user_Header_Footer.css" />

<style>
.main {
	width: auto;
	position: relative;
	margin: 200px;
}

.select {
	width: 100%;
	height: auto;
	border: 1px solid black;
	border-collapse: collapse;
}

.select tr {
	/* display: flex; */
	font-weight: bold;
}

.select tr td {
	border: 1px solid black;
	flex: 1;
}

.list {
	width: 100%;
	border-top: 1px solid black;
}

.list th {
	border-bottom: 1px solid black;
	background: #ECEDE8;
}

.list a {
	display: inline-block;
	vertical-align: middle;
}

.context td {
	text-align: center;
	border-bottom: 1px solid black;
}

.search-wrap {
	margin: 10px;
}

.page {
	text-align: center;
	margin: 20px auto 0;
}

.page li {
	display: inline-block;
}

#top {
	position: relative;
	margin: -1100px 0 0 -10px;
}
</style>
</head>

<body>
	<div class="wrap">
		<%@include file="/WEB-INF/views/user/common/userHeader.jsp"%>
	</div>
	<div id="top">
		<div class="main">
			<table class="select">
				<div>
					<tr>
						<td style="text-align: center; width: 250px;"><div
								class="text">
								<p>공지사항</p>
							</div>
							<a href="/tobe/user/customer/userCustomer.do"><img
								src="/img/notice.png" width="80" height="80"></a></td>
						<td style="text-align: center; width: 250px;"><div
								class="text">
								<p>1:1 문의사항</p>
							</div>
							<a href="/tobe/user/customer/userQna.do"><img
								src="/img/qna.png" width="80" height="80"></a></td>
						<td style="text-align: center; width: 250px;"><div
								class="text">
								<p>FAQ</p>
							</div>
							<a href="/tobe/user/customer/userFaq.do"><img
								src="/img/faq.png" width="80" height="80"></a></td>
					</tr>
				</div>
			</table>

			<!-- <h3 class="sub_title" style="border-bottom:1px solid; width: 200px;">공지사항</h3> -->



			<div class="container">
				<div class="search-window">
					<form action="">
						<div class="search-wrap">
							<label for="search" class="blind"><strong>문의</strong></label>
							<form method="get" name="searchForm" id="searchForm"
								action="userQna.do">
								<span class="srchSelect"> <select id="stype"
									name="searchType" class="dSelect" title="검색분류 선택">
										<option value="all">전체</option>
										<option value="q_title"><c:if
												test="${QnaVO.searchType == 'q_title'}">selected</c:if>제목
										</option>
										<option value="q_writedate"><c:if
												test="${QnaVO.searchType == 'q_writedate'}">selected</c:if>작성일
										</option>
								</select>
								</span> <span class="searchWord"> <input id="search"
									type="search" name="searchWord" value="${QnaVO.searchWord }"
									placeholder="검색어를 입력하세요.">
									<button type="submit" class="btn"
										style="background-color: #ECEDE8; color: #44546A; border-width: 1px; border-radius: 7px; padding: 3x 10px;">검색</button>
								</span>
							</form>
						</div>
					</form>
				</div>
			</div>

			<div class="board_head">
				<table class="list">
					<thead>
						<tr style="text-align: center;">
							<th>번호</th>
							<th>제목</th>
							<th>작성일</th>
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
								<td>${vo.qna_no }</td>

								<td><a href="userQnaDetail.do?qna_no=${vo.qna_no }">${vo.q_title }</a></td>
								<td class="date"><fmt:formatDate value="${vo.q_writedate }"
										pattern="YYYY-MM-dd" /></td>
							</tr>
						</c:forEach>
					</tbody>

				</table>
				<div class="btnSet" style="text-align: right;">
					<c:if test="${!empty loginInfo}">
						<a class="btn" href="userAskForm.do">작성하기</a>
					</c:if>

					<div class="pagenate clear">
						<ul class='paging'>
							<c:if test="${map.prev }">
								<li><a
									href="index.do?page=${map.startPage-1 }&searchType=${QnaVO.searchType}&searchWord=${QnaVO.searchWord}">
										<< </a></li>
							</c:if>
							<c:forEach var="p" begin="${map.startPage}" end="${map.endPage}">
								<c:if test="${p == QnaVO.page}">
									<li><a href='#;' class='current'>${p}</a></li>
								</c:if>
								<c:if test="${p != QnaVO.page}">
									<li><a
										href='userQna.do?page=${p}&searchType=${QnaVO.searchType}&searchWord=${QnaVO.searchWord}'>${p}</a></li>
								</c:if>
							</c:forEach>
							<c:if test="${map.next }">
								<li><a
									href="userQna.do?page=${map.endPage+1 }&searchType=${QnaVO.searchType}&searchWord=${QnaVO.searchWord}">
										>> </a></li>
							</c:if>
						</ul>
					</div>

					<!--<div style="text-align:right;"><button onClick="location.href='userAskForm.do'">작성하기</button></div>-->
				</div>
				<%@include file="/WEB-INF/views/user/common/userFooter.jsp"%>
			</div>
		</div>
	</div>
</body>
</html>