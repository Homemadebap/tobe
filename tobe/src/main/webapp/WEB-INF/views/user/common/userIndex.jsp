<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" >
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Tobe 사용자 메인페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
  <META name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=no"> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
    <link rel="stylesheet" href="/project/css/reset.css"/>
    <link rel="stylesheet" href="/project/css/style.css"/>
    <script src="/project/js/script.js"></script>
    <script src="/project/js/main.js"></script>
</head>
<script>
   $(function(){
       // swiper
       var swiper = new Swiper('.swiper-visual',{
           autoplay : {
               delay:3000
           },
           loop : true
       });
   });

   </script>
<style>

.visual{
	height: 20rem;
}

.swiper {
    height:19rem;
    width: 75rem;
    text-align: center;

}

.swiper img {
    display: block; /* 이미지 하단 라인 제거 */
}

.swiper-slide {
    background-position: center center;
    background-size: cover;
    background-repeat: no-repeat;
}

#best{
   margin: 1rem auto;
   padding: 0 6rem;
}


.bst{
   border: solid 1px;
   width: 500px;
   height: 200px;
   display: inline-block;
}

b {
 color: #000;
 font-size: 25px;
}
strong{
   color: #A4A4A4;
   font-size: 25px;
}
#review{
   margin: 0;
   position: relative;
}
#rev{
	display: flex;
	justify-content:space-between;
	margin: 1rem 0 0 0;
}
#rt1{
  
   width: 300px;
   height: 16rem;;
}
#rt2{
   
   width: 300px;
   height: 16rem;
}
#rt3{
   width: 300px;
   height: 16rem;
}
#re{
 color: #58ACFA;
 font-size: 25px;
}

#rt1>p{
	margin: 0 auto;
}
#rt2>p{
	margin: 0 auto;
}
#rt3>p{
	margin: 0 auto;
}
#rt1>img{
	margin: 5px 0 0 160px;
}
#rt2>img{
	margin: 5px 0 0 160px;
}
#rt3>img{
	margin: 10px 3px 0 160px;
}
</style>

<body>

<div class="wrap">
	<div class="headerBox">
		<%@include file="/WEB-INF/views/user/common/userHeader.jsp"%>
	</div>
	
	<div class="main">
		<div class="visual">
			<div class="swiper swiper-visual">
			    <div class="swiper-wrapper">
			        <img class="swiper-slide" style="background-image:url('/tobe/img/ybm.png');">
			        <img class="swiper-slide" style="background-image:url('/tobe/img/ha.png');">
			        <img class="swiper-slide" style="background-image:url('/tobe/img/pa.png');">
			    </div>
			</div>
		</div>

	   <div id="best">
	      <div class="bst">
	          리뷰 많은 강좌
	      </div>
	      <div class="bst">
	          베스트 강좌 
	      </div>
	   </div>
   
	   <div id="review">
	      <strong> ─────────────────── 리얼 생생</strong> <b id="re">후기 </b><strong>─────────────────────</strong><br>
	     <div id="rev">
	      <div id="rt1">
	         <p style="font-weight:bold">완소토익으로 토익스타트 야무지게</p>
	         <p style="font-weight:bold">밟았습니다..</p>
	          <hr style="border: solid 1px gray;">
	          <p>일단 나현쌤 하나쌤 두 분다 모두 열의 넘치시구 모르는 건 이해될 때까지 다시 설명해주셔서 감사합니다ㅠㅠ 저는 부끄럽지만 예체능 전공이라..수능 영어와 수학은 아예 노베이스인데요..ㅎㅅㅎ</p>
	      	  <img src="/tobe/img/YBM_logo.png" width="120" height="33">
	      </div>
	      <div id="rt2">
	         <p style="font-weight:bold">한 달 만에 965..진짜 감사합니다ㅠㅠ</p>
	         <p style="font-weight:bold">[조성제, 홍정윤 선생님]</p>
	          <hr style="border: solid 1px gray;">
	          <p>한 달간 900+점수보장반 들었었던 학생입니다! 선생님들께 진심으로 감사하다는 말씀과 그리고 토익에 고민이 많으실 분들께 적극! 강력 추천드리기 위해서 수강후기를 쓰게 되었습니다.</p>
			 <img src="/tobe/img/HACKERS_logo.png" width="120" height="30">	
	      	
	      </div>
	      <div id="rt3">
	         <p style="font-weight:bold">600반에서 830점 달성!</p>
	         <p style="font-weight:bold">기본기부터 실전 꿀팁까지!</p>
	          <hr style="border: solid 1px gray;">
	          <p>제 영어 베이스는 회화에서는 중하이고 독해능력은 중간정도 상태였습니다. 제 단계에서 토익으로 수강할 수 있는 강의들을 검색하다가 리뷰수도, 학생수도 정말 많았던 1타토익 600반 강의에 등록</p>
	      	 <img src="/tobe/img/PAGODA_logo.png" width="120" height="23">	
	      </div>
	     </div> 
	   </div>



		
	</div>
	<%@include file="/WEB-INF/views/user/common/userFooter.jsp"%>
</div>

</body>
</html>