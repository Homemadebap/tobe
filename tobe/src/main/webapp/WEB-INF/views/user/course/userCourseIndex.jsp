<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강신청</title>
<META name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=no">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
<link rel="stylesheet" href="/tobe/css/user_Header_Footer.css" />
</head>
<style>
.body {
   min-width: 1200px;
   height: 100%;
}

.wrap {
   width: 1200px;
   height: 70rem;
   margin: 0 auto;
   position: relative;
}

* {
   box-sizing: border-box;
}

.header {
   width: 75rem;
   height: 15rem;
   position: absolute;
   top: 0;
   left: 0;
}

.header_memberBar {
   position: absolute;
   color: #000;
   right: 0;
   top: 10%;
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

.menu_container {
   position: absolute;
   width: 50rem;
   right: 0;
   top: 6.5rem;
}

.menu {
   width: 14rem;
   height: 5rem;
   font-size: 2rem;
   text-align: center;
}

.footer {
   background-color: #d3d3d3;
   width: 100%;
   /* width:75rem; */
   height:250px; 
   position: absolute;
   top: 1500px;
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

.footer_info {
   width: 37.5rem;
   display: grid;
   place-items: center;
   float: left;
   height: 5rem;
}

.choiceBG {
   display: block;
   justify-content: center;
   align-items: center;
   background-color: #E4E6D9;
   width: 100%;
   /* height:20rem; */
   position: absolute;
   top: 15rem;
   left: 0;
   right: 0;
}

.choice {
   width: 1200px;
   margin: 0 auto;
   position: relative;
}

.choice>ul {
   text-align: center;
   padding: 0;
   margin: 0;
   list-style: none;
   margin-left: 10rem;
}

.choice>ul>li {
   margin: 0;
   padding: 0;
   text-align: left;
   flex: 1;
   list-style: none;
   display: flex;
}

h3 {
   margin: 0.5rem auto;
}

caption {
   font-size: 0;
   overflow: hidden;
   height: 0;
}

.title {
   width: 66px;
   font-size: 20px;
   line-height: 45px;
   letter-spacing: -0.5px;
   padding-right: 20px;
   font-weight: 700;
}

.condition:hover{
   font-weight: bold;
}

.condition {
   cursor: pointer;
   color: white;
   border: 0;
   /* display: flex; */
   /*align-items: center;
   justify-content: center;
   /* position: inherit; */
   font-size: 16px;
   /* padding: 8px 16px; */
   margin: 5px 10px;
   height: 34px;
   border-radius: 20px;
   background-color: #8ba888;
   border-color: #000;
   /* text-align: center; */
   letter-spacing: -0.5px;
   position: relative;
}

.condition:before{
   position:absolute;
   border-radius: 20px;
   z-index: -1;
   transition: all .4s ease;
   display: block;
   width: 100%;
   content: '';
   position: absolute;
   left: 0;
   bottom: 0;
}
.condition.light{
   opacity:0.48;
}
.condition.on{
   background-color: #253528;
   opacity: 1;
}
.condition.on:before{
   height:100%;
}
.sort {
   bottom: 33.5rem;
   width: 1200px;
   margin: 0 auto;
   align-items: center;
   /* text-align: center; */
   position: relative;
}

.sort>ul {
   list-style: none;
   display: flex;
   margin: 0;
   padding: 0;
}

.sort>ul>li {
   color: #808080;
   font-size: 12px;
   /* margin-right: 10px; */
}

.sortcon {
   cursor: pointer;
   background-color: white;
   color: #808080;
   border: 0;
   /* align-items: center; */
}
.sortcon:hover {
   font-weight: bold;
}
.container {
	width:1200px;
	margin: 0 auto;
	display: flex;
	justify-content: space-between;
	position:relative;
	align-items: center;
	bottom:500px;
}
.subContainer{
	width:33.3333%;
	height: 500px;
}
.subChildContainer{
	height: 400px;
	margin: 0 auto;
	display: table;
}
.SelectBtn{
	cursor: pointer;
   	color: black;
   	border: 0;
   	/* display: flex; */
   	/*align-items: center;
   	justify-content: center;
   	/* position: inherit; */
   	font-size: 16px;
   	/* padding: 8px 16px; */
   	margin: 5px 10px;
   	height: 34px;
   	border-radius: 20px;
   	background-color: #8ba888;
   	border-color: #000;
   	/* text-align: center; */
   	letter-spacing: -0.5px;
   	position: relative;
}
.payBtn{
	cursor: pointer;
   	color: white;
   	border: 0;
   	/* display: flex; */
   	/*align-items: center;
   	justify-content: center;
   	/* position: inherit; */
   	font-size: 16px;
   	/* padding: 8px 16px; */
   	margin: 5px 10px;
   	height: 34px;
   	border-radius: 20px;
	background-color: #253528; 
	border-color: #000;
   	/* text-align: center; */
   	letter-spacing: -0.5px;
   	position: relative;
}
#se{
	margin-left: 500px;
	cursor: pointer;
	height: 34px;
   	border-radius: 20px;
   	background-color: #8ba888;
   	border: thin;
   	color: white;
}
#td_city button[data-cicycd="11"]{
	display: none;
}
</style>

