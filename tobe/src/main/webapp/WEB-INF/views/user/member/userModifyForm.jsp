<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Tobe 회원정보수정</title>

<META name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=no">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
<link rel="stylesheet" href="/tobe/css/user_Header_Footer.css" />

	<script>
		var dupCheck = false;
		function goSave() {
			if ($("#id").val() == '') {
				alert('아이디를 입력하세요');
				$("#id").focus();
				return;
			}
			
			if ($("#pwd").val() == '') {
				alert('비밀번호를 입력하세요');
				$("#pwd").focus();
				return;
			}
			
			if ($("#pwd").val() != $("#pwd_check").val()) {
				alert('비밀번호를 확인하세요');
				return;
			}
			
			var reg = /^[A-Za-z0-9]{8,}$/;
			var txt = $("#pwd").val();
			if( txt.match(reg) == null ) {
			    alert("비밀번호는 영문+숫자 조합해서 8자이상 입력하세요");
			    return false;
			}
			if ($("#name").val() == '') {
				alert('이름을 입력하세요');
				$("#name").focus();
				return;
			}
			// 전송
			console.log("QKEFHKE");
			$("#frm").submit();
			}
	</script>

	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>  
		<script>
			   function zipcode() {
			        new daum.Postcode({
			            oncomplete: function(data) {
			                var roadAddr = data.roadAddress;
			                var extraRoadAddr = '';
			                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
			                    extraRoadAddr += data.bname;
			                }
			               
			                if(data.buildingName !== '' && data.apartment === 'Y'){
			                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
			                }
			                
			                if(extraRoadAddr !== ''){
			                    extraRoadAddr = ' (' + extraRoadAddr + ')';
			                }
			                $('#zipcode').val(data.zonecode);
			                $('#addr1').val(roadAddr);
			            }
			        }).open();
			    }
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
		font-color: #000;
		font-size: 1.5rem;
		left: 1rem;
		color: #49654E;
	}
	
	#userName {
		position: absolute;
		top: 0.75rem;
		left: 1.5rem;
	}
	#userId {
		position: absolute;
		top: 4rem;
		left: 1.5rem;
	}
	
	.part2 {
		position: absolute;
		width: 20rem;
		height: 10rem;
		font-size: 1.25rem;
		left: 15rem;
		color: #49654E;
	}
	
	#set {
		position: absolute;
		width: 20rem;
		height: 4rem;
		margin: 0 auto;
		padding: 0;
		top: 1rem;
	
	}
	
	#quit {
		position: absolute;
		width: 20rem;
		height: 4rem;
		top: 4.5rem;
		margin: 0 auto;
		padding: 0;
	}
	
	#setImg, #quitImg {
		position: absolute;
		width: 2.5rem;
		top: 1rem;
	}
	
	#setText{
		position: absolute;
		text-align: center;
		left: 3.5rem;
		top: 1.35rem;
	}
	#quitText {
		position: absolute;
		text-align: center;
		left: 3.5rem;
		top: 1.25rem;
	}
	
	.pointContainer {
		position: absolute;
		width: 20rem;
		height: 10rem;
		right: 0rem;
	}
	
	#pointImg {
		position: absolute;
		left: 0;
		top: 1.75rem;
	}
	
	#point {
		position: absolute;
		width: 15rem;
		height: 10rem;
		right: 0;
		color: #49654E;
	}
	
	#userPointText {
		position: absolute;
		width: 13rem;
		top: 3rem;
		left: 1rem;
		font-size: 1.25rem;
	}
	#numPointText {
		position: absolute;
		width: 11.5rem;
		top: 6rem;
		left: 1rem;
		font-size: 1.25rem;
	}
	
	.modifyForm {
		position: absolute;
		width: 40rem;
		top: 13rem;
		left: 19rem;
		color: #49654E;
	}
	
	.frm {
		width: 40rem;
		font-size: 1.25rem;
	}
	
	.input {
		width: 15rem;
		text-align: center;
		font-size: 1.15rem;	
		padding: 0.5rem;
		margin: 0.25rem auto;
	}
	
	#resetBtn {
		position: absolute;
	    border: none;
	    background: none;
	    padding: 0;
	    margin: 0;
	    cursor: pointer;
	    font-size: 1.5rem;
	    top: 36rem;
	    left: 19rem;
	}
	
	#modBtn {
		position: absolute;
	    border: none;
	    background: none;
	    padding: 0;
	    margin: 0;
	    cursor: pointer;
	    font-size: 1.5rem;
	    top: 36rem;
	    left: 15rem;
	    color: #49654E;
	}
	
	
	</style>


