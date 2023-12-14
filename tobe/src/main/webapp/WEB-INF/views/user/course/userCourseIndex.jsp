<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강신청</title>
<link rel="stylesheet" href="/tobe/css/user_Header_Footer.css" />
</head>
<style>
.body {
	min-width: 1200px;
	height: 100%;
}

.wrap {
	width: 75rem;
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
	/* height:12.5rem; */
	position: absolute;
	/* top: 65rem; */
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
</style>
<body>
<script>
	var loadingList = [];
	
	$(document).ready(function() {
		$('button[name=btnAcademy]').click(function() {
			var targetCondition = $(this).data('academycd')
			
			$("#sch_academycd").val(targetCondition);
			
			clear_Search_Value();
			
			$('button[name=condition]').removeClass('on')
			if(!$(this).hasClass('on')){
				$(this).toggleClass('on');
			}
			getTypePanel($("sch_lsubjcd").val(), $("#sch_subjcd").val(),$("#sch_academycd").val());
		});
		initSearchPanelEvent();
		
		getTypePanel($("#sch_lsubjcd").val(), $("#sch_subjcd").val(), $("#sch_academycd").val());
		
		/*if(getToday() >= '202312010000' && getToday() <= 202401310000){
			$('.floating_evt_banner').show();
		}*/
	})
	
	function clear_Search_Value(){
		$('#sch_lectcode').val('');
		
		$('#sch_level, #sch_week, #sch_time, #sch_type').val();
			addProcess('getSearchPanelAjax.do');
			
			$.ajax({
				url:"getSearchPanelAjax.do",
				type: "POST",
				contentType: 'json',
				dataType:'json',
				data: JSON.stringify({
					subjcode:$("#sch_subjcd").val(),
					academycode:$("#sch_academycd").val(),
					yymm:$("#sch_schedule").val(),
					schedule:$("#sch_schedule").val()
				}),
				success: function(result){
					$('#td_lecture').val('');
					$('#td_local').val('');
					$('#td_city').val('');
					$('#td_week').val('');
					$('#td_level').val('');
					$('#td_time').val('');
					$('#td_lecture').empty();
					$('#td_local').empty();
					$('#td_city').empty();
					$('#td_week').empty();
					$('#td_level').empty();
					$('#td_time').empty();
					
					//수강 레벨 버튼 생성
					if(result.classLevelList != null){
					  if(result.classLevelList.length > 0){
					    getVtnTemplate('level', 'Y', 'data-toeicLevelcd', '', '1500', 'on', 'td_level');
					  }
					  $(result.classLevelList).each(function() {
				  	    getVtnTemplate('level', 'N', 'data-toeicLevelcd', this.codeidty, this.codename, '', 'td_level');
					  });
					}
					
					//수강 과목 버튼 생성
					if(result.classLectureList != null) {
					  if(result.classLectureList.length > 0) {
					    getVtnTemplate('lectureName', 'Y', 'data-lecturecd', '', '토익', 'on', 'td_lecture');
					  }
					  $(result.classLectureList).each(function() {
					    getVtnTemplate('lectureName', 'N', 'data-lecturecd', this.codeidty, this.codename, '', 'td_lecture');
					  });
					}
					
					//수강 지역 버튼 생성
					if(result.classLocalList != null) {
					  if(result.classLocalList.length > 0) {
					    getVtnTemplate('local', 'Y', 'data-localcd', '', '서울', 'on', 'td_local');
					  }
					  $(result.classLocalList).each(function() {
					    getVtnTemplate('local', 'N', 'data-localcd', this.codeidty, this.codename, '', 'td_local');
					  });
					}
					
					//수강 지점 버튼 생성
					if(result.classCityList != null) {
					  if(result.classCityList.length > 0) {
					    getVtnTemplate('city', 'Y', 'data-citycd', '', '강남', 'on', 'td_city');
					  }
					  $(result.classCityList).each(function() {
					    getVtnTemplate('city', 'N', 'data-citycd', this.codeidty, this.codename, '', 'td_city');
					  });
					}
					
					//수강 요일 버튼 생성
					if(result.classWeekList != null) {
					  if(result.classWeekList.length > 0) {
					    getVtnTemplate('week', 'Y', 'data-weekcd', '', '월', 'on', 'td-week');
					  }
					  $(result.classWeekList).each(function() {
					    getVtnTemplate('week', 'N', 'data-weekcd', this.codeidty, this.codename, '', 'td_week');
					  });
					}	
					
					//수강 시간 버튼 생성
					if(result.classTimeList != null) {
					  if(result.classTimeList.length > 0){
					    getVtnTemplate('time', 'Y', 'data-timecd', '', '오전(9시 이전)', 'on', 'td_time');
					  }
					  $(result.classTimeList).each(function() {
					    getVtnTemplate('time', 'N', 'data-timecd', this.codeidty, this.codename, '', 'td_time');
					  });
					}
					initSearchPanelEvent();
					removeProcess('getSearchPanelAjax.do');
				}, error: function(msg){
					alert(result);	
				}
			});
	}
	function getVtnTemplate(name, isAll, datapropNM, datapropVal, displatNM, isOnClass, appendTargetID) {
		var typeName = '';
		var btn = $('<button>', {'name':name, 'data-isall':isAll, 'class':'condition' + isOnClass});
		
		//딜리버리 유형 체크
		/*if(datapropVal == "P023" || datapropVal == "P022" || datapropVal == "P024" || datapropVal == "056" || datapropVal == "P026" || datapropVal == "P028" || datapropVal == "053" || datapropVal == "0730" || datapropVal == "S100" || datapropVal == "090"){
			typeName += '
		}*/
	}
	
	function initSearchPanelEvent() {
		$('button[name=lectureName]').click(function() {
			$(this).toggleClass('on');
			var isAll = $(this).data('isall');
			if(isAll == "Y") {
				$('button[name=lectureName]').each(function(idx, item){
					if('Y' != $(item).data('isall')){
						$(item).removeClass('on');
					}
				});
			}
			if($('.on[name=lectureName]').length == 0){
				$('button[name=lectureName][data-isall = Y]').toggleClass('on');
			}
			searchTimeTable();
		});
		$('button[name=local]').click(function() {
			$(this).toggleClass('on');
			var isAll = $(this).data('isall');
			if(isAll == "Y") {
				$('button[name=local]').each(function(idx, item){
					if('Y' != $(item).data('isall')){
						$(item).removeClass('on');
					}
				});
			}
			if($('.on[name=local]').length == 0){
				$('button[name=local][data-isall = Y]').toggleClass('on');
			}
			searchTimeTable();
		});
		$('button[name=city]').click(function() {
			$(this).toggleClass('on');
			var isAll = $(this).data('isall');
			if(isAll == "Y") {
				$('button[name=city]').each(function(idx, item){
					if('Y' != $(item).data('isall')){
						$(item).removeClass('on');
					}
				});
			}
			if($('.on[name=city]').length == 0){
				$('button[name=city][data-isall = Y]').toggleClass('on');
			}
			searchTimeTable();
		});
		
		$('button[name=week]').click(function() {
			$(this).toggleClass('on');
			var isAll = $(this).data('isall');
			if(isAll == "Y") {
				$('button[name=week]').each(function(idx, item){
					if('Y' != $(item).data('isall')){
						$(item).removeClass('on');
					}
				});
			}
			if($('.on[name=week]').length == 0){
				$('button[name=week][data-isall = Y]').toggleClass('on');
			}
			searchTimeTable();
		});
		$('button[name=time]').click(function(){
			$(this).toggleClass('on');
			var isAll = $(this).data('isall');
			$('button[name=time]').each(function(idx, item){
				if(isAll=="Y"){
					if('Y'!=$(item).data('isall')){
						$(item).removeClass('on');
				} 
				}else{
					if('Y' == $(item).data('isall')){
						$(item).removeClass('on');
					}
				}
			});
			if($('.on[name=time]').length == 0){
				$('button[name=time][data-isall=Y]').toggleClass('on');
			}
			searchTimeTable();
		});
		$('button[name=level]').click(function() {
			$(this).toggleClass('on');
			var isAll = $(this).data('isall');
			$('button[name=level]').each(function(ids,item){
				if(isAll=="Y"){
					if('Y' != $(item).data('isall')){
						$(item).removeClass('on');
					}
				}else{
					if('Y' == $(item).data('isall')){
						$(item).removeClass('on');
					}
				}
			});
			if($('.on[name=level]').length == 0){
				$('button[name=level][data-isall=Y]').toggleClass('on');
			}
			searchTimeTable();
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
						<button name="city" data-isall="N" class="condition" data-citycd = "4">신촌</button>
						<button name="city" data-isall="N" class="condition" data-citycd = "5">건대</button>
					</td>
				</tr>
				<tr>
					<td class=title>레벨</td>
					<td id = "td_level">
						<button name="level" data-isall="Y" class="condition on" data-toeicLevelcd = "1500">500+</button>
						<button name="level" data-isall="N" class="condition" data-toeicLevelcd = "1600">600+</button>
						<button name="level" data-isall="N" class="condition" data-toeicLevelcd = "1700">700+</button>
						<button name="level" data-isall="N" class="condition" data-toeicLevelcd = "1800">800+</button>
						<button name="level" data-isall="N" class="condition" data-toeicLevelcd = "1900">900+</button>
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
	<%@include file="/WEB-INF/views/user/common/userFooter.jsp"%>
</body>
</html>