<body>
<script>
      $(document).ready(function() {
         $('#td_academy button').on('click', function(){
            $(this).toggleClass('on');
            var academycd = $(this).data('academycd');
            console.log('학원 코드 : ' , academycd);
            $('#td_academy button').not(this).removeClass('on');
         });
      });
      $(document).ready(function() {
          $('#td_lecture button').on('click', function(){
        	 console.log("클릭 확인");
             $(this).addClass('on').siblings().removeClass('on');
             var lecturecd = $(this).data('lecturecd');
             console.log('과목 코드 : ' , lecturecd);
             updateLevel(lecturecd);
          });
       });
      $(document).ready(function() {
          // 초기에 토익이 선택되도록 설정
          $('#td_lecture button[data-lecturecd="1"]').click();
       });
      
      function updateLevel(lecturecd){
    	  var levels = getLevelsByLecture(lecturecd);
    	  
    	  //레벨 버튼 업데이트
    	  var levelButtons = $('#td_level button');
    	  levelButtons.removeClass('on').hide(); //모든 버튼에서 on 클래스 제거
    	  
    	  //해당 과목에 속하는 레벨에 on 클래스 추가
    	  levels.forEach(function(level){
    		  levelButtons.filter('[data-levelcd="' + level.levelcd + '"]').addClass('on').show();
    	  });
      }
      
      // 선택한 과목에 따라 속하는 레벨 가져오기
      function getLevelsByLecture(lecturecd){
  			// 각 과목에 속하는 레벨들의 정보
		  var levels = [];
		
		  switch (lecturecd) {
		    case 1: //토익
		      levels = [
		        { levelcd: '1500', levelName: '500+' },
		        { levelcd: '1600', levelName: '600+' },
		        { levelcd: '1700', levelName: '700+' },
		        { levelcd: '1800', levelName: '800+' },
		        { levelcd: '1900', levelName: '900+' },
		      ];
		      break;
		    case 2: //토스
		      levels = [
		        { levelcd: '21', levelName: 'IM+' },
		        { levelcd: '22', levelName: 'IH+' },
		        { levelcd: '23', levelName: 'AL+' },
		      ];
		      break;
		    case 3: //토플
		      levels = [
		        { levelcd: '360', levelName: '60+' },
		        { levelcd: '370', levelName: '70+' },
		        { levelcd: '380', levelName: '80+' },
		        { levelcd: '390', levelName: '90+' },
		      ];
		      break;
		    case 4: //아이엘츠
		      levels = [
		        { levelcd: '45', levelName: '5.5+' },
		        { levelcd: '46', levelName: '6.0+' },
		        { levelcd: '47', levelName: '7.0+' },
		      ];
		      break;
		    case 5: //텝스
		      levels = [
		        { levelcd: '5300', levelName: '300+' },
		        { levelcd: '5350', levelName: '350+' },
		        { levelcd: '5400', levelName: '400+' },
		        { levelcd: '500', levelName: '500+' },
		      ];
		      break;
		    case 6: //오픽
		      levels = [
		        { levelcd: '61', levelName: 'IM+' },
		        { levelcd: '62', levelName: 'IH+' },
		        { levelcd: '63', levelName: 'AL+' },
		      ];
		      break;
		    case 7: //gre
		      levels = [
		        { levelcd: '71', levelName: '기본' },
		        { levelcd: '72', levelName: '실전' },
		        { levelcd: '73', levelName: '특강' },
		      ];
		      break;
		    case 8: //g-telp
		      levels = [
		        { levelcd: '81', levelName: '32+' },
		        { levelcd: '82', levelName: '65+' },
		      ];
		      break;
		  }
		  return levels;
		}
      $(document).ready(function() {
          $('#td_level button').on('click', function(){
             $(this).addClass('on').siblings().removeClass('on');
             var levelcd = $(this).data('levelcd');
             console.log('레벨 코드 : ' , levelcd);
          });
       });
      $(document).ready(function() {
          $('#td_local button').on('click', function(){
        	  console.log("클릭 확인");
             $(this).addClass('on').siblings().removeClass('on');
             var localcd = $(this).data('localcd');
             console.log('지역 코드 : ' , localcd);
             updateCity(localcd);
          });
       });
       
       $(document).ready(function() {
          // 초기에 서울이 선택되도록 설정
          $('#td_local button[data-localcd="2"]').click();
       });

       function updateCity(localcd) {
           var cities = getCitiesByLocal(localcd);

           // 지점 버튼 업데이트
           var cityButtons = $('#td_city button');
           cityButtons.removeClass('on').hide(); // 모든 버튼에서 'on' 클래스 제거

           // 해당 지역에 속하는 지점에 'on' 클래스 추가
           cities.forEach(function(city) {
              cityButtons.filter('[data-citycd="' + city.citycd + '"]').addClass('on').show();
           });
       }

      // 선택한 지역에 따라 속하는 지점 가져오기
      function getCitiesByLocal(localcd) {
          // 각 지역에 속하는 지점들의 정보
          var cities = [];

          switch (localcd) {
              case 2: // 서울
                  cities = [
                      { citycd: '1', cityName: '강남' },
                      { citycd: '2', cityName: '종로' },
                      { citycd: '3', cityName: '종로e4u'},
                      { citycd: '4', cityName: '신촌'},
                      { citycd: '5', cityName: '건대'}
                  ];
              console.log(cities);
                  break;
              case 32: // 인천
                  cities = [
                      { citycd: '11', cityName: '인천센터' },
                  ];
                  break;
              case 51: // 부산
                  cities = [
                      { citycd: '7', cityName: '서면' },
                      { citycd: '8', cityName: '부산대' },
                      { citycd: '9', cityName: '대연' },
                      { citycd: '10', cityName: '광복' },
                  ];
                  break;
              case 53: // 대구
                  cities = [
                      { citycd: '6', cityName: '동성로' },
                  ];
                  break;
          }

          return cities;
      }
      $(document).ready(function() {
         $('#td_city button').on('click', function(){
            $(this).addClass('on').siblings().removeClass('on');
            var citycd = $(this).data('citycd');
            console.log('지점 코드 : ' , citycd);
         });
      });
      $(document).ready(function () {
          // 요일 버튼 클릭 시 상태 토글
          $('#td_week button').on('click', function () {
              $(this).toggleClass('on');
              var selectedDays = getSelectedDays(); // 함수 이름을 getSelectedDays로 수정
              console.log('선택한 요일 코드: ', selectedDays);
          });
      });

      // 함수 정의: 선택한 요일 가져오기
      function getSelectedDays() {
          var selectedDays = [];
          $('#td_week button.on').each(function () {
              selectedDays.push($(this).data('weekcd'));
          });
          return selectedDays;
      }
      $(document).ready(function() {
         $('#td_time button').on('click', function(){
            $(this).addClass('on').siblings().removeClass('on');
            var timecd = $(this).data('timecd');
            console.log('시간 코드 : ' , timecd);
         });
      });
      $(document).ready(function () {
          // 검색 버튼 클릭 처리
          $("#se").on("click", function () {
              // 선택된 데이터 수집
              var selectedAcademy = $("#td_academy button.on").data("academycd");
              var selectedLecture = $("#td_lecture button.on").data("lecturecd");
              var selectedLocal = $("#td_local button.on").data("localcd");
              var selectedCity = $("#td_city button.on").data("citycd");
              var selectedLevel = $("#td_level button.on").data("levelcd");
              var selectedWeek = $("#td_week button.on").data("weekcd");
              var selectedTime = $("#td_time button.on").data("timecd");

              // 서버로 AJAX 요청 수행 (실제 엔드포인트와 매개변수로 대체)
              $.ajax({
                  type: "GET",
                  url: "/user/course/userCourseIndex.do",
                  data: {
                      academy: selectedAcademy,
                      lecture: selectedLecture,
                      local: selectedLocal,
                      city: selectedCity,
                      level: selectedLevel,
                      week: selectedWeek,
                      time: selectedTime
                  },
                  success: function (data) {
                      // 서버로부터의 성공적인 응답 처리
                      console.log("검색 결과:", data);
                      // 검색 결과로 UI 업데이트
                  },
                  error: function (error) {
                      // 서버로부터의 오류 응답 처리
                      console.error("검색 중 오류 발생:", error);
                  }
              });
          });

          // 각 카테고리에 대한 버튼 클릭 처리
          $("button[name='btnAcademy'], button[name='lectureName'], button[name='local'], button[name='city'], button[name='level'], button[name='week'], button[name='time']").on("click", function () {
              // 선택된 버튼을 강조하기 위해 'on' 클래스를 토글
              $(this).removeClass("on").toggleClass("on").siblings();
          });
      });

