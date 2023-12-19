<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<style>
	.body li {
	list-style : none;
	display : inline-block;
	}
	
	.box {
	border : 1px solid;
	}
	
	</style>
</head>

<body>
    <div class="popup member ty_unite ps-container ps-theme-default" style="width: 580px;" data-ps-id="f89f2b4a-34e7-d475-01ac-d602c2eeef9d">
        <!-- 팝업사이즈 고정 width: 580px x height: 870px -->

        <div class="body" id="tabmain">
            <input type="hidden" id="FindMainType" value="I">
            <ul class="tab tab_item2">
                <li class="active"><button type="button" id="tabid">아이디 찾기</button></li>
                <li class=""><button type="button" id="tabpw">비밀번호 찾기</button></li>
            </ul>
            <div id="findTagdiv"><div class="tab_content content1 active">
    <h2 class="hide">아이디 찾기</h2>
    <!-- 아이디 찾기 : 입력 화면 -->
    <div class="tab_ctns_wrap ty_certify_method" id="divfind">
        <h3 class="ctns_desc">
            회원가입 시 등록하신 정보로 <br>아이디를 확인하실 수 있습니다.
        </h3>
        <div class="bx">

            <h4 class="sel_method" data-tab="email">
                <span class="input_button radio">이메일 주소</span>
            </h4>
            <!-- 메일 -->
            <div class="sel_method_content" id="email" style="">
                <div class="inputs_mail">
                    <span class="input_text"><input type="email" inputmode="email" id="textemail" name="textemail" value="" placeholder="@ 까지 정확하게 입력해 주세요."></span>
                </div>
                <!-- as-is 에러메세지 -->
                <p class="input_alarm" name="errorEmailIn" id="errorEmailIn" style="display: none;">이메일 주소를 입력해주세요.</p>
                <p class="input_alarm" name="errorEmailForm" id="errorEmailForm" style="display: none;">아이디는 이메일 형식으로 입력해 주세요.</p>
                <!-- //as-is 에러메세지 -->
            </div>
            <!-- //메일 -->

            <div class="btn_bottom_wrap">
                <button type="button" name="button" class="btn full black" id="finalFindID">확인</button>
            </div>
        </div>
    </div>
    <!-- 단일 -->
    <div class="tab_ctns_wrap ty_certify_method" id="divressingle" style="display:none;">
        <h3 class="ctns_desc">
            <br>가입한 계정이 있습니다.
        </h3>

        <h4 class="ctns_desc_sub" style="display:none;">
            이메일로 로그인해 주세요.
        </h4>

        <div class="rst_account_info">
            <p></p>
        </div>

        <div class="btn_bottom_wrap">
            <button type="button" name="button" class="btn full black movelogin">로그인</button>
        </div>
    </div>
    <!-- //이메일계정 -->
    <!-- SNS 계정 -->
    <div class="tab_ctns_wrap ty_certify_method" id="divresmulti" style="display:none;">
        <h3 class="ctns_desc">
        </h3>

        <div class="rst_account_info ty_multi_line">
            <!-- 계정이 하나이상일때 ty_multi_line -->
            <p id="multiemail" style="display:none;"><img src="//static.wconcept.co.kr/mobile/Images/member/svg/ico_sm_mail.svg" alt=""></p>
            <p id="multikakao" style="display:none;"><img src="//static.wconcept.co.kr/mobile/Images/member/svg/ico_sm_kakao.svg" alt="">  카카오로 가입한 계정입니다.</p>
            <p id="multinaver" style="display:none;"><img src="//static.wconcept.co.kr/mobile/Images/member/svg/ico_sm_naver.svg" alt="">  네이버로 가입한 계정입니다.</p>
            <p id="multifacebook" style="display:none;"><img src="//static.wconcept.co.kr/mobile/Images/member/svg/ico_sm_facebook.svg" alt="">  페이스북으로 가입한 계정입니다.</p>
            <p id="multigoogle" style="display:none;"><img src="//static.wconcept.co.kr/mobile/Images/member/svg/ico_sm_google.svg" alt="">  구글로 가입한 계정입니다.</p>
            <p id="multiapple" style="display:none;"><img src="//static.wconcept.co.kr/mobile/Images/member/svg/ico_sm_apple.svg" alt="">  애플로 가입한 계정입니다.</p>
        </div>

        <div class="btn_bottom_wrap">
            <button type="button" name="button" class="btn full black movelogin">로그인</button>
        </div>
    </div>

</div></div>
        </div>

        <!-- 일치정보 없음#1 아이디 찾기 case -->
        <div class="popup ty_unite st_alert ps-container ps-theme-default" style="display:none;" id="dividfail" data-ps-id="5eb6abdc-4f35-cdea-7e86-527b60e2615c">
            <h1 class="hide">일치정보 없음</h1>
            <div class="body">
                <div class="tab_ctns_wrap">
                    <h3 class="ctns_desc">
                        입력하신 정보와 <br>일치하는 아이디가 없습니다.
                    </h3>

                    <div class="btn_bottom_wrap">
                        <button type="button" name="button" class="btn full black movejoin">회원가입</button>
                    </div>

                </div>
            </div>
        <div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 0px;"><div class="ps-scrollbar-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps-scrollbar-y-rail" style="top: 0px; right: 0px;"><div class="ps-scrollbar-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div>


        <!-- 일치정보 없음#2 비밀번호 찾기 case -->
        <div class="popup ty_unite st_alert ps-container ps-theme-default" style="display:none;" id="divpwfail" data-ps-id="3e727472-b1bc-741d-d8c7-b48b01a6e3e8">
            <h1 class="hide">일치정보 없음</h1>
            <div class="body">
                <div class="tab_ctns_wrap">
                    <h3 class="ctns_desc">
                        입력하신 정보로 <br>가입된 계정이 없습니다.
                    </h3>

                    <div class="btn_bottom_wrap">
                        <button type="button" name="button" class="btn full black movejoin">회원가입</button>
                    </div>

                </div>
            </div>
        <div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 0px;"><div class="ps-scrollbar-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps-scrollbar-y-rail" style="top: 0px; right: 0px;"><div class="ps-scrollbar-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div>
    <div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 0px;"><div class="ps-scrollbar-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps-scrollbar-y-rail" style="top: 0px; right: 0px;"><div class="ps-scrollbar-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div>




    <script type="text/javascript" id="www-widgetapi-script" src="https://s.ytimg.com/yts/jsbin/www-widgetapi-vfl52DM8h/www-widgetapi.js" async=""></script><script src="//static.wconcept.co.kr/web/js/wconcept.desktop.min.js?v=68c88a2ef9ec4cba8a4daa82c80b454c"></script>
    <script src="//static.wconcept.co.kr/web/js/wconcept.desktop.member.min.js?v=68c88a2ef9ec4cba8a4daa82c80b454c"></script>
    <script src="//static.wconcept.co.kr/web/js/wconcept.desktop.member.findidpw.min.js?v=68c88a2ef9ec4cba8a4daa82c80b454c"></script>

<script>
    var WCKMemberFindIDPW = new WCKMemberFindIDPW();
    var WCKMember = new WCKMember();
    WCKMember.InitializeIDPWAll(WCKMemberFindIDPW);
</script>
</body>
</html>