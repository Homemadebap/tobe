<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Tobe 회원탈퇴</title>

<META name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=no">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
<link rel="stylesheet" href="/tobe/css/user_Header_Footer.css" />

<script type="text/javascript">

$(function(){
	
	
	
	
	
})



</script>

<style>
.main {
	position: absolute;
	width: 75rem;
	height: 10rem;
	top: 12rem;
	background-color: #E4E6D9;
}

.part1 {
	position: absolute;
	width: 10rem;
	height: 10rem;
	text-align: center;
	font-color: #49654E;
	font-size: 1.5rem;
	left: 1rem;
}

.part2 {
	position: absolute;
	width: 20rem;
	height: 10rem;
	font-size: 1.5rem;
	left: 15rem;
}

#set {
	position: absolute;
	width: 20rem;
	height: 4rem;
	margin: 0 auto;
	padding: 0;
	top: 0.75rem;

}

#quit {
	position: absolute;
	width: 20rem;
	height: 4rem;
	top: 4.25rem;
	margin: 0 auto;
	padding: 0;
}

#setImg, #quitImg {
	position: absolute;
	width: 3rem;
	top: 1rem;
}

#setText{
	position: absolute;
	width: 10rem;
	height: 3rem;
	text-align: center;
	left: 3.5rem;
	top: 1.5rem;
}
#quitText {
	position: absolute;
	width: 10rem;
	height: 3rem;
	text-align: center;
	left: 2rem;
	top: 1.5rem;
}

.pointContainer {
	position: absolute;
	width: 20rem;
	height: 10rem;
	right: 0;
}

#pointImg {
	position: absolute;
	left: 0;
	top: 1.75rem;
}

#point {
	position: absolute;
	width: 13.5rem;
	height: 10rem;
	right: 0;
}

#userPointText {
	position: absolute;
	width: 11.5rem;
	top: 3rem;
	left: 1rem;
}
#numPointText {
	position: absolute;
	width: 11.5rem;
	top: 6rem;
	left: 1rem;
}

.quitMain {
	position: absolute;
	top: 17.5rem;
	width: 40rem; 
	left: 17.5rem;
}

#pwdCheckBox {
	margin: 2rem 12rem;
}

#idCheck, #pwdCheck {
	width: 15rem;
	text-align: center;
	font-size: 1rem;	
	padding: 0.5rem;
	margin: 0.5rem auto;
}

#pwdCheckBtn {
	position: absolute;
	width: 6rem;
	height: 2rem;
	font-size: 1.25rem;
	top: 17.5rem;
	left: 16.5rem;
	background-color: #000;
	color: #fff;
}

.quitNotice {
	position: absolute;
	top: 12rem;
	left: 1rem;
}

.quitBox {
	position: absolute;
	width: 71rem;
	top: 32.5rem;
	margin: 0 2rem;
}

.line {
	position: absolute;
	background-color: #49654E;
	width: 70rem;
	height: 2px;
	top: 5rem;
	
}

#quitAgree {
	position: absolute;
	width: 8rem;
	height: 2rem;
	font-size: 1.25rem;
	background-color: #000;
	color: #fff;
    cursor: pointer;
    left: 31rem;
}


</style>


</head>
<body>
	<div class="wrap">
		<%@include file="/WEB-INF/views/user/common/userHeader.jsp"%>
		<div class="main">
			
			<div class="part1">
				<p>${user.name }님</p>
				<p>안녕하세요</p>
			</div>
			<div class="part2">
				<div id="set">
					<a href="/tobe/user/member/userModifyForm.do">
						<img src="/tobe/img/set.png" id="setImg">
						<span id="setText">회원정보수정</span>
					</a>
				</div>
				<div id="quit">
					<a href="/tobe/user/member/userQuit.do">
						<img src="/tobe/img/quit.png" id="quitImg">
						<span id="quitText">회원탈퇴</span>
					</a>
				</div>
			</div>
			
			<div class="pointContainer"><img src="/tobe/img/point.png" id="pointImg">
				<span id="point">
					<span id="userPointText">${user.name }님의 잔여포인트</span>
					<span id="numPointText"> ${user.point } 포인트</span>
				</span>
			</div>
			
			<div class="quitNotice">
				<h1>그동안 Tobe를 이용해주셔서 감사합니다.</h1>
				<p style="font-size: 1.3rem;">공영쇼핑 회원탈퇴 시 아래 사항을 확인하여 주시기 바랍니다.</p>
				<ul style="font-size: 1.15rem;">
					<li>고객님의 정보는 전자상거래 소비자보호법에 의거한 공영쇼핑 개인정보보호정책에 따라 관리됩니다.
					<li>탈퇴 시 고객님께서 보유하셨던 포인트는 모두 삭제되며, 재가입 시에도 복원되지 않습니다.</li>
					<li>탈퇴 후 <b>3개월</b>동안 재가입을 하실 수 없습니다.</li>
					<li>탈퇴 <b>3개월</b> 이후 재가입 시 동일 ID 재사용이 가능합니다.</li>
					<li>탈퇴 시 <b>예치금은 환불처리가 가능(반드시 본인명의의 계좌만 가능)하며</b>, 환불요청은 고객센터(02-1234-5678)로 연락 주시기 바랍니다.</li>
					<li>탈퇴 시 받으신 혜택 제공은 모두 취소됩니다.</li>
				</ul>
			</div>
			
			<div class="quitBox">
				<h1 id="q">회원 탈퇴 사유</h1>
				<div class="line"></div>
				<form class="quitForm" method="post" action="userQuit.do">
					<table>
						<tr>
							<th style="width: 10rem; font-size: 1.25rem;" >회원 탈퇴 사유</th>
							<td >
								<select id="quitReason" style="width: 15rem; height: 2rem; font-size: 1rem;" required>
									<option value="1">강의종류 불만</option>
									<option value="2">강의가격 불만</option>
									<option value="3">강의질 불만</option>
									<option value="4">강사 불만</option>
									<option value="5">환불 불만</option>
									<option value="6">고객응대 불만</option>
									<option value="7">시스템 불만</option>
									<option value="8">이용빈도 낮음</option>
									<option value="9">개인정보 유출 우려</option>
									<option value="10">포인트 및 혜택 부족</option>
									<option value="11">기타</option>
								</select>
							</td>
						</tr>
						<tr>
							<th style="font-size: 1.25rem;">기타 불만 사항</th>
							<td><textarea id="quitOpnion" cols="100" rows="15" placeholder="(선택입력)Tobe에 의견이 있으시면 작성해주세요." 
									style="font-size:1rem;"></textarea></td>
						</tr>					
					</table>
					<input type="checkbox" id="quitCheck" name="quitCheck" required>
					<span style="font-size: 1rem;"><b>회원탈퇴 안내를 모두 확인하였으며 탈퇴에 동의합니다.</b></span><br><br>
					<input type="submit" id="quitAgree" value="탈퇴하기">
				</form>
			</div>

			
			
		</div>
		<%@include file="/WEB-INF/views/user/common/userFooter.jsp"%>
	</div>
</body>
</html>