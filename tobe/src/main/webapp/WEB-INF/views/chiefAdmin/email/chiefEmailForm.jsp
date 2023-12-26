<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head> 
    <meta charset="utf-8">
    <title></title>
    <META name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=no"> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
    <script src="/tobe/smarteditor/js/HuskyEZCreator.js"></script>
    <link rel="stylesheet" href="/tobe/css/user_Header_Footer.css" />
    <script>
    var oEditors = [];
    $(function() {
        nhn.husky.EZCreator.createInIFrame({
            oAppRef: oEditors,
            elPlaceHolder: "e_content",
            sSkinURI: "/tobe/smarteditor/SmartEditor2Skin.html",    
            htParams : {
                bUseToolbar : true,                // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
                bUseVerticalResizer : true,        // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
                bUseModeChanger : true,            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
                fOnBeforeUnload : function(){
                }
            }, //boolean
            fOnAppLoad : function(){
                //예제 코드
                //oEditors.getById["contents"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
            },
            fCreator: "createSEditor2"
        });
    })
    function goSave() {
    	oEditors.getById['e_content'].exec('UPDATE_CONTENTS_FIELD',[]);
    	$("#frm").submit();
    }

</script>
<style>

	.sub {
	   
	    position: relative;
	    top: 13rem;
	}
	.board_write{
		width: 80%;

	}

	
</style>
</head> 
<body>

<%@include file="/WEB-INF/views/chiefAdmin/common/chiefSideBar_logo.jsp" %>
    <div class="wrap">
	   <div class="size">
	       <h3 class="sub_title">메일 보내기</h3>
	
	       <div class="bbs">
	       <form method="post" name="frm" id="frm" action="/tobe/chiefAdmin/email/send.do" enctype="multipart/form-data" >
	       	
	           <table class="board_write">
	         
	               <tbody>
	               <tr>
	               	<th>제목</th>
	                   <td>
	                       <input type="text" name="e_title" id="e_title" style="width:100%;"value=""/>
	                   </td>
	               </tr>
	               <tr>
	               	<th>받는사람</th>
	               		<c:if test="${empty email}">
	               			<input type="text" name="email" id="email" style="width:100%;"value=""/>
						</c:if>
						<c:if test="${not empty email}">
							<input type="text" name="email" id="email" style="width:100%;"value="${email }" readonly/>	
						</c:if>
		               
	               </tr>
	               <tr>
	               	<th>내용</th>
	                   <td>
	                       <textarea name="e_content" id="e_content" style="width:100%;"></textarea>
	                   </td>
	               </tr>
	               <tr>
	               	<td>
	                	<div class="btnSet"  style="text-align:right;">
	               		<a class="btn" href="javascript:goSave();">저장</a>
	               		<a href="javascript:;" class="btn" onclick="history.back();">취소</a></div>
	                </td>
	                </tr>
	                </tbody>
	            </table>
	        
	            </form>
	        </div>
	    </div>
	</div>
</body> 
</html>