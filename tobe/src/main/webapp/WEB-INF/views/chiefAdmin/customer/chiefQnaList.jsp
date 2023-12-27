<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1문의</title>
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
	     //$(".tog").
        // 현재 클릭한 토글 외의 다른 토글 닫기
        $(".content").not(":eq("+idx+")").slideUp(0);
        //$(".content").slideUp(300);
        // 클릭한 토글 열기 또는 닫기
        $(".content").eq(idx).slideToggle(300);
        
    });
    
$('.viewEdit').click(function () {
	console.log("aaa");
    // 현재 클릭된 viewEdit 버튼이 속한 부모 tr에서 edit 클래스를 가진 요소를 찾아 보이게 하고,
    // viewData 클래스를 가진 부분을 숨깁니다.
    $(this).closest('tr').find('.edit').show();
    $(this).closest('tr').find('.viewData').hide();
});

$('.viewRe').click(function () {
    // 현재 클릭된 viewRe 버튼이 속한 부모 tr에서 viewData 클래스를 가진 요소를 찾아 보이게 하고,
    // edit 클래스를 가진 부분을 숨깁니다.
    $(this).closest('tr').find('.viewData').show();
    $(this).closest('tr').find('.edit').hide();
});

})
</script>
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
  /* 게시판 */
		.board_write {border-top:2px solid #221f1f; border-bottom:1px solid #999;}
		.board_write thead th{text-align:center;}
		.board_write th{padding:10px; background:#f4f4f5; color:#000000; border-bottom:1px solid #ebebeb; border-right:1px solid #ebebeb; font-size:15px;}
		.board_write th br{display:none;}
		.board_write li{padding:10px; border-bottom:1px solid #ebebeb; font-size:15px; color:#2f3134; font-weight:300; box-sizing:border-box;}
		.board_write li .tx{display:inline-block;float:left;width:25px;line-height:32px;text-align:center;}
		.board_write li.email{position:relative;}
		.board_write li.email input[type=text]{float:left;width:30%;}
		.board_write li.email .selectric-dSelect{float:left;width:166px;margin:0 0 0 10px;}
		.board_write li.phone input[type=text]{float:left;width:94px;}
		.board_write li.phone .selectric-dSelect{float:left;width:94px;}
		.board_write li textarea{width:100%; height:200px; box-sizing:border-box; }
		.board_write li input[type=text]{box-sizing:border-box; }
		.board_write .fileBox{display:table;width:100%;}
		.board_write .fileBox .inputBox{float:none;display:table-cell;width:100%;}
		.board_write .fileBox .inputBox input{width:100%;}
		.board_write .fileBox .fileBtn{display:table-cell;width:125px;}
		.board_write p.help{text-align:left;font-size:12px;line-height:26px;letter-spacing:-1px; color:#999;}
		.board_write p.help:before{content:'※ ';}
		.board_write tr:last-child th, .board_write tr:last-child li{border-bottom:1px solid #dadada;}
		.board_write .ptxt {
			line-height: 30px;
		    margin-left: 5px;
		}
		
		
		.member .box{position:relative; margin:30px auto; max-width:500px;}
		.member .box p{text-align:center; font-size:20px;}
		.member .box .tab{position:relative; margin:0 auto 20px; overflow:hidden;}
		.member .box .tab li{border:1px solid #e1e1e1; width:50%; float:left; text-align:center; background:#f5f5f5;}
		.member .box .tab li.on{border-top:2px solid #87b350; border-left:2px solid #87b350; border-right:2px solid #87b350; border-bottom:1px solid #fff; color:#87b350; font-weight:bold; background:#fff;}
		.member .box .tab li:last-child.on{border-left:2px solid #87b350;}
		.member .box .tab li:last-child {border-left:none;}
		.member .box .tab li a{padding:10px 0; width:100%; display:block;}
		.member .login_form{border-top:2px solid #cad0d1; border-bottom:1px solid #cad0d1; position:relative; margin:20px auto; padding:20px 0; width:100%;}
		.member .login_form li{padding:5px 0; width:100%;}
		.member .login_form input[type=text], .member .login_form input[type=password]{height:40px; width:70%;}
		.member .login_form .login_btn{position:absolute; width:25%; height:90px;  right:0; top:25px;}
		.member .login_form .login_btn input[type=submit]{background: #221f1f;color:#fff;width:100%;height:100%;border:none;font-size: 18px;font-weight: 500;border-radius: 5px;}
		.member .box .btn{width: 48%;padding:10px 0 !important;margin:0;background:#221f1f !important;border:none;color:#fff !important;font-weight: 400;}
		.member .login_form dl{}
		.member .login_form dt{padding:5px 0; float:left; width:15%; line-height:40px; vertical-align:middle; font-weight:bold;}
		.member .login_form dd{padding:5px 0; float:left; width:85%;}
		.member .login_form dd input[type=text]{width:100%;}
		.member .login_form dd .tx{display:inline-block;float:left;width:25px;line-height:32px;text-align:center;}
		.member .login_form dd.email{position:relative;}
		.member .login_form dd.email input[type=text]{float:left;width:30%;}
		.member .login_form dd.email .selectric-dSelect{float:left;width:134px;margin:0 0 0 10px; height:40px;}
		.member .login_form dd.email .selectric-dSelect .selectric{height:40px; line-height:40px;}
		.member .login_form .search_btn input[type=submit]{background:#87b350; color:#fff; width:100%; border:none; font-size:18px; font-weight:bold; padding:10px 0; margin-top:20px;}
		
		
		/* ==================================================
			board
		================================================== */
		.bbs{position:relative; width:100%; height:100%; overflow:hidden; /*min-width:320px;*/ clear:both; padding-bottom:10px;}
		.bbs a:hover{color:#000;}
		
		/* list */
		.bbs .list{border-collapse:collapse; border-spacing:0; box-sizing:border-box;}  /* tr에 shadow_down 클래스 사용하는 경우 border-collapse:separate; 으로 변경*/
		.bbs .list thead{border-bottom:2px solid #221f1f;}
		.bbs .list thead th{padding:15px 20px; font-size:13px; height:20px; line-height:14px; color:#333;}
		.bbs .list li{text-align:center; padding:8px 10px; border-bottom:1px solid #d9d9d9;}
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
		
		
		.bbs .postSection {width:100%; }
		.bbs .postSection .postlist {width:100%; margin-left:-2%; margin-top:-2%; }
		.bbs .postSection .postlist li {float:left; width:100%; margin-left:2%; margin-top:2%; }
		.bbs .postSection .postlist li .postObj {display:block; width:100%; height:350px; box-sizing:border-box; padding:10px; border:1px solid #dadada; position:relative; overflow:hidden; transition:all .2s; -webkit-transition:all .2s; letter-spacing:-.5px;}
		.bbs .postSection .postlist li .postObj .reserveNum {width:100%; font-size:16px; padding:10px 0;}
		.bbs .postSection .postlist li .postObj .imgs {display:block; position:absolute; left:0; top:50; vertical-align:middle; width:220px; height:100%;  }
		.bbs .postSection .postlist li .postObj .imgs img { width:195px; height:280px; margin:10px;}
		.bbs .postSection .postlist li .postObj .imgs i {display:block; position:absolute; left:0; top:0px; }
		.bbs .postSection .postlist li .postObj .txt {display:block; width:100%; padding-left:220px;  padding-top:10px; box-sizing:border-box;  vertical-align:top; position:relative;  padding-right:15px; padding-bottom:25px;}
		.bbs .postSection .postlist li .postObj .txt .category {font-size:18px; color:#1091ff; font-weight:600; position:relative; height:30px; line-height:30px;  margin-bottom:5px;}
		.bbs .postSection .postlist li .postObj .txt .category:after {clear:both; content:''; ;display:block; position:absolute; left:0; bottom:-.5px; width:25px; height:1px; background:#1091ff; }
		.bbs .postSection .postlist li .postObj .txt .title {font-size:18px; color:#333; height:25px; line-height:25px; overflow:hidden; display:block; -webkit-line-clamp:1; white-space:nowrap; text-overflow:ellipsis;  word-break:keep-all; max-width:100%; margin-bottom:10px;}
		.bbs .postSection .postlist li .postObj .txt .detail {width:100%; margin-right:10px;}
		.bbs .postSection .postlist li .postObj .txt .detail table {border-collapse:collapse; border-spacing:0; box-sizing:border-box;}
		.bbs .postSection .postlist li .postObj .txt .detail table tr {height:50px;border-top:1px solid #221f1f; border-bottom:1px solid #221f1f;}
		.bbs .postSection .postlist li .postObj .txt .detail table tr th {width:100px;font-size:14px;}
		.bbs .postSection .postlist li .postObj .txt .btn_area {display:block; position:absolute; height:100px; width:100%; text-align:right; top:250px; right:0px; bottom:0;}
		.bbs .postSection .postlist li .postObj .wdate { box-sizing:border-box; position:absolute; bottom:0; left:32%; color:#999; font-size:15px; overflow:hidden;}
		.bbs .postSection .postlist li .postObj .wdate span {display:block; float:left; line-height:20px; height:20px; position:relative; padding:0 7.5px;}
		.bbs .postSection .postlist li .postObj .wdate span:first-child {padding-left:0;}
		.bbs .postSection .postlist li .postObj .wdate span:before {position:absolute; width:1px; height:12px; margin-top:-6px; top:50%; left:-.5px; background:#ccc; clear:both; content:''; display:block; }
		.bbs .postSection .postlist li .postObj .wdate span:first-child:before {display:none; }
		
		
		
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

		
		.size { /*리스트*/
			margin: 20px 0 0 250px;
			width : 1200px;
		    position: relative;
		}	
		table {/*리스트선*/
			 width:100%; 
			 border-collapse: collapse;
			}
		a, a:link, a:visited, a:hover, a:active { /*작은 글씨들 색*/
			 color:inherit; 
			 text-decoration: none;
			}	
		#noticeSeachMain { /*검색버튼*/
			margin-left: 10px;
			border: 1px solid #808080;
			text-align: center;
			width: 50px;
			height: 32px;
			background-color: #E4E6D9;
			cursor: pointer;
			border-radius: 5px;
		}

		/*input*/
		input[type="text"]  {border:1px solid #d1d1d1; height:32px; /*padding:0 10px; */vertical-align:middle;}
		select {border:1px solid #d1d1d1; height:24px; padding:3px 3px 3px 4px; vertical-align:middle; line-height:24px;}
		input[type="file"] {vertical-align:middle; height:22px; width:80%; margin-right:6px;}
		
		a[href^=tel]{color:inherit;text-decoration:none;}
		
		legend, caption{display:none;}
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
			<img src="/tobe/img/chiefAdmin_qna.png" width=35%; style="margin-left:55px;" onclick="location.href='/tobe/chiefAdmin/customer/chiefQnalist.do';">
		</div>
		<div id="f">
		<br>
			<b style="margin-left:65px;">FAQ</b><br>
			<img src="/tobe/img/chiefAdmin_faq.png" width=35%; style="margin-left:55px;" onclick="location.href='/tobe/chiefAdmin/customer/chiefFaqList.do';">
		</div>
	</div>
</div>
<!-- 페이지처리 -->
        <div class="bbsSearch">
            <form method="get" name="searchForm" id="searchForm" action="index.do">
                <span class="srchSelect">
                    <select id="stype" name="searchType" class="dSelect" title="검색분류 선택">
                        <option value="all">전체</option>
                        <option value="title" <c:if test="${QnaVO.searchType == 'title'}"></c:if>> 제목</option>
                        <option value="content" <c:if test="${QnaVO.searchType == 'content'}"></c:if>> 내용</option>
                    </select>
                </span>
                <span class="searchWord">
                    <input type="text" id="sval" name="searchWord" value="${QnaVO.searchWord}"  title="검색어 입력">
                </span>
                <!-- <input type="button" id="" value="검색" title="검색"> -->
                <span class = "btnSearch">
                	<button name = "noticeSearch" id = "noticeSeachMain">
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
                            <th>답변여부</th>
                        </tr>
                    </thead>
                    <tbody>
					<c:if test="${empty map.list }"></c:if>
                    <c:forEach var="qna" items="${list}">      
               
						    <tr>
						        <td>${qna.qna_no}</td>
						        <td class ="tog">${qna.q_title }</td>
						        <td>
						        	${qna.member_no}
						        </td>
						        <td class="writer">
                                   ${qna.member_name}
                               </td>
                               <td class="date" colspan="8"><fmt:formatDate value="${qna.q_writedate }" pattern="YYYY-MM-dd"/></td>
                               <td> <c:if test="${empty qna.q_reply}"> 미답변</c:if>
                               		<c:if test="${!empty qna.q_reply}"> 답변 완료</c:if>
                               </td>
							</tr>  
							   <tr>
                           	<td class="content" style="display:none;" colspan="8">
                           		<p>${qna.q_content }</p>
                           		<c:if test="${!empty qna.q_reply}">
                           			<div class="title">
	                           			
	                           			<div class=" viewData">${qna.q_reply }<button class="viewEdit">수정</button></div>
	                           			
	                           			
	                         			 <div class="edit" style="display:none;">
		                         			 <form action="/tobe/chiefAdmin/customer/edit.do" method="post" >
			                           	 		  <input type="hidden" id="qna_no" name="qna_no" value="${qna.qna_no} ">
											      <textarea name="q_reply" cols="100" rows="10">${qna.q_reply }</textarea>
											      <input type="submit" value="수정">
										    </form>
											<button class="viewRe">취소</button>
	                         			 </div>
	                         			 
	                         			 
                           			</div>	
                           			                         			 
                           		</c:if>
                           	 		
                           	 	<c:if test="${empty qna.q_reply}">
	                           	 	<form action="/tobe/chiefAdmin/customer/reply.do" method="post" >
	                           	 		  <input type="hidden" id="qna_no" name="qna_no" value="${qna.qna_no} ">
									      <textarea name="q_reply" cols="100" rows="10"></textarea>
									      <input type="submit" value="등록">
								    </form>
                           	 	</c:if>
                           	</td>
                            </tr>
						</c:forEach>
                   </tbody>
                </table>
             
                		<div class="pagenate clear">
                    		<ul class='paging'>
			                    <c:if test="${map.prev }">
			                    	<li><a href="/tobe/chiefAdmin/customer/chiefQnaList.do?page=${map.startPage-1 }&searchType=${QnaVO.searchType}&searchWord=${QnaVO.searchWord}"> << </a></li>
			                    </c:if>
			                    <c:forEach var="p" begin="${map.startPage}" end="${map.endPage}">
			                    	<c:if test="${p == QnaVO.page}">
			                        <li><a href='#;' class='current'>${p}</a></li>
			                        </c:if>
			                        <c:if test="${p != QnaVO.page}">
			                        <li><a href='/tobe/chiefAdmin/customer/chiefQnaList.do?page=${p}&searchType=${QnaVO.searchType}&searchWord=${QnaVO.searchWord}'>${p}</a></li>
			                        </c:if>
			                    </c:forEach>
                    			<c:if test="${map.next }">
                    				<li><a href="/tobe/chiefAdmin/customer/chiefQnaList.do?page=${map.endPage+1 }&searchType=${QnaVO.searchType}&searchWord=${QnaVO.searchWord}"> >> </a></li>
                    			</c:if>
                    		</ul> 
                		</div>
               		</div>
        		</div>
        	</div>	
</body>
</html>