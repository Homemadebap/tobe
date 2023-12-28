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

function checkId() {
	if ($("#name").val() == '') {
		alert("이름을 입력해주세요");
		$("#name").focus();
		return false;
	}
	if ($("#email").val() == '') {
		alert("이메일을 입력해 주세요");
		$("#email").focus();
		return false;
	}
}

function checkPwd() {
	if ($("#name2").val() == '') {
		alert("이름을 입력해주세요");
		$("#name2").focus();
		return false;
	}
	if ($("#id2").val() == '') {
		alert("아이디를 입력해 주세요");
		$("#id2").focus();
		return false;
	}
	if ($("#email2").val() == '') {
		alert("이메일을 입력해 주세요");
		$("#email2").focus();
		return false;
	}
}
</script>
<style>
ul{
list-style:none;
}
.head{
display:flex;
flex-direction:row;
justify-content:space-around;
}
.id_title, .pwd_title{
cursor:pointer;
}
.second{
margin-left:-15px;
}
.id_form li{
float:left;

}
.check_btn{
margin-top:10px;
width:273px;
background-color:black;
color:white;
}
#email_bx{
margin-bottom:20px;
}
fieldset{
margin-top:20px;
}
.ok_btn{
margin-top:10px;
width:273px;
background-color:black;
color:white;
}
</style>
</head>

<body>

<form action="userFindMember.do" method="post" id="board1" name="board1" onsubmit="return checkId()">
		
		<div class="head">
			<div class="id_title">아이디 찾기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</div>
			<div class="pwd_title">비밀번호 찾기</div>
		</div>
			
				<div class="id_contents" id="id_data">
					<ul class="second">
						<li style="list-style: none;">회원가입 시 등록하신 정보로<br>아이디를 확인하실 수 있습니다.</li>
					</ul>				
					<fieldset class="id_form">
						<ul>
							<li>이름</li>
							<li><input type="text" name="name" id="name" ></li>
						</ul>
						<ul>
							<li>이메일 주소</li>
							<li id="email_bx"><input type="email" name="email" id="email" ></li>
						</ul>					
					</fieldset>
					<div class="check_btn"><input type="submit" value="다음"></div>
				</div>
</form>
			
	<form action="userFindPwdNext.do" method="post" id="board2" name="board2" onsubmit="return checkPwd()">
		<div class="pwd_contents" id="pwd_data" style="display: none;">
			<fieldset clss="pwd_form">
				<ul>
					<li>이름</li>
					<li><input type="text" name="name" id="name2"></li>
				</ul>
				<ul>
					<li>아이디</li>
					<li><input type="id" name="id" id="id2"></li>
				</ul>
				<ul>
					<li>이메일</li>
					<li><input type="email" name="email" id="email2"></li>
				</ul>
			</fieldset>						
			<div class="ok_btn"><input type="submit" value="확인"/></div>
		</div>
	</form>





</body>
</html>