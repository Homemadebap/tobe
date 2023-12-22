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

  
    <script>

    function loginCheck() {
    	if ($("#id").val() == '') {
    		alert("아이디를 입력해 주세요");
    		$("#id").focus();
    		return false;
    	}
    	if ($("#pwd").val() == '') {
    		alert("비밀번호를 입력해 주세요");
    		$("#pwd").focus();
    		return false;
    	}
    }
    </script>
    <style>
    @charset "UTF-8";


	.wrap {
		width: 85rem;
		height: 70rem;
		margin: 0 auto;	
		position: relative;
	}
	
	*{
		box-sizing: border-box;
	}
	
	.header { 
		width: 75rem;
		height: 15rem;
		position: absolute;
		top: 0;
		left: 5rem;
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
	
	a:link {
		text-decoration: none;
	}
	
	a:visited {
		text-decoration: none;
		color: #49654E; 
	}
	
	.menu_container > ul > li {
	    list-style: none;
	    float: left;        
	    height: 3rem;
	    line-height: 3rem;
	    width: 25%;
	    text-align: center;
	    color: #d3d3d3;
	    font-size: 2rem;
	}
	
	.menu_container > ul > li:hover {
	    color: #49654E;
	    font-weight: bolder;
	    cursor:pointer; 
	}
	
	
	
	
	
	.quickMenu {
		position: absolute;
		width: 4rem;
		top: 30rem;
		right: -5rem;
		z-index:99999;
	}
	
	.quick {
		width: 4rem;
	}
	
	#goTop {
	    cursor: pointer;
	}
	
	
	
	
		
	.footer { 
		background-color:#d3d3d3;
		width:100%;
		height:12.5rem;
		position:absolute;
		top: 65rem;
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
    
    .sub{
    position:absolute;
    top:50%;
    left:50%;
    transform:translate(-50%, -50%);
    }
    .no_dot{
    list-style-type:none;
    }
    .login_btn{
	border-radius: 30px;
	background-color: #E4E6D9;
	color: #FFFFFF;
    }
    .btnSet_clear .btn{
    text-decoration-line: none;
    border-radius: 10px;
    background-color: #F5F5F5;
    color: #000000;
    border-color: #000000;
 	border-width: thin;
    }
    </style>
    
</head> 
<body>
    <div class="wrap">
    <%@ include file="/WEB-INF/views/user/common/userHeader.jsp" %>
    </div>
    	<form action="userLogin.do" method="post" id="board1" name="board1" onsubmit="">
            <div class="sub">
                <h3 class="sub_title">로그인</h3>
                	<div class="size">
                    	
                    <div class="member">
                        <div class="box">
                            <fieldset class="login_form">
                                <ul class="no_dot" margin>
                                    <li>TOBE</li>
                                    <li><input type="text" id="id" name="id" placeholder="아이디" style="width:200px"></li>
                                    <li><input type="password" id="pwd" name="pwd" placeholder="비밀번호" style="width:200px"></li>
                                    <li><label><input type="checkbox" name="reg1" id="reg1" style="width:10px;height:10px"/><font size="1px">아이디저장</font></label></li>
                                    <!-- <li><a href="userFindMember.do" class="btn" style="font-size:10px">아이디|비밀번호 찾기</a></li>  -->
                                    <button onclick="window.open('userFindMember.do','window_name','width=300,height=700');">아이디|비밀번호 찾기</button>
                                </ul>
                                <div class="login_btn"><input type="submit" value="로그인"/></div>
                            </fieldset>
                            <div class="btnSet_clear">
                                <div style="color: #2F5720">
                                    <p>아직 TOBE회원이 아니신가요?<a href="userJoinForm.do" class="btn">회원가입</a></p>
                               </div>
                            </div>
                        </div>
                    </div>
        
                </div>
            </div>
        </form>
	<%@ include file= "/WEB-INF/views/user/common/userFooter.jsp" %>
</body> 
</html>