</script>
<script>  
function setCourseComp(no) {
	  var compT;	
	  $.ajax({    	
        url: "/tobe/user/course/setCourseComp.do",
        data: {
            course_no: no,
        },
        success: function(res) {
			if (res == "success") {
				console.log("등록 성공");
			}
			if(res=="full"){
				console.log("full");
				alert('비교함이 꽉차있습니다 비교함을 비워주세요.');
			}
        },
        error: function(xhr, status, error) {
            console.error("에러 발생", status, error);
        }
   		});
	}
</script>
      <div class="wrap">
      <%@include file="/WEB-INF/views/user/common/userHeader.jsp"%>
      </div>
   </div>
   	<div class="choiceBG">
      	<div class="choice">
         	<table class="choiceLayout">
            	<caption>학원, 과목, 지역, 지점, 레벨, 요일, 시간</caption>
            	<tr>
               		<td class=title>학원</td>
               		<td id = "td_academy">
                  		<button name="btnAcademy" class="condition on" data-academycd = "1">해커스</button>
                  		<button name="btnAcademy" class="condition" data-academycd = "2">파고다</button>
                  		<button name="btnAcademy" class="condition" data-academycd = "3">YBM</button>
               		</td>
            	</tr>
            	<tr>
               		<td class=title>과목</td>
               		<td id = "td_lecture">
                  		<button name="lectureName" data-isall="Y" class="condition on" data-lecturecd = "1">토익</button>
                  		<button name="lectureName" data-isall="N" class="condition" data-lecturecd = "2">토스</button>
                  		<button name="lectureName" data-isall="N" class="condition" data-lecturecd = "3">토플</button>
                  		<button name="lectureName" data-isall="N" class="condition" data-lecturecd = "4">아이엘츠</button>
                  		<button name="lectureName" data-isall="N" class="condition" data-lecturecd = "5">텝스</button>
                  		<button name="lectureName" data-isall="N" class="condition" data-lecturecd = "6">오픽</button>
                  		<button name="lectureName" data-isall="N" class="condition" data-lecturecd = "7">gre</button>
                  		<button name="lectureName" data-isall="N" class="condition" data-lecturecd = "8">g-telp</button>
               		</td>
            	</tr>
            	<tr>
               		<td class=title>지역</td>
               		<td id = "td_local">
                  		<button name="local" data-isall="Y" class="condition on" data-localcd = "2">서울</button>
                  		<button name="local" data-isall="N" class="condition" data-localcd = "32">인천</button>
                  		<button name="local" data-isall="N" class="condition" data-localcd = "53">대구</button>
                  		<button name="local" data-isall="N" class="condition" data-localcd = "51">부산</button>
               		</td>
            	</tr>
            	<tr>
               		<td class=title>지점</td>
               		<td id = "td_city">
                  		<button name="city" data-isall="Y" class="condition on" data-citycd = "1">강남</button>
                  		<button name="city" data-isall="N" class="condition" data-citycd = "2">종로</button>
                  		<button name="city" data-isall="N" class="condition" data-citycd = "3">종로e4u</button>
                  		<button name="city" data-isall="N" class="condition" data-citycd = "4">신촌</button>
                  		<button name="city" data-isall="N" class="condition" data-citycd = "5">건대</button>
                  		<button name="city" data-isall="N" class="condition" data-citycd = "11">인천 센터</button>
                  		<button name="city" data-isall="N" class="condition" data-citycd = "6">대구 동성로</button>
                  		<button name="city" data-isall="N" class="condition" data-citycd = "7">서면</button>
                  		<button name="city" data-isall="N" class="condition" data-citycd = "8">부산대</button>
                  		<button name="city" data-isall="N" class="condition" data-citycd = "9">대연</button>
                  		<button name="city" data-isall="N" class="condition" data-citycd = "10">부산광복</button>
               		</td>
            	</tr>
            	<tr>
               		<td class=title>레벨</td>
               		<td id = "td_level">
                  		<button name="level" data-isall="Y" class="condition on" data-levelcd = "1500">500+</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "1600">600+</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "1700">700+</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "1800">800+</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "1900">900+</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "360">60+</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "370">70+</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "380">80+</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "390">90+</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "21">IM+</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "22">IH+</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "23">AL+</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "45">5.5+</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "46">6.0+</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "47">7.0+</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "5300">300+</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "5350">350+</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "5400">400+</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "500">500+</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "61">IM+</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "62">IH+</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "63">AL+</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "71">기본</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "72">실전</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "73">특강</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "81">32+</button>
                  		<button name="level" data-isall="N" class="condition" data-levelcd = "82">65+</button>
               		</td>
            	</tr>
            	<tr>
               		<td class=title>요일</td>
               		<td id = "td_week">
	                  	<button name="week" data-isall="Y" class="condition on" data-weekcd = "1">월</button>
	                  	<button name="week" data-isall="N" class="condition" data-weekcd = "2">화</button>
	                  	<button name="week" data-isall="N" class="condition" data-weekcd = "3">수</button>
	                  	<button name="week" data-isall="N" class="condition" data-weekcd = "4">목</button>
	                  	<button name="week" data-isall="N" class="condition" data-weekcd = "5">금</button>
	                  	<button name="week" data-isall="N" class="condition" data-weekcd = "6">토</button>
	                  	<button name="week" data-isall="N" class="condition" data-weekcd = "7">일</button>
               		</td>
            	</tr>
            	<tr>
               		<td class=title>시간</td>
               		<td id = "td_time">
                  		<button name="time" data-isall="Y" class="condition on" data-timecd = "9">오전(9시 이전)</button>
                  		<button name="time" data-isall="N" class="condition" data-timecd = "912">오전(9시~12시)</button>
                  		<button name="time" data-isall="N" class="condition" data-timecd = "1218">오후(12시~18시)</button>
                  		<button name="time" data-isall="N" class="condition" data-timecd = "18">저녁(18시 이후)</button>
               		</td>
               		<td>
               			<button id = "se">검색</button>
               		<td>
            	</tr>
         	</table>
      	</div>
   	</div>
   	<div class="sort">
   		<ul>
   			<li><button name="sortbtn" class="sortcon">마감임박순</button></li>
         	<li><button name="sortbtn" class="sortcon">|&nbsp&nbsp&nbsp마감느린순</button></li>
	        <li><button name="sortbtn" class="sortcon">|&nbsp&nbsp&nbsp가격낮은순</button></li>
	        <li><button name="sortbtn" class="sortcon">|&nbsp&nbsp&nbsp가격높은순</button></li>
	        <li><button name="sortbtn" class="sortcon">|&nbsp&nbsp&nbsp리뷰많은순</button></li>
	        <li><button name="sortbtn" class="sortcon">|&nbsp&nbsp&nbsp베스트강좌순</button></li>
        </ul>
   	</div>
    <div class = "container">
    	<div class = "subContainer">
    	<c:forEach var="lecture" items="${lectureList }">
    		<div class = "subChildContainer">
    			<h2>강의 목록</h2>
	    			<p><img src="${lecture.teacher_img_org}" alt="강사 이미지" width="50" height="50"></p>
	                <p>${lecture.cname}</p>
	                <p>${lecture.time}</p>
	                <p>${lecture.price}</p>
    		</div>
    		<div class = "childSelectBox1">
    			<table>
    				<tr>
    					<td><button type="button" onclick="" class="SelectBtn">장바구니 담기</button></td>
    					<td><button type="button" onclick="setCourseComp(11);" class="SelectBtn">비교함 담기</button></td>
    					<td><button type="button" onclick="location.href='/tobe/user/pay/userPayDetail.do?'+" class="payBtn">결제 하기</button></td>
    				</tr>
    			</table>
    		</div>
    		</c:forEach>
    	</div>
   	</div>
   <%@include file="/WEB-INF/views/user/common/userFooter.jsp"%>
</body>

</html>