</head>
<body>
	<div class="wrap">
		<%@include file="/WEB-INF/views/user/common/userHeader.jsp"%>
		<div class="main">
			
			<div class="part1">
				<p id="userName"><b>${user.name }</b>님</p>
				<p id="userId">${user.id }</p>
			</div>
			<div class="part2">
				<div id="set">
						<img src="/tobe/img/set.png" id="setImg">
						<span id="setText"><b>회원정보수정</b></span>
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
					<span id="userPointText"><b>${user.name }</b>님의 잔여포인트</span>
					<span id="numPointText"> ${user.point } 포인트</span>
				</span>

			</div>
	
			<div class="modifyForm">
				<h2 class="sub_title">회원정보 수정</h2>
                <form name="frm" id="frm" method="post" action="userModify.do">
	                <table class="board_write">
	                    <colgroup>
	                        <col width="20%" />
	                        <col width="80%" />
	                    </colgroup>
	                    <tbody>
	                    	<tr>
	                    		<th>이름</th>
	                    		<td><input type="text" name="name" id="name" class="input" style="float:left;" value="${user.name }" readonly><td></</td>
	                    	</tr>
	                        <tr>
	                            <th>아이디</th>
	                            <!--<td><input type="text" name="id" id="id" style="float:left;" value="${vo.id }"></td>-->
	                            <td>${user.id }</td>

	                        </tr>
	                        <tr>
	                            <th>비밀번호</th>
	                            <td><input type="password" name="pwd" id="pwd" class="input" style="float:left;"><span class="ptxt">비밀번호는 숫자, 영문 조합으로 8자 이상으로 입력해주세요.</span> </td>
	                        </tr>
	                        <tr>
	                            <th>비밀번호 확인</th>
	                            <td><input type="password" name="pwd_check" id="pwd_check" style="float:left;"></td>
	                        </tr>
	                        <tr>
	                            <th>이메일</th> 
                                <td><input type="text" name="email" id="email" style="float:left;"></td>
	                        </tr>
	                        <tr>
	                            <th>성별</th>
	                            <td>
	                            <select name="gender" id="gender">
	                            <option value="1">남성</option>
	                            <option value="2">여성</option>
	                            </select> 
	                            </td>
	                        </tr>
	                        <tr>
	                            <th>생년월일</th>
	                            <td><input type="text" name="birthday" id="birthday"style="float:left;" value="${vo.birthday }"> </td>
	                        </tr>
	                        <tr>
	                            <th>휴대폰 번호</th>
	                            <td>
	                                <input type="text" name="hp" id="hp" maxlength="15" style="float:left;" value="${vo.hp }">
	                            </td>
	                        </tr>
	                        <tr>
	                            <th>주소</th>
	                            
	                            <td>
	                                <input type="text" name="zipcode" id="zipcode" maxlength="6" style="float:left;" value="${user.zipcode }">
	                                <span class="email_check"><a href="javascript:zipcode();"  class="btn" style="float:left; width:auto; clear:none;">우편번호</a></span>
	                            </td>
	                        </tr>
	                     	<tr>
	                     		<th>상세 주소</th>
	                            <td>
	                                <input type="text" name="addr1" id="addr1" maxlength="15" style="float:left;" value="${user.addr1 }">
	                            </td>
	                        </tr>
	                        	<td>
	                                <input type="text" name="addr2" id="addr2" maxlength="15" style="float:left;" value="${user.addr2 }">
	                            </td>
	                        </tr>
	                    </tbody>
	                </table>
	                    <input type="hidden" name="cmd" value="write.do"/>
	                    <input type="hidden" name="member_no" id="member_no" value="${user.member_no }"/> <!-- 강사님 수정해주심 -->
	                    
	                    <!-- 이메일 부분 해야함 -->
	                    <!-- input type="reset" id="resetBtn" value="취소"/> -->
                </form>
            		<div class="btnSet clear">
                    	<div><a href="javascript:;" class="btn" onclick="goSave();">수정완료</a> <a href="javascript:;" class="btn" onclick="history.back();">취소</a></div>
                	</div>
			</div>
			
		</div>
		<%@include file="/WEB-INF/views/user/common/userFooter.jsp"%>
	</div>
</body>
</html>