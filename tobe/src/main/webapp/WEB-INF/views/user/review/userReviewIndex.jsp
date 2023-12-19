<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head> 
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="/tobe/css/user_Header_Footer.css" />
    <META name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=no"> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
    <link rel="stylesheet" href="/project/css/reset.css"/>
    <link rel="stylesheet" href="/project/css/style.css"/>
    <link rel="stylesheet" href="/project/css/contents.css"/>
    <script src="/project/js/script.js"></script> -->
    <script>
    </script>
</head> 
<style>
	 	.body{
            min-width: 1200px;
            height: 100%;

        }
        .wrap {
	        width: 75rem;
	        height: 70rem;
	        margin: 0 auto;	
	        position: relative;
        }

        *{
            box-sizing: border-box;
        }

        .header { 
        	align-content:center;
            width: 1200px;
            height: 15rem;
            position: relative;
            top: 0;
            left: 0;
        }

        .header_memberBar {
            position: absolute;
            color: #000;
            right: 0;
            top:10%;
            font-family: Inter;
            text-align: center;
            font-size: 1rem;
            letter-spacing: 0;
        }

        .tobe_logo {
            position: absolute;
            top: 4.5rem;
            width: 20rem;	
        }

        .menu_container{
            position: absolute;
            width: 50rem;
            right: 0;
            top: 6.5rem;
        }

        .menu {
            width: 14rem;
            height: 5rem;
            font-size: 2rem;
            text-align: center;
        }

        .footer { 
            background-color:#d3d3d3;
            width:100%;
            height:12rem;
            position:relative;
        }

        .footer_content {
            display: grid;
            place-items: center;
        }

        .footer_logo {
            width: 6rem;
            display: grid;
            place-items: center;
            float: left;
            height: 5rem;
        }

        .footer_info{
            width: 37.5rem;
            display: grid;
            place-items: center;
            float: left;
            height: 5rem;
        }
        
		/* button */
		.btnSet {position:relative; margin:20px 0; text-align:center; overflow:hidden;}
		.btnSet .right {position:absolute; top:0; right:0;}
		.btnSet .left {position:absolute; top:0; left:0;}
		.btn {font-size:14px; text-decoration:none !important; white-space:nowrap; display:inline-block; vertical-align:baseline; position:relative; cursor:pointer; padding:4px 20px; min-width:64px; border:2px solid #221f1f; color:#fff !important; margin:0 2px; text-align:center; font-weight:bold; border-radius:5px; background-color:#221f1f;}
		.btnSet .btn:hover{background:#313234; color:#fff !important;  text-decoration:none !important;}
		.btn.point{border:3px solid #579408 !important; color:#579408 !important;}
		.btn.point:hover{background:#579408 !important;}
		.big{font-size:16px !important; padding:10px 40px !important; border:3px solid #1d7ab3; border-radius:5px; background-color:#1d7ab3;}
		
		.btn.bgGray{background:#a8a8aa !important; border:none !important; color:#fff !important;  text-decoration:none !important; height:28px; line-height:28px; padding: 2px 10px;}
		.btn.bgGray:hover{ text-decoration:none !important;}
		
		.btn.bgGreen{background:#87b350 !important; border:none !important; color:#fff !important;  text-decoration:none !important; height:32px;}
		.btn.bgGreen:hover{ text-decoration:none !important;}
		.tdBtn .btn{display:block; margin-bottom:3px;}
		
		
		/* ==================================================
			board
		================================================== */
		.bbs{position:relative; width:100%; height:100%; overflow:hidden; /*min-width:320px;*/ clear:both; padding-bottom:10px;}
		.bbs a:hover{color:#000;}
		
		/* list */
		.bbs .list{border-collapse:collapse; border-spacing:0; box-sizing:border-box;}  /* tr에 shadow_down 클래스 사용하는 경우 border-collapse:separate; 으로 변경*/
		.bbs .list thead{border-bottom:2px solid #221f1f;}
		.bbs .list thead th{padding:15px 20px; font-size:13px; height:20px; line-height:14px; color:#333;}
		.bbs .list td{text-align:center; padding:8px 10px; border-bottom:1px solid #d9d9d9;}
		.bbs .list tbody tr:hover{background:#f6f6f6;} /*마우스오버 배경칼라지정*/
		.bbs .list .notice{background:#f9f9f9; } /*탑공지  배경칼라지정*/
		.bbs .list span.comment{color:#999; font-size:12px !important; font-weight:normal !important;} /*댓글수*/
		.bbs .list .notice_ico{display:none;}
		.bbs .list .image img{width:80px; height:auto;}
		.bbs .list .title span{font-size:15px; font-weight:bold;}
		/** tr에 shadow_down 클래스 사용하는 경우 -  테두리 박스에 그림자처리 **/
		.bbs .list tr.shadow_down th{height:35px;  background:#fff; box-shadow:0 2px 3px rgba(0, 0, 0, 0.08); -webkit-box-shadow:0 2px 3px rgba(0, 0, 0, 0.08); -moz-box-shadow:0 2px 3px rgba(0, 0, 0, 0.08); border-top:1px solid #d4d4d4; border-bottom:1px solid #d4d4d4; border-left:none; border-right:none; font-size:12px;}
		.bbs .list tr.shadow_down th:first-child{border-left:1px solid #d4d4d4; box-shadow:0;}
		.bbs .list tr.shadow_down th:last-child{border-right:1px solid #d4d4d4; box-shadow:0;}
		/** tr에 bgColor 클래스 사용하는 경우 -  배경칼라처리 **/
		.bbs .list thead.bgColor{border-top:none; border-bottom:none;}
		.bbs .list thead.bgColor th{padding:10px 20px; font-size:13px; height:20px; line-height:14px; color:#fff; background:#404143;}
		
		
		/* search */
		.bbsSearch {min-height:32px; -webkit-box-sizing:border-box; -moz-box-sizing:border-box; box-sizing:border-box; z-index:10; width:500px; margin:20px auto 15px;} 
		.bbsSearch input[type='text'] {height:32px; box-sizing:border-box; padding:5px 30px 5px 5px; border:0; width:100%; line-height:32px; background-color:#fff; border:1px solid #c7c8cc; vertical-align:middle;}
		.bbsSearch input[type='button'] {border:0; height:32px; width:32px; text-indent:-9999em; position:absolute; top:0; right:5px; background:url('/img/ico_search.png') no-repeat center center ; display:inline-block;}
		.bbsSearch .srchSelect .selectric-dSelect {float:left; width:148px; color:#666;}
		.bbsSearch .searchWord {float:left; position:relative; width:345px; margin-left:5px;}
		
		.bbsSearch {top : 30rem; position: relative; min-height:32px; -webkit-box-sizing:border-box; -moz-box-sizing:border-box; box-sizing:border-box; z-index:10; max-width:500px; width:100%;  margin-left: 700px;} 
		.bbsSearch input[type='text'] {height:32px; box-sizing:border-box; padding:5px 30px 5px 5px; border:0; width:100%; line-height:32px; background-color:#fff; border:1px solid #c7c8cc; vertical-align:middle;}
		.bbsSearch input[type='button'] {border:0; height:32px; width:32px; text-indent:-9999em; position:absolute; top:0; right:5px; display:inline-block;}
		.bbsSearch .srchSelect .selectric-dSelect {float:left; width:148px; color:#666;}
		.bbsSearch .searchWord {float:left; position:relative; width:345px; margin-left:5px;}
		.bbsSearch .srchSelect {float:left; display:block;  }
		.bbsSearch .srchSelect select {height:32px; padding:0 10px; box-sizing:border-box; }
		
		/* view */
		.bbs .view{}
		.bbs .view{width:100%; border-top:2px solid #221f1f;}
		.bbs .view .title > dl{width:100%; padding:20px; border-bottom:1px solid #221f1f; background:#fafafa;}
		.bbs .view .title > dl > dt{font-size:18px; color:#000; font-weight:bold;}
		.bbs .view .title > dl > dd{display:inline-block; font-size:14px; color:#999; margin-top:5px; }
		.bbs .view .title > dl > dd.name:after{content:"|"; display:inline-block; margin:0 10px; font-size:14px; color:#e4e4e4;}
		.bbs .view .cont{padding:20px; min-height:200px;  border-bottom:1px solid #e4e4e4; }
		.bbs .view .reply{}
		.bbs .view .reply > dl{width:100%; background:#f4f4f4; padding:20px 5%;}
		.bbs .view .reply > dl > dt{ padding:20px 0; font-size:22px; color:#000; position:relative;}
		.bbs .view .reply > dl > dt > span{display:block; font-size:16px; color:#999;}
		.bbs .view .reply > dl > dt:after {content:""; position:absolute; width:17px; height:1px; background-color:#000; bottom:0; left:3px;}
		.bbs .view .reply > dl > dd{ font-size:16px; color:#5c5d63; padding:20px 0;}
		.bbs .view .file{padding:10px 20px; overflow:hidden; border-bottom:1px solid #e4e4e4;}
		.bbs .view .file dt{float:left; width:80px; color:#999;}
		.bbs .view .file dd{float:left; text-decoration:underline !important; color:#00aeef; }
		
		.bbs .write{border-collapse:collapse; border-spacing:0; box-sizing:border-box;}  /* tr에 shadow_down 클래스 사용하는 경우 border-collapse:separate; 으로 변경*/
		.bbs .write {border-top:2px solid #221f1f; border-bottom:1px solid #221f1f;}
		.bbs .write tbody tr th{padding:15px 10px; font-size:13px; height:20px; line-height:14px; color:#333;}
		.bbs .write input[type=text] {width:100%;}
		.bbs .write textarea {width:100%; height:300px;}
		
		/* 페이징처리 */
		.pagenate {width:100%; clear:both;}
		.pagenate {text-align:center; margin:20px auto 0;}
		.pagenate li {display:inline-block;}
		.pagenate li:first-child { margin-left:0px; }
		.pagenate li a{display:inline-block; text-decoration:none; padding:0; width:30px; height:30px; line-height:30px; border:1px solid #c7c8cc; box-sizing:border-box; margin-left:-1px; vertical-align:middle;}
		.pagenate li a:hover{background:#f6f6f6; font-weight:bold; text-decoration:none !important;}
		.pagenate li a.board { text-indent:-9999em; margin-left:4px; }
		.pagenate li a.board.first {background:#f3f3f3 url('/img/ico_first.png') no-repeat center center;}
		.pagenate li a.board.prev {margin-right:30px; background:#efefef url('/img/ico_prev.png') no-repeat center center;}
		.pagenate li a.board.next {margin-left:30px; background:#efefef url('/img/ico_next.png') no-repeat center center;}
		.pagenate li a.board.last {background:#f3f3f3 url('/img/ico_last.png') no-repeat center center;}
		.pagenate li a.current {color:#fff; background-color:#221f1f; font-weight:bold;  border:1px solid #221f1f;}

		a {
		    text-decoration: none;
		    color: #49654E;
		}
		.size {
			top:30rem;
			width : 1200px;
			margin: 0 auto;
		    position: relative;
		}
		.menu {
		    width:1200px;
		    margin : 0 auto;
		    height:40px;
		}
		.menu > ul {
		    margin:0;
		    padding:0;
		    
		}
		.menu > ul > li {
		    list-style: none;
		    border:1px solid #000000;
		    background-color:#ffffff;
		    color:#000000;
		    text-align: center;
		    float:left;
		    width:20%;
		    height:40px;
		    line-height:40px;
		}
		.menu > ul > li:hover {
		    background-color:#ffffff;
		}
		.container {
		    overflow: hidden;
		    height:auto;
		    width:1200px;
		    margin : 0 auto;
		    padding : 20px;
		}
		.container > .size {
		    width:100%;
		    text-align: center;
		}
		.container > .size > .section {
		    width:31.3333%;
		    float:left;
		    margin:1%;
		}
		.sns_area > a {
		    margin: 10px;
		}
		
		ul, li {
		    list-style-type: none;
		    position: relative;
		}
		.depth2 {
		    z-index:10;
		    position: absolute;
		    text-align: center;
		    width:100%;
		    background-color: #ffffff;
		    display:none;
		}
		.visual img {
		    display: block; /* 이미지 하단 라인 제거 */
		}
		.visual {
		    height:500px;
		    width:100%;
		    text-align: center;
		    position: relative;
		}
		.swiper {
		    height:500px;
		}
		.swiper-slide {
		    background-position: center center;
		    background-size: cover;
		    background-repeat: no-repeat;
		}
		#popup {
		    position: absolute;
		    z-index:99999;
		}
		#quickMenu {
		    position: absolute;
		    z-index:99999;
		    top:124px;
		    left:1480px;
		}
		#goTop {
		    cursor: pointer;
		}
		.info {
		    width:1200px;
		    margin:0 auto;
		    overflow: hidden;
		}
		.info > .content {
		    width : 50%;
		    padding : 10px;
		    float:left;
		}
		.info > .content > .board_area {
		    width:100%;
		    border:1px solid #999;
		    padding:10px;
		}
		.info > .content > .board_area > .board_title {
		    font-size: 25px;
		    line-height : 50px;
		    float:left;
		    cursor: pointer;
		    width:100px;
		    margin-right: 5px;
		    text-align: center;
		}
		.info > .content > .board_area > .board_title.on {
		    background-color: #2d2b28;
		    color : #fff;
		}
		.board_contents {
		    clear:both;
		}
		.board_contents > ul:first-child {
		    border-top:1px solid #999;
		}
		.board_contents > ul > li {
		    line-height: 50px;
		    font-size: 18px;
		    border-bottom: 1px solid #999;
		}
		#board_data{display: none;}
		.board_contents > ul > li > span {
		    float:right;
		}
		
		* {
			text-size-adjust:none;
			-webkit-text-size-adjust:none;
			-moz-text-size-adjust:none;
			-o-text-size-adjust:none;
		}
		
		::-webkit-input-placeholder {
		   color:#575757;
		}
		:-moz-placeholder {
		    color:#575757;
		}
		::-moz-placeholder {
		    color:#575757;
		}
		:-ms-input-placeholder {
		    color:#575757;
		}
		caption {
		 display:none;
		}
		html, body{
		 height:100%;
		}
		body {
		  
		}
		body,th,td,input,select,textarea,button {
		 font-size:13px;
		 line-height:1.5;
		 font-family: 'Noto Sans KR', sans-serif; 
		 color:#2f3134
		}
		body, div, 
		dl, dt, dd, ul, ol, li, 
		h1, h2, h3, h4, h5, h6, 
		pre, code, form, fieldset, legend, textarea, p, blockquote,
		th, td, input, select, textarea, button,
		header, nav, menu, section, article {
		 margin:0;
		 padding:0
		}
		fieldset, img {
		 border:0 none
		}
		dl, ul, ol, menu, li {
		 list-style:none; 
		 vertical-align: middle
		}
		blockquote, q {
		 quotes: none
		}
		blockquote:before, blockquote:after,q:before, q:after {
		 content:'';content:none
		}
		input, textarea {
		 padding:0 5px;
		}
		input, select, textarea, button {
		 vertical-align:middle
		}
		input[type='text'],input[type='password'],input[type='submit'],input[type='search'] {
		 -webkit-appearance:none; 
		}
		input[type='text'],input[type='password'], select, textarea {
		 border:1px solid #cccccc;
		 height:32px;
		 box-sizing:border-box;
		}
		button,input[type='button'],input[type='submit'],input[type='reset'],input[type='file'] {
		 -webkit-appearance:none; 
		 border-radius:0
		}
		input[type='button'] {
		 -webkit-appearance:none;
		  border: 0;
		}
		input[type='search']:-webkit-search-cancel-button {
		 -webkit-appearance:none
		}
		input[type='radio'], input[type='checkbox'] {
		 border:none !important
		}
		#reviewSeachMain {
			margin-left: 10px;
			border: 1px solid #808080;
			text-align: center;
			width: 50px;
			height: 32px;
			background-color: #E4E6D9;
			cursor: pointer;
			border-radius: 5px;
		}
		button {
		 border:0 none;
		 background-color:transparent;
		 cursor:pointer
		}
		
		a, a:link, a:visited, a:hover, a:active {
		 color:inherit; 
		 text-decoration: none;
		}
		address,caption,cite,code,dfn,em,var {
		 font-style:normal;
		 font-weight:normal
		}
		table {
		 width:100%; 
		 border-collapse: collapse;
		}
		img { 
		 vertical-align:middle; 
		}
		
		/*input*/
		input[type="text"]  {border:1px solid #d1d1d1; height:32px; /*padding:0 10px; */vertical-align:middle;}
		select {border:1px solid #d1d1d1; height:24px; padding:3px 3px 3px 4px; vertical-align:middle; line-height:24px;}
		input[type="file"] {vertical-align:middle; height:22px; width:80%; margin-right:6px;}
		
		a[href^=tel]{color:inherit;text-decoration:none;}
		
		legend, caption{display:none;}
</style>
<body>
    <div class="wrap">
		<%@include file="/WEB-INF/views/user/common/userHeader.jsp" %>
		<!-- 페이지처리 -->
        <div class="bbsSearch">
            <form method="get" name="searchForm" id="searchForm" action="index.do">
                <span class="srchSelect">
                    <select id="stype" name="searchType" class="dSelect" title="검색분류 선택">
                        <option value="all">전체</option>
                        <option value="title" <c:if test="${replyVO.searchType == 'title'}">selected</c:if>>제목</option>
                        <option value="content" <c:if test="${replyVO.searchType == 'content'}">selected</c:if>>내용</option>
                    </select>
                </span>
                <span class="searchWord">
                    <input type="text" id="sval" name="searchWord" value="${replyVO.searchWord}"  title="검색어 입력">
                </span>
                <!-- <input type="button" id="" value="검색" title="검색"> -->
                <span class = "btnSearch">
                	<button name = "reviewSearch" id = "reviewSeachMain">
                		검색
                	</button>
                </span>
            </form>
        </div>
        <div class="size">
            <div class="bbs">
                <table class="list">
                    <caption>게시판 목록</caption>
                    <colgroup>
                        <col width="80px" />
                        <col width="*" />
                        <col width="100px" />
                        <col width="100px" />
                    </colgroup>
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>제목</th>
                            <th>작성자</th>
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
                            <td>${vo.no }</td>
                            <td style="text-align:left;">
                            	<c:forEach begin="1" end="${vo.nested }">
                            	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            	</c:forEach>
                            	<c:if test="${vo.nested > 0 }">
                            		<img src="/project/img/ico_re.png">
                            	</c:if>
                                <a href="view.do?no=${vo.no}">${vo.title } [${vo.comment_count}]</a>
                            </td>
                            <td class="writer">
                                ${vo.user_name }
                            </td>
                            <td>${vo.viewcnt }</td>
                            <td class="date"><fmt:formatDate value="${vo.writedate }" pattern="YYYY-MM-dd"/></td>
                        </tr>
                   </c:forEach>
                   </tbody>
                </table>
                <div class="btnSet"  style="text-align:right;">
                <c:if test="${!empty loginInfo}">
                    <a class="btn" href="write.do">글작성 </a>
                </c:if>
                		</div>
                		<div class="pagenate clear">
                    		<ul class='paging'>
			                    <c:if test="${map.prev }">
			                    	<li><a href="index.do?page=${map.startPage-1 }&searchType=${replyVO.searchType}&searchWord=${replyVO.searchWord}"> << </a></li>
			                    </c:if>
			                    <c:forEach var="p" begin="${map.startPage}" end="${map.endPage}">
			                    	<c:if test="${p == replyVO.page}">
			                        <li><a href='#;' class='current'>${p}</a></li>
			                        </c:if>
			                        <c:if test="${p != replyVO.page}">
			                        <li><a href='index.do?page=${p}&searchType=${replyVO.searchType}&searchWord=${replyVO.searchWord}'>${p}</a></li>
			                        </c:if>
			                    </c:forEach>
                    			<c:if test="${map.next }">
                    				<li><a href="index.do?page=${map.endPage+1 }&searchType=${replyVO.searchType}&searchWord=${replyVO.searchWord}"> >> </a></li>
                    			</c:if>
                    		</ul> 
                		</div>
               		</div>
        		</div>
        	</div>
		<%@include file="/WEB-INF/views/user/common/userFooter.jsp" %>
	</body> 
</html>