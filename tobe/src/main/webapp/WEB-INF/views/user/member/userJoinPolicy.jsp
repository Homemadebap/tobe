<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   	<!--<link rel="stylesheet" href="/tobe/css/user_Header_Footer.css"/>-->

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrap">
	       <%@ include file="/WEB-INF/views/user/common/userHeader.jsp" %>
	       </div>
	<form>
	    <ul class="agree">
	        <li>2020년 07 1일부로 이용약관이 개정되었습니다.</li>
	        <ul>
	            <li>약관동의(필수)</li>
	            <li class="checkBox">
	                <input type="checkbox" name="check">
	            </li>
	        </ul>
	    </ul>
	
	    <tbody>
	    <textarea name="" id="">*회원(이용자)약관 개인정보처리방침을 반드시 읽어보시기 바랍니다
	        <이용약관>
	        제1장 총칙
	    </textarea>
	
	    <ul>
	        <li>*위 동의 안내에 거부할 권리가 있습니다.
	            그러나 동의 거부할 경우 실명 확인이 되지 않음에 따라 가입 신청 및 수강 신청을 하실 수 없습니다</li>
	        <li>위와 같은 개인정보의 수집/이용에 동의하십니까?</li>
	    </ul>
	
	    <table>
	        <tr>
	            <th>수집 및 이용하는 개인정보 항목</td>
	            <th>수집 및 이용 목적</td>
	            <th>보유 및 이용기간</td>
	        </tr>
	    
	        <ul>
	            <li>[필수 동의] 개인정보 수집/이용 동의</li>
	        </ul>
	
	        <tr>
	            <td>[필수 정보]
	                한글이름, 아이디, 비밀번호,
	                생년월일, 이메일, 휴대폰번호
	            </td>
	            <td>가입 신청 및 수강 신청</td>
	            <td  style="color:red">회원 탈퇴</td>
	        </tr>
	    </table>
	        
	        <tfoot>
	            <input type="radio" id="동의함" name="option" value="1">
	            <label for="동의함">동의함</label>
	            <input type="radio" id="동의하지 않음" name="option" value="1">
	            <label for="동의하지 않음">동의하지 않음</label>
	        </tfoot>
	    </table>
	    
	</form>
	<%@ include file= "/WEB-INF/views/user/common/userFooter.jsp" %>

</body>
</html>