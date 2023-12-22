<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<style>
	.id_title {
	float:left;
	}
	.pwd_contents > .pwd_class {
	border : 1px, solid #black;
	}
	</style>
<script>
$(function(){
	//
	$('.id_title').click(function(){
		$('.pwd_title').removeClass('on');
		$(this).addClass('on');
		$(".pwd_contents").hide();
		$(".id_contents").show();
	});
	$('.pwd_title').click(function(){
		$('.id_title').removeClass('on');
		$(this).addClass('on');
		$(".pwd_contents").show();
		$(".id_contents").hide();
	});
	
});
</script>
</head>

<body>


	<div class="board_area">
	
		<div class="id_title">아이디 찾기</div>
		<div class="pwd_title">비밀번호 찾기</div>
		
		<!-- <form action="userFindMember.do" method="get" id="idboard" name="idboard" onsubmit=""> -->
			<div class="id_contents" id="id_data">
				<ul>
					<li style="list-style: none;">회원가입 시 등록하신 정보로<br>아이디를 확인하실 수 있습니다.</li>
				</ul>			
				<table>
					<tr>
						<td>이름</td>
						<td><input type="text" id="name" placeholder="이름"></td>
					</tr>
					<tr>
						<td>이메일 주소</td>
						<td><input type="email" id="email" placeholder="이메일을 입력해주세요."></td>
					</tr>
					<tr>
						<td><input type="button" id="ok" value="다음"></td>
					</tr>
				</table>
			</div>
		</form>
		
		<div class="pwd_contents" id="pwd_data" style="display: none;">
			<table class="pwd_table">
				<tr>
					<td>이름</td><td><input type="text" id="id"></td>
				</tr>
				<tr>
					<td>아이디</td><td><input type="password" id="password"></td>
				</tr>
				<tr>
					<td>이메일</td><td><input type="email" id="email"></td>
				</tr>				
			</table>
			<!-- <form action="userLogin.do" method="post" id="login" name="login" onsubmit="">  -->			
			<div class="ok_btn"><input type="submit" value="확인"/></div>
		</div>
	</div>




</body>
</html>