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
    
    
    
    function selectAll() {
        const selectAllCheckbox = document.getElementById('selectAllCheckbox');
        const checkboxes = document.getElementsByName('select');

        checkboxes.forEach((checkbox) => {
            checkbox.checked = selectAllCheckbox.checked;
        });
    }
    
 // 폼 제출 전 체크 확인 및 페이지 이동 함수
    function checkAgree() {
	 	if (!$("#agree1").prop("checked")) {
	 		alert('개인정보 수집/이용을 확인하세요.');
	 		return;
	 	}
	 	if (!$("#agree2").prop("checked")) {
	 		alert('개인정보 제3자 제공을 확인하세요.');
	 		return;
	 	}
	 	location.href="userJoinForm.do";
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
    

  	.check2 tr td {
  	border : 1px solid black;
  	border-collapse : collapse;
  	}
  	
  	.check3 tr td {
  	border : 1px solid black;
  	}
  	
  	li{
  	list-style:none;
  	}
  	.all {
	background-color : #F5F5F5;	
  	}
  	.first li{
  	float:left;
  	}
  	textarea{
  	margin:
  	}
  	#top{
   position: relative;
   margin: -580px 0 0 570px; 
}
    </style>
    
</head> 
<body>
    <div class="wrap">
    <%@ include file="/WEB-INF/views/user/common/userHeader.jsp" %>
    </div>
    <div id="top">
    	<!-- <form name="policy" action="userJoinPolicy.do" method="post" id="joinPolicy">lass="join_box">
    	  -->
    	  <div class="all">
    	  	<form onsubmit="return validateForm()">
    			<li class="checkBox check1">
    				<ul class="clearfix">
	    				<ul class="first">
	    					<li><font color="red" style="font-weight:bold">2020년 07월 1일</font>부로 이용약관이 개정되었습니다.</li>
	    					<li class="checkAllBtn">
	    						<input type="checkbox" id="selectAllCheckbox" onclick="selectAll()">
	    						<label for="selectAllCheckbox"><b>전체 동의</b></label> 
	    					</li>
	    				</ul>
	  
						
	    				<textarea rows="15" cols="150" style="background-color:#EBEBEB">
	    				<li>* 회원(이용자) 약관, 개인정보처리방침을 반드시 읽어보시기 바랍니다.</li>			            
			            <p> &lt;이용약관&gt; </p>
			            <h4>제1장 총 칙</h4>
			            <h5>제1조(목적)</h5>
			            <p> 이 약관은 ‘토비’ 가 ‘토비 사이트’ 를 운영, 제공하는 인터넷 관련 서비스(“이하 합하여 “서비스”라 합니다.)를 하나의 ID 및 PASSWORD로 각 사이트에 가입하여 이용함에 있어 토비와 이용자의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다. </p>
			            <h5>제2조(용어의 정의)</h5>
			            <ol>
			              <li> 1. 토비 패밀리
			                <div> ㈜토비아카데미 및 ㈜토비에스씨에스가 재화 또는 용역을 이용자에게 제공하기 위하여 컴퓨터 등 정보 통신설비를 이용하여 재화 또는 용역을 거래할 수 있도록 설정한 가상의 영업장을 말하며 아울러 토비 패밀리를 운영하는 사업자의 의미로도 사용합니다. ‘토비’ 를 운영하는 사업자란 토비교육그룹(㈜토비아카데미와 ㈜토비에스씨에스)을 의미합니다. </div>
			              </li>
			              <li> 2. 토비 사이트
			                <div> ‘토비 사이트’ 란 ㈜토비아카데미가 운영하는 토비 21, 잡토비, 토비 오즈랑, ㈜토비에스씨에스가 운영하는 토비인강, 토비토쿨, 토비원, 토비주니어, 토비북스, 테스트클리닉을 의미합니다. </div>
			              </li>
			              <li> 3.토비 사이트 회원
			                <div> ‘토비’ 에 개인정보를 제공하여 회원등록을 하고 회원 ID를 부여 받은 자 또는 그 “회원” 전체를 의미하며, 회원등록 시 등록한 ID로 ‘토비 사이트’ 에 자유롭게 접속할 수 있으며, 어느 한 곳에 접속(Log-in)하게 되면 별도의 Log-in 절차 없이 다른 ‘토비 사이트’ 를 이용하실 수 있습니다. </div>
			              </li>
			              <li>4.회원 ID
			                <div> 이용자 식별과 서비스 이용을 위하여 “회원”이 선정하고 ‘토비’ 가 부여하는 영문자와 숫자의 조합을 말합니다. </div>
			              </li>
			              <li>5.비밀번호
			                <div> 서비스 이용 시 회원ID와 이용자가 일치하는지를 확인하고 이용자의 비밀보호를 위하여 이용자 자신이 선정한 영문자와 숫자의 조합을 말합니다. </div>
			              </li>
			              <li>6.요금 납입 책임자
			                <div> ‘토비’ 에 대하여 부담하는 서비스 요금 등 약관에 따른 모든 채무를 이행할 의무가 있는 자로서 이용자를 원칙으로 합니다. 다만 ‘토비’ 가 인정하는 경우에는 타인을 요금 납입 책임자로 할 수 있으며, 이 경우 이용자와 연대하여 책임을 집니다. </div>
			              </li>
			              <li> 7. 해지
			                <div> ‘토비’ 또는 이용자가 서비스 개통 후에 서비스 이용계약을 종료 시키는 의사표시를 말합니다. </div>
			              </li>
			              <li> 8. 패밀리머니
			                <div> ‘토비’ 가 지정한 행위를 한 이용자에게 적립해주는 포인트로 ‘패밀리머니’ 는 1포인트당 1원의 현금가치를 지닙니다. </div>
			              </li>
			              <li>9. 쿠폰
			                <div> ‘토비’ 멤버십이 되었을 때 지급되는 결제보조수단 입니다. </div>
			              </li>
			            </ol>
			            <h5>제3조(약관의 효력과 변경)</h5>
			            <ul>
			              <li> 1. ‘토비’ 는 이 약관의 내용과 상호, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호, 모사전송번호, e-메일주소, 사업자등록번호, 통신판매업신고번호 등을 이용자가 쉽게 알 수 있도록 ‘토비 사이트’ 의 초기 서비스화면(전면)에 게시합니다. 
			                다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다. </li>
			              <li> 2. ‘토비’ 는 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회, 배송책임, 환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다. </li>
			              <li> 3. ‘토비’ 는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제에 관한 법률, 전자거래기본법, 전자서명법, 정보통신망이용촉진 및 정보보호등에 관한 법률, 방문판매등에 관한 법률, 소비자보호법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다. </li>
			              <li> 4. ‘토비’ 는 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행 약관과 함께 ‘토비 사이트’ 의 초기화면에 그 적용일 7일 이전부터 적용일자 전일까지 공지하며 변경된 약관을 기존 이용자에게 전자우편주소로 발송합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 ‘토비’ 는 개정 전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다. </li>
			              <li> 5. 변경된 약관 조항 중 상품 또는 용역의 구매계약에 관한 조항은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 변경전의 조항이 그대로 적용됩니다. 다만, 이미 매매계약을 체결한 이용자가 변경된 조항의 적용을 받기를 원하는 뜻을 상기 제4항에 의한 변경약관의 공지기간 내에 “토비 패밀리”에 송신하여 ‘토비’ 의 동의를 받은 경우에는 변경된 조항이 적용됩니다. </li>
			              <li> 6. ‘토비’ 가 개정약관을 공지 또는 통지하면서 “회원”에게 30일 기간 내에 의사표시를 하지 않으면 의사표시가 표명된 것으로 본다는 뜻을 명확하게 별도로 공지 또는 고지하였음에도 “회원”이 명시적으로 거부의사를 표시하지 아니한 경우 “회원”이 개정약관에 동의한 것으로 봅니다.<br>
			                또한, “회원”이 개정약관의 적용에 동의하지 않는 경우 토비는 개정약관의 내용을 적용할 수 없으며, 이 경우, “회원”은 이용계약을 해지할 수 있습니다. 다만, 기존약관을 적용할 수 없는 특별한 사정이 있는 경우에는 ‘토비’ 는 이용계약을 해지할 수 있습니다 </li>
			            </ul>
			            <h5>제4조(약관 외 준칙)</h5>
			            <p> 이 약관에 명시되지 않은 사항과 해석에 대해서는 전자상거래등에서의소비자보호에관한법률, 약관의규제등에관한법률, 공정거래위원회가 정하는 전자상거래등에서의소비자보호지침 기타 관계법령 또는 상관례에 따릅니다. </p>
			            <h4>제2장 회원가입과 서비스의 이용</h4>
			            <h5>제5조(회원신청)</h5>
			            <ul>
			              <li> 1. 서비스 이용희망자는 ‘토비’ 가 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원 가입을 신청합니다. </li>
			              <li> 2. ‘토비’ 는 제1항에 따라 회원 가입을 신청한 이용자 중 다음 각 호에 해당하지 않는 한 “회원" 으로 등록합니다.
			                <ul>
			                  <li> ① 가입신청자가 이 약관 제7조 제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만, 제7조 제3항에 의한 회원자격 상실 후 3년이 경과한 자로서 ‘토비’ 가 회원 재가입을 승낙한 경우는 예외로 합니다. </li>
			                  <li> ② 등록 내용에 허위, 기재누락, 오기가 있는 경우 </li>
			                  <li> ③ 기타 “회원”으로 등록하는 것이 ‘토비 사이트’의 기술상 현저히 지장이 있다고 판단되는 경우 </li>
			                  <li>④ 14세 미만 아동이 법정대리인(부모 등)의 동의를 얻지 아니한 경우</li>
			                </ul>
			              </li>
			              <li> 3. 회원가입은 ‘토비’ 의 승낙이 가입 신청한 이용자에게 도달한 때에 가입 완료됩니다. </li>
			              <li> 4. "회원"은 ‘토비 사이트’ 에 등록한 회원정보에 변경이 있는 경우, 즉시 토비 개인정보처리방침에서 정하는 방법에 따라 해당 변경사항을 통지하거나 수정하여야 합니다. </li>
			              <li> 5. ‘토비’ 는 “회원”의 정보를 회원계약 시 제시한 개인정보처리방침이 정한 바에 따라서만 수집, 이용할 수 있습니다. </li>
			            </ul>
			            <h5>제6조(회원신청의 승낙 및 회원정보 사용에 대한 동의) </h5>
			            <ul>
			              <li> 1. ‘토비 사이트’ 는 제5조의 규정에 의한 서비스 이용희망자에 대하여 업무 수행상 또는 기술상 지장이 없는 경우에는 원칙적으로 접수순서에 따라 이용신청을 승낙합니다. </li>
			              <li> 2. ‘토비 사이트’ 가 이용신청을 승낙하는 때에는 이용자에게 전자우편 또는 전화 등을 통하여 다음 각 호의 사항을 통지합니다.
			                <ul>
			                  <li>① 회원ID</li>
			                  <li>② 서비스 이용 개시일</li>
			                  <li>③ 이용자의 권리, 책임 및 기타 권익보호에 대한 사항</li>
			                  <li>④ 기타 [토비 패밀리]가 필요하다고 인정하는 사항</li>
			                </ul>
			              </li>
			              <li> 3. 회원의 개인 정보에 대해서는 ‘토비’ 의 개인정보 보호정책이 적용됩니다. </li>
			              <li> 4. ‘토비’ 가 제5조에 따라 신청서에 기재를 요구하는 “회원”의 개인정보는 본 회원계약의 이행과 본 회원계약상의 서비스제공을 위한 목적으로 이용합니다. </li>
			              <li> 5. “회원” 은 회원정보 수정을 통해 언제든지 개인 정보에 대한 열람 및 수정을 할 수 있습니다. </li>
			              <li> 6. ‘토비 사이트’는 "회원"에 대하여 "영화및비디오물의진흥에관한법률" 및 "청소년보호법"등에 따른 등급 및 연령 준수를 위해 이용제한이나 등급별 제한을 할 수 있습니다. </li>
			            </ul>
			            <h5>제7조(회원의 탈퇴 및 회원자격 상실) </h5>
			            <ul>
			              <li> 1. "회원"은 ‘토비’ 에 언제든지 탈퇴를 요청할 수 있으며, "회원"이 탈퇴 요청을 하는 경우에는 ‘토비’ 는 즉시 회원탈퇴에 필요한 조치를 취합니다. </li>
			              <li> 2. "회원"이 다음 각 호의 사유에 해당하는 경우, ‘토비’ 는 회원에 대하여 일정한 서비스의 이용을 제한하거나 일정기간 회원자격을 정지시킬 수 있습니다.
			                <ol>
			                  <li> ① 가입 신청 시에 허위 내용을 등록한 경우 </li>
			                  <li> ② ‘토비 사이트’ 를 이용하여 구입한 "재화 등"의 대금, 기타 ‘토비 사이트’ 이용과 관련하여 회원이 부담하는 채무를 기일에 이행하지 않는 경우 </li>
			                  <li> ③ 타인의 ID와 비밀번호 또는 그 개인정보를 도용한 경우 </li>
			                  <li> ④ ‘토비 사이트’ 의 화면에서 타인의 명예를 손상시키거나 불이익을 주는 행위를 한 경우 </li>
			                  <li> ⑤ 제3자의 "사이트" 이용을 방해하는 등 전자상거래질서를 위협하는 경우 </li>
			                  <li> ⑥ ‘토비 사이트’ 화면에 음란물을 게재하거나 음란사이트를 링크시키는 경우 </li>
			                  <li> ⑦ ‘토비 사이트’ 를 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우 </li>
			                  <li> ⑧ 기타 서비스 운영을 고의로 방해하는 행위를 하는 경우 </li>
			                </ol>
			              </li>
			              <li> 3. ‘토비’ 가 회원 자격을 제한 혹은 정지 시킨 후, 제2항의 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 ‘토비’ 는 회원자격을 상실시킬 수 있습니다. </li>
			              <li> 4. ‘토비’ 가 회원자격을 상실 시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다. </li>
			            </ul>
			            <h5>제8조(회원에 대한 통지)</h5>
			            <ul>
			              <li> 1. ‘토비 사이트’ 가 "회원"에 대한 통지를 하는 경우, "회원"이 ‘토비’ 와 미리 약정하여 지정한 휴대전화번호/이메일 주소로 할 수 있습니다. </li>
			              <li> 2. ‘토비 사이트’ 는 불특정다수 회원에 대한 통지의 경우 1주일이상 ‘토비 사이트’ 화면에 게시함으로써 개별 통지에 갈음 할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별통지를 합니다. </li>
			            </ul>
			            <h5>제9조(회원 ID 변경 불가)</h5>
			            <p> 이용자가 회원 ID에 대한 변경요청을 할 지라도 일단 등록된 회원ID는 변경 할 수 없습니다. </p>
			            <h5>제10조(회원 아이디(ID)와 비밀번호 관리에 대한 회원의 의무) </h5>
			            <p> 아이디(ID)와 비밀번호에 관한 모든 관리책임은 회원에게 있습니다. 회원의 아이디 및 비밀번호의 관리에 관하여 ‘토비’ 의 고의 및 중과실이 없는 한, 회원에게 부여된 아이디(ID)와 비밀번호의 관리소홀, 부정사용에 의하여 발생하는 모든 결과에 대한 책임은 회원에게 있습니다. </p>
			            <h4>제3장 재화 구매, 이용 및 청약철회</h4>
			            <h5>제11조(구매신청)</h5>
			            <p> 이용자는 ‘토비 사이트’ 에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, ‘토비’ 는 이용자가 구매 신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다. 단, “회원” 인 경우 제2호 내지 제4호의 적용을 제외할 수 있습니다. </p>
			            <ol>
			              <li>1. 재화 등의 검색 및 선택</li>
			              <li>2. 성명, 주소, 전화번호, e-mail, 휴대폰 등의 입력</li>
			              <li>3. 약관내용, 청약철회권이 제한되는 서비스, 배송료 등의 비용부담과 관련한 내용에 대한 확인</li>
			              <li>4. 이 약관에 동의하고 위3호의 사항을 확인하거나 거부하는 표시)</li>
			              <li>5. 재화 등의 구매신청 및 이에 관한 확인 또는 ‘토비 사이트’ 의 확인에 대한 동의</li>
			              <li>6. 결제방법의 선택</li>
			            </ol>
			            <h5>제12조(구매계약의 성립)</h5>
			            <ul>
			              <li> 1. ‘토비’ 는 제11조 구매신청에 대하여 다음 각 호에 해당하면 승낙하지 않을 수 있습니다. 다만, 미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야 합니다.
			                <ul>
			                  <li>① 신청 내용에 허위, 기재누락, 오기가 있는 경우</li>
			                  <li>② 상행위(재판매)를 목적으로 구매하는 거래이거나, 거래 정황상 상행위(재판매)를 목적으로 한 구매로 판단되는 경우</li>
			                  <li>③ 기타 구매신청을 승낙하는 것이 [토비 패밀리] 기술상 현저히 지장이 있다고 판단하는 경우</li>
			                </ul>
			              </li>
			              <li> 2. 토비’ 의 승낙이 제14조 제1항의 수신확인 통지형태로 이용자에게 도달한 시점에 구매계약이 성립한 것으로 봅니다. </li>
			              <li> 3. ‘토비’ 의 승낙의 의사표시에는 이용자의 구매신청에 대한 확인 및 판매가능 여부, 구매신청의 정정 취소 등에 관한 정보 등을 포함하여야 합니다. </li>
			            </ul>
			            <h5>제13조(지급방법)</h5>
			            <p> ‘토비 사이트’ 에서 구매한 상품 또는 용역에 대한 대금지급방법은 다음 각 호의 방법 중 가용한 방법으로 할 수 있습니다. 단, 토비’ 는 이용자의 지급방법에 대하여 재화 등의 대금에 어떠한 명목의 수수료도 추가하여 징수할 수 없습니다. </p>
			            <ol>
			              <li>1. 폰뱅킹, 인터넷뱅킹, 메일뱅킹 등의 각종 계좌이체</li>
			              <li>2. 선불카드, 직불카드, 신용카드 등의 각종 카드 결제</li>
			              <li>3. 온라인무통장입금</li>
			              <li>4. 전자화폐에 의한 결제</li>
			              <li>5. ‘토비’ 가 지급한 포인트에 의한 결제</li>
			              <li>6. ‘토비’ 와 계약을 맺었거나 [토비 패밀리]가 인정한 상품권에 의한 결제</li>
			              <li>7. 기타 전자적 지급 방법에 의한 대금 지급 등</li>
			            </ol>
			            <h5>제14조(수신확인통지와 구매신청 변경 및 취소)</h5>
			            <ul>
			              <li> 1. ‘토비’ 는 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다. </li>
			              <li> 2. 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고, ‘토비’ 는 배송 전에 이용자의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리하여야 합니다. 다만, 이미 대금을 지불한 경우에는 제 17조의 청약철회 등에 관한 규정에 따릅니다. </li>
			            </ul>
			            <h5>제15조(재화 등의 공급)</h5>
			            <ul>
			              <li> 1. ‘토비’ 는 이용자와 재화 등의 공급시기에 관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날로부터 7일 이내에 재화 등을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한 조치를 취합니다. 다만, 재화 제공 일자가 명시될 경우 명시일부터 제공합니다. 이때 ‘토비’ 는 이용자가 재화 등의 공급 절차 및 진행 사항을 확인 할 수 있도록 적절한 조치를 합니다. </li>
			              <li> 2. ‘토비’ 는 이용자가 구매한 상품에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약 ‘토비’ 가 약정배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상하여야 합니다. 다만, ‘토비’ 가 고의, 과실이 없음을 입증한 경우에는 그러하지 아니합니다. </li>
			            </ul>
			            <h5>제16조(환급)</h5>
			            <p> ‘토비’ 는 이용자가 구매 신청한 재화 등이 품절 등의 사유로 인도 또는 제공을 할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을 받은 날부터 2영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다. </p>
			            <h5>제17조(청약철회)</h5>
			            <ul>
			              <li> 1. ‘토비’와 상품 또는 용역 등의 구매에 관한 계약을 체결한 이용자는 수신확인의 통지를 받은 날로부터 7일 이내에 청약철회를 할 수 있습니다. 단, 7일 이내에 청약을 철회하는 경우 소비자가 얻은 이익 또는 공급에 든 비용 등이 있다면 이를 공제하여 청약철회가 가능합니다.</li>
			              <li> 2. 이용자는 재화 등을 배송 받은 경우 다음 각호의 1에 해당하는 경우에는 반품 및 교환을 할 수 없습니다.
			                <ul>
			                  <li> ① 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우. 다만, 재화 등의 내용 확인을 위하여 포장 등을 훼손한 경우는 제외합니다. </li>
			                  <li> ② 이용자의 사용 또는 일부 소비에 의하여 재화 등의 가치가 현저히 감소한 경우 </li>
			                  <li> ③ 시간의 경과에 의하여 재판매가 곤란할 정도로 재화 등의 가치가 현저히 감소한 경우 </li>
			                  <li> ④ 같은 성능을 지닌 상품 등으로 복제가 가능한 경우 그 원본인 상품 등의 포장 등을 훼손한 경우 </li>
			                </ul>
			              </li>
			              <li> 3. 제2항 제2호 내지 제4호의 경우에 ‘토비’ 가 사전에 청약철회 등이 제한되는 사실을 이용자가 쉽게 알 수 있는 곳에 명기하거나 사용상품을 제공하는 등의 조치를 하지 않았다면 이용자의 청약철회 등이 제한되지 않습니다. </li>
			              <li> 4. 이용자는 제1항 및 제2항의 규정에 불구하고 재화 등의 내용이 표시 광고 내용과 다르거나, 계약내용과 다르게 이행된 경우에는 당해 재화 등을 공급받은 날부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회를 할 수 있습니다. </li>
			            </ul>
			            <h5>제18조(청약철회 등의 효과)</h5>
			            <ul>
			              <li> 1. ‘토비’ 는 이용자로부터 재화 등을 반환 받은 경우 3영업일 이내에 이미 지급받은 재화 등의 대금을 환급합니다. 이 경우 ‘토비 가 이용자에게 재화 등의 환급을 지연한 때에는 그 지연기간에 대하여 공정거래위원회가 정하여 고시하는 지연이자율을 곱하여 산정한 지연이자를 지급합니다. </li>
			              <li> 2. ‘토비’ 는 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐 등의 결제수단으로 재화 등의 대금을 지급한 때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금 재화 등의 대금의 청구를 정지 또는 취소하도록 요청합니다. </li>
			              <li> 3. 청약철회 등의 경우 공급받은 재화 등의 반환에 필요한 비용은 이용자가 부담합니다. ‘토비’ 는 이용자에게 청약철회 등을 이유로 위약금 또는 손해배상을 청구하지 않습니다. 다만, 재화 등의 내용이 표시. 광고 내용과 다르거나 예약내용과 다르게 이행되어 청약철회 등을 하는 경우 재화 등의 반환에 필요한 비용은 ‘토비’ 가 부담합니다. </li>
			              <li> 4. 이용자가 재화 등을 제공받을 때 발송비를 부담한 경우에 ‘토비’ 는 청약철회 시 그 비용을 누가 부담하는지를 이용자가 알기 쉽도록 명확하게 표시합니다. </li>
			            </ul>
			            <h4>제4장 서비스 제공 및 이용</h4>
			            <h5>제19조(서비스의 내용)</h5>
			            <p> 이용자가 ‘토비 사이트’ 를 통하여 받을 수 있는 서비스의 내용은 다음과 같습니다. </p>
			            <ul>
			              <li>1. 온라인 수강신청</li>
			              <li>2. 디지털 콘텐츠 및 서비스</li>
			              <li>3. 커뮤니티</li>
			              <li>4. 교재, 학습기자재 등의 쇼핑몰</li>
			              <li>5. 광고, 이벤트 행사 등 상품 또는 용역과 관련한 다양한 판촉 행위</li>
			              <li>6. 기타 이용자에게 유용한 부가 서비스</li>
			            </ul>
			            <p> ‘토비 사이트’에서 이용가능한 기기 및 이용에 필요한 최소한의 기술사양에 관한 정보는 사이트 고객센터 및 FAQ 내용에서 제공합니다. </p>
			            <ul>
			              <li>1. 컴퓨터 등 정보처리장치의 중앙처리장치(CPU) 속도 </li>
			              <li>2. 운영체제(OS)등 시스템 소프트웨어(SW) 사양</li>
			              <li>3. 온라인콘텐츠 구동에 필수적인 소프트웨어(SW)</li>
			              <li>4. 램(RAM) 용량</li>
			              <li>5. 하드드라이브 등 콘텐츠 저장장치의 유효용량</li>
			              <li>6. 화소 등 구동화면사양</li>
			              <li>7. 기타 온라인콘텐츠 구동에 필수적인 하드웨어 장치</li>
			              <li>8. 정보통신망 필수 전송속도 및 콘텐츠 전송량</li>
			              <li>9. 기술적 보호조치(DRM)에 관한 사항 </li>
			              <li>10. 모바일 “콘텐츠”의 경우 모바일 “콘텐츠”의 이용에 적합한 모바일 기기의 종류 등에 관한 정보</li>
			            </ul>
			            <h5>제20조(서비스 제공 개시일)</h5>
			            <p> ‘토비 사이트’ 는 서비스 제공 개시일을 계약을 체결한 날로 하며, 유료 인터넷 서비스의 경우에는 요금납부를 한 날을 기준으로 하되 납입방식에 따라 다음과 같이 서비스 제공개시일이 산정됩니다. </p>
			            <ul>
			              <li> 1. 신용카드 납입 : 서비스 계약 체결 즉시 서비스 개시 </li>
			              <li> 2. 기타 납입 방법 : 서비스 이용료에 대한 요금 납부가 확인이 되는 당일부터 서비스 개시 </li>
			            </ul>
			            <h5>제21조(서비스 이용 요금) </h5>
			            <ul>
			              <li> 1. 별도로 표시된 유료 서비스를 제외한 모든 서비스는 회원들에게 무료로 제공됩니다. </li>
			              <li> 2. 유료 서비스의 이용 요금 및 결제 방식은 해당 서비스에 명시되어 있는 규정에 따릅니다. </li>
			              <li> 3. 온라인 수강신청을 통해 발생한 요금 및 결제 방식, 취소, 환불, 변경 등에 대한 규정 및 내용은 &lt;학원의 설립 운영 및 과외교습에 관한 법률&gt; 및 해당 오프라인 서비스에 명시되어 있는 결제 규정에 따릅니다. </li>
			            </ul>
			            <h5>제22조(서비스 이용시간)</h5>
			            <ul>
			              <li> 1. 서비스의 이용은 ‘토비’ 의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴 1일 24시간을 원칙으로 합니다. 다만 정기 점검 등의 필요로 ‘토비’ 가 정한 날이나 시간은 그러하지 않습니다. </li>
			              <li> 2. ‘토비’ 는 서비스를 일정범위로 분할하여 각 범위 별로 이용가능 시간을 별도로 정할 수 있습니다. 이 경우 그 내용을 사전에 공지합니다. </li>
			            </ul>
			            <h5>제23조(서비스 이용 책임)</h5>
			            <p> 회원’은 ‘토비 사이트’ 에서 권한 있는 사원이 서명한 명시적인 서면에 구체적으로 허용한 경우를 제외하고는 서비스를 이용하여 불법 상품을 판매하는 영업활동을 할 수 없으며 특히 해킹, 돈벌기 광고, 음란사이트를 통한 상업행위, 상용S/W 불법배포 등을 할 수 없습니다. 이를 어기고 발생한 영업활동의 결과 및 손실, 관계기관에 의한 구속 등 법적 조치 등에 관해서는 ‘토비’ 가 책임을 지지 않습니다. </p>
			            <h5>제24조(서비스의 제한 및 정지)</h5>
			            <ul>
			              <li> 1. 전시, 사변, 천재지변 또는 이에 준하는 국가 비상사태가 발생하거나 발생할 우려가 있는 경우와 전기통신사업법에 의한 기간통신사업자가 전기통신 서비스를 중지하는 등 기타 부득이한 사유가 있는 경우에는 서비스의 전부 또는 일부를 제한 하거나 중지할 수 있습니다. </li>
			              <li> 2. 제1항에도 불구하고, ‘토비 사이트’ 는 다음 각 호에 해당하는 이용자에 대하여 서비스 전부 또는 일부의 이용을 제한할 수 있습니다.
			                <ul>
			                  <li>① 제31조에서 규정한 이용자의 의무를 이행하지 않은 경우 </li>
			                  <li>② 신청서의 내용을 허위로 기재하여 서비스 이용승낙을 득한 경우 </li>
			                  <li>③ 타인의 회원ID를 부정하게 사용하는 경우 </li>
			                  <li>④ 동일한 ID로 다수의 PC 또는 IP에서 서비스를 이용하는 경우</li>
			                  <li>⑤ 전기 통신 관련 법령 등에 위배되는 경우 </li>
			                  <li>⑥ 정보통신 윤리 위원회가 윤리심의에 따라 일정한 제재조치를 권고한 경우 </li>
			                </ul>
			              </li>
			              <li> 3. 제1항 및 제2항의 규정에 의하여 서비스의 전부 또는 일부를 제한하거나 정지 한 때에는 지체 없이 이용자에게 알려야 합니다. </li>
			            </ul>
			            <h5>제25조(게시물의 저작권 및 지적재산권) </h5>
			            <ul>
			              <li> 1. 이용자는 ‘토비’ 가 소유한 저작권 기타 지적재산권을 무단 도용하는 등의 침해행위를 하여서는 안됩니다. </li>
			              <li> 2. 이용자는 ‘토비 사이트’ 를 이용함으로써 얻은 정보를 [토비 패밀리]의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다. </li>
			            </ul>
			            <h5>제26조(이용자의 게시물 제한)</h5>
			            <p> ‘토비’ 는 회원이 게시하거나 등록하는 서비스내의 내용물이 다음 각 호에 해당한다고 판단되는 경우에 사전통지 없이 삭제할 수 있습니다. </p>
			            <ul>
			              <li>1. 다른 회원 또는 제3자를 비방하거나 중상모략으로 명예를 손상시키는 내용인 경우</li>
			              <li>2. 공공질서 및 미풍양속에 위반되는 내용인 경우</li>
			              <li>3. 범죄적 행위에 결부된다고 인정되는 내용일 경우</li>
			              <li>4. ‘토비 사이트’ 에서 규정한 게시 기간을 초과한 경우</li>
			              <li>5. 회원이 자신의 홈페이지와 게시판에 음란물을 게재하거나 음란사이트를 링크하는 경우.</li>
			              <li>6. 기타 관계법령, ‘토비 사이트’ 에서 정한 규정에 위반된다고 판단되는 경우</li>
			            </ul>
			            <h5>제27조(링크)</h5>
			            <ul>
			              <li> 1. ‘토비 사이트’ 는 타 사이트에 하이퍼링크(하이퍼링크의 대상에는 문자, 그림 및 동화상 등이 포함됨) 방식 등에 의해 연결시킬 수 있습니다. </li>
			              <li> 2. ‘토비’ 는 이용자가 해당 연결사이트와 독자적으로 상품 또는 용역을 거래한 행위에 대해서는 아무런 책임을 부담하지 않습니다. </li>
			            </ul>
			            <h4>제5장 계약당사자의 의무</h4>
			            <h5>제28조(‘토비’ 의 의무)</h5>
			            <ul>
			              <li> 1. ‘토비’ 는 제24조에서 정한 사유 이외에는 이 약관에서 정한 바에 따라 계속적, 안정적으로 서비스를 제공할 의무가 있습니다. </li>
			              <li> 2. ‘토비’ 는 서비스 제공설비를 항상 운용 가능한 상태로 유지 보수하여야 하며, 설비에 장애가 발생하거나 또는 멸실 된 때에는 지체 없이 이를 수리, 복구 하고, 이로 인하여 이용자가 입은 손해에 대하여 배상합니다. 단, ‘토비’ 가 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다. </li>
			              <li> 3. ‘토비’ 는 서비스 제공과 관련하여 취득한 이용자의 개인신상정보를 본인의 사전 승낙 없이 타인 ([토비 패밀리] 이외의 자)에게 누설 또는 배포할 수 없으며, [토비 패밀리]의 서비스 관련 업무 이외의 목적으로 사용할 수 없습니다. 다만, 다음 각 호의 1에 해당하는 경우에는 그러하지 아니합니다.
			                <ul>
			                  <li>① 관계법령에 의한 수사상의 목적으로 관계기관으로부터 요구 받은 경우</li>
			                  <li>② 정보통신윤리위원회의 요청이 있는 경우</li>
			                </ul>
			              </li>
			              <li> 4. ‘토비’ 는 이용자로부터 제기되는 의견이나 불만이 정당하다고 인정할 경우에는 즉시 처리하여야 합니다. 다만, 즉시 처리가 곤란한 경우는 이용자에게 그 사유와 처리일정을 전자우편 또는 전화, 서면 등으로 통보하여야 합니다. </li>
			              <li>5. ‘토비’ 는 이용계약의 체결, 계약사항의 변경 및 해지 등 이용자의 계약관련 절차 및 내용 등에 있어 이용자의 편의를 제공하도록 노력합니다. </li>
			            </ul>
			            <h5>제29조(회원의 의무)</h5>
			            <ul>
			              <li>1. “회원” 은 서비스 이용에 대한 대가로서 이 약관에서 정한 요금 등을 지정된 기일까지 납입하여야 합니다.</li>
			              <li>2. “회원” 은 이 약관 및 관계법령을 준수하여야 하며, 기타 [토비 패밀리]의 업무수행에 지장을 초래하는 행위를 하여서는 아니 됩니다.</li>
			              <li>3. “회원”은 주소 및 연락처 등 이용신청사항이 변경된 경우에는 고객센터, 이메일 또는 오프라인 요구서 접수 등을 통하여 이를 즉시 ‘토비’ 에 알려야 합니다.</li>
			              <li>4. “회원” 은 서비스를 이용하여 얻은 정보를 ‘토비’ 의 승낙 없이 복사, 복제, 개조, 번역하여 타인에게 제공하여서는 아니 됩니다.</li>
			              <li>5. “회원” 은 ‘토비’ 에서 승낙한 경우를 제외하고는 서비스를 이용하여 영업활동을 할 수 없습니다.</li>
			              <li> 6. “회원” 은 다음 각 호에 해당하는 행위를 하여서는 아니 되며, 만약 이에 해당하는 경우 ‘토비’ 는 게시물을 삭제하거나 서비스의 전부 또는 일부의 이용을 제한할 수 있습니다.
			                <ul>
			                  <li>① 범죄행위를 목적으로 하거나 범죄행위를 교사하는 행위</li>
			                  <li>② 반국가적 행위의 수행을 목적으로 하는 행위</li>
			                  <li>③ 선량한 풍속, 기타 사회질서를 해하는 행위</li>
			                  <li>④ 타인의 명예를 손상시키거나 불이익을 주는 행위</li>
			                  <li>⑤ 정보통신 설비의 오동작이나 정보 등의 파괴를 유발시키는 해킹, 컴퓨터 바이러스 프로그램 등의 유포행위</li>
			                  <li>⑥ 다른 회원 또는 제3자의 지적재산권을 침해하는 행위</li>
			                  <li>⑦ 수신자의 의사에 반하여 광고성 정보를 지속적으로 전송하거나 서비스의 안정적 운영에 지장을 초래하는 다량의 자료 송수신, 게시물 등록, 기타 건전한 서비스 이용에 반하는 행위 </li>
			                </ul>
			              </li>
			              <li> 7. “회원” 은 이 약관 및 관계법령을 준수하여야 하며, 기타 ‘토비 사이트’ 의 업무수행에 지장을 초래하는 행위를 하여서는 아니됩니다 </li>
			            </ul>
			            <h5>제30조(서비스 이용책임)</h5>
			            <ul>
			              <li>1. 회원은 자신의 책임 하에 서비스를 이용하며, 서비스 자료의 취사 선택 또는 서비스 이용으로 불이익이 발생하더라도 이에 대한 책임은 이용자에게 있습니다.</li>
			              <li>2. 회원이 서비스를 이용하여 게시 또는 전송한 자료의 내용에 관하여 발생되는 책임은 회원에게 있습니다. </li>
			              <li>3. 회원에게 통보된 회원ID와 비밀번호의 관리 및 이용상의 부주의로 인하여 발생되는 과실 또는 제3자에 의한 부정사용 등에 대한 책임은 이용자에게 있습니다. 다만, [토비 패밀리]의 관리상 중과실이 있는 경우에는 그러하지 아니합니다.</li>
			              <li>4. 요금 선납 회원이 제31조 회원의 의무 위반 또는 제 24조 제 2항 각 호의 서비스 이용 제한 사유에 해당되어 서비스 이용이 제한되는 경우 제한 기간동안의 요금은 환불 되지 않습니다.</li>
			            </ul>
			            <h5>제31조(양도 등의 금지) </h5>
			            <ul>
			              <li>“회원” 은 서비스 이용권리를 타인에게 대여, 양도 또는 증여 등을 할 수 없으며, 또한 질권의 목적으로도 사용할 수 없습니다. </li>
			            </ul>
			            <h4>제5장 ‘토비’ 의 면책조항</h4>
			            <h5>제32조 ‘토비 의 면책조항) </h5>
			            <ul>
			              <li> 1. “회원”이 ‘토비 사이트’ 의 서비스 제공으로부터 기대되는 이익을 얻지 못하였거나 서비스 자료에 대한 취사선택 또는 이용으로 발생하는 불이익에 대하여 토비 패밀리는 책임을 지지 아니합니다. </li>
			              <li> 2. ‘토비’ 는 “회원”의 귀책사유로 인한 서비스 이용의 장애에 대하여 책임을 지지 아니합니다. </li>
			              <li> 3. ‘토비’ 는 “회원” 이 등록 또는 전송한 자료의 내용에 관하여는 책임을 지지 아니합니다. </li>
			              <li> 4. ‘토비’가 회원에게 통보하고 회원이 자신의 회원ID와 비밀번호의 관리 및 이용상의 부주의로 인하여 발생되는 과실 또는 제3자에 의한 부정사용 등에 관하여는 책임을 지지 아니합니다. </li>
			            </ul>
			            <h4>제6장 기타 사항</h4>
			            <h5>제33조 (정보의 제공)</h5>
			            <ul>
			              <li> ‘토비’ 는 이용자가 서비스 이용 중 필요하다고 인정되는 다양한 정보에 대해서는 전자우편이나 서신우편 등의 방법으로 이용자에게 제공할 수 있습니다. </li>
			            </ul>
			            <h5>제34조 (서비스 내용변경 및 추가)</h5>
			            <ul>
			              <li> ‘토비’ 는 필요하다고 판단되는 경우 서비스 내용을 추가, 변경, 삭제할 수 있으며 이로 인하여 이용자에게 추가로 공지하여야 할 사항이 발생한 경우 그 내용을 공지합니다. </li>
			            </ul>
			            <h5>제35조 (분쟁 해결) </h5>
			            <ul>
			              <li>1. ‘토비’ 는 “회원” 이 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상 처리하기 위하여 고객센터를 설치, 운영합니다.</li>
			              <li> 2. ‘토비’ 는 “회원” 으로부터 제출되는 불만 사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보해 드립니다. </li>
			              <li> 3. ‘토비’ 는 회원간에 발생한 분쟁은 전자거래 기본법 제 32조 및 동 시행령 제 16조에 의하여 설치된 전자거래 분쟁 조정 위원회의 조정에 따를 수 있습니다. </li>
			            </ul>
			            <h5>제36조 (관할 법원) </h5>
			            <ul>
			              <li> 1. ‘토비’ 와 이용자간에 발생한 전자상거래 분쟁에 관한 소송은 제소 당시의 이용자의 주소에 의하고, 주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 이용자의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는 민사소송법상의 관할법원에 제기합니다. </li>
			              <li>2. ‘토비’ 와 이용자간에 제기된 전자상거래 소송에는 대한민국 법을 적용합니다.</li>
			            </ul>
			            <h5>부 칙(시행일) </h5>
			            <ul>
			              <li class="txt_red">(1) 이 약관은 2019년 07월 17일부터 시행 합니다.<br></li>
			            </ul>
			         </textarea>		    				
			    </ul>
			    
		<li class="checkbox check2">
    	<ul class="clearfix">
	    	<li><b>[필수동의]</b>개인정보 수집/이용 동의</li>
	    	<table class="check2">
	    		<tr style="text-align:center" bgcolor="#EBEBEB">
		    		<td>수집 및 이용하는 개인정보 항목</td>
		    		<td>수집 및 이용 목적</td>
		    		<td>보유 및 이용기간</td>
		    	</tr>
		    	<tr>
		    		<td><b>[필수 정보]</b><br>한글이름, 아이디, 비밀번호, 생년월일, 이메일, 휴대전화번호</td>
		    		<td style="text-align:center">가입 신청 및 수강 신청</td>
		    		<td style="text-align:center"><font color="red" style="font-weight:bold">회원탈퇴</font></td>
		    	</tr>
	    	</table>
	    	
	    	<div>위 동의 안내에 거부할 권리가 있습니다.<br>그러나 동의 거부할 경우 실명 확인이 되지 않음에 따라 가입 신청 및 수강 신청을 하실 수 없습니다.<br><strong>위와 같은 개인정보의 수집/이용에 동의하십니까?</strong></div>
	    	<input type="checkbox"  name="select" id="agree1"><label for="agree1">동의함</label>
	    	

    	</ul>
    	</li>
			    
		<li class="checkbox check3">
    	<ul class="clearfix">
	    	<li><b>[필수동의]</b> 개인정보 제3자 제공</li>
	    	<table>
	    		<tr style="text-align:center" bgcolor="#EBEBEB">
		    		<td>제공받는 자</td>
		    		<td>제공받는 자의 이용 목적</td>
		    		<td>제공하는 개인정보 항목</td>
		    		<td>보유 및 이용기간</td>
		    	</tr>
		    	<tr>
		    		<td style="text-align:center">(주)토비</td>
		    		<td style="text-align:center">토비 회원가입</td>
		    		<td><b>[필수정보]</b><br>한글이름, 아이디, 비밀번호, 생년월일,<br>이메일, 휴대전화번호</td>
		    		<td style="text-align:center"><font color="red" style="font-weight:bold">회원탈퇴</font></td>
		    	</tr>
	    	</table>
	    	
	    	<div>위 동의 안내에 거부할 권리가 있습니다.<br>그러나 동의 거부할 경우 실명 확인이 되지 않음에 따라 가입 신청 및 수강 신청을 하실 수 없습니다.<br><strong>위와 같은 개인정보의 제3자 제공에 동의하십니까?</strong></div>
	    	<input type="checkbox" name="select" id="agree2"> <label for="agree2">동의함</label>
	    	

    	</ul>
    	</li>
    			<div class="btnSet clear">
                    <div><a href="javascript:;" class="btn" onclick="history.back();">이전</a>
                    <input type="button" onclick="checkAgree();" value="다음">
                </div>
    	</form>
    	
</div>
     </div>
    	


	
</body> 
</html>