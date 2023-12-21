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
	</style>
</head>

<body>

	<div class="board_area">
		<div class="id_title">아이디 찾기</div>
		<div class="pwd_title">비밀번호 찾기</div>
		<ul>
			<li style="list-style: none;">회원가입 시 등록하신 정보로<br>아이디를 확인하실 수 있습니다.</li>
		</ul>
	<div class="board_contents" id="pwd_data"></div>
		<ul style="display: none;" >
			<li style="list-style: none;" >해당 이메일로<br>임시 비밀번호를 전송하였습니다.</li>
		</ul>
	</div>
	<div id="popup">
		<div>팝업</div>
	</div>
	
<script>
    var WCKMemberFindIDPW = new WCKMemberFindIDPW();
    var WCKMember = new WCKMember();
    WCKMember.InitializeIDPWAll(WCKMemberFindIDPW);
</script>
</body>
</html>