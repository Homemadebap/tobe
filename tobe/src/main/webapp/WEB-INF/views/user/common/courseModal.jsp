<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="kr.co.tobe.util.*" %> 
<style>
	.flex{
		display: flex;
		justify-content:center;
		align-items: center;
		height: 90%;
	
	}

</style>
<script>

$(function(){
	$(".removeBtn").click(function(){

		$.ajax({
			type: 'GET',
			url:'/tobe/user/common/modalRemove.do',
			data:{
				remove : $(this).val()
			},
			success:function(res) {
				console.log(res);
				$('#ex1').html(res);
				
				$('#ex1').modal();
				
			}
		})
	})
	
	
})
</script>
		<div id="result">
			<div class="parent  flex">
				<div class="">
					<c:if test="${!empty map.cosComp1 }" >
						<div class="child">${CodeToString.educationToString(map.cosComp1.education)} ${CodeToString.areaToString(map.cosComp1.area)} ${CodeToString.branchToString(map.cosComp1.branch)}<br>
			    						${map.cosComp1.cname}<br></div>
			    		<button class="removeBtn" value="cosComp1">삭제</button>				
					</c:if>
					<c:if test="${empty map.cosComp1 }">
						<a href="/tobe/user/course/userCourseIndex.do">강좌추가</a>
					</c:if>
				</div>
				<div>
					<c:if test="${!empty map.cosComp2 }">
						<div class="child">${CodeToString.educationToString(map.cosComp1.education)} ${CodeToString.areaToString(map.cosComp1.area)} ${CodeToString.branchToString(map.cosComp1.branch)}<br>
			    						${map.cosComp1.cname}<br></div>
			    		<button class="removeBtn" value="cosComp2">삭제</button>				
					</c:if>
					<c:if test="${empty map.cosComp2 }">
						<a href="/tobe/user/course/userCourseIndex.do">강좌추가</a>
					</c:if>
				</div>
	  	 	</div>
	  	 	<c:if test="${!empty map.cosComp1 && !empty map.cosComp2 }" >
				<p><a href="#sub-modal" rel="modal:open" text-align="center">비교하기</a></p>
			</c:if>
		</div>
		<div id="sub-modal" class="modal">
			<div class="flex">
				<div>
					과정명 : ${map.cosComp1.cname} <br>
					학원 : ${CodeToString.educationToString(map.cosComp1.education)}<br>
					요일 : ${CodeToString.dateToStirng(map.cosComp1.mon, map.cosComp1.tue, map.cosComp1.wed, map.cosComp1.thu, map.cosComp1.fri, map.cosComp1.sat, map.cosComp1.sun)}<br>
					시간 : ${map.cosComp1.time}<br>
					가격 : ${map.cosComp1.price}<br>
					강사명 : ${map.cosComp1.teacher1} , ${map.cosComp1.teacher2}<br>
					개강일 : ${map.cosComp1.startday}<br>
					종가일 : ${map.cosComp1.endday}<br>
					후기 평점 : ${map.cosComp1.course_rating}<br>
					후기 갯수 : ${map.cosCompRe1}
				</div>
				<div>
					과정명 : ${map.cosComp2.cname}<br>
					학원 : ${CodeToString.educationToString(map.cosComp2.education)}<br>
					요일 : ${CodeToString.dateToStirng(map.cosComp2.mon, map.cosComp2.tue, map.cosComp2.wed, map.cosComp2.thu, map.cosComp2.fri, map.cosComp2.sat, map.cosComp2.sun)}<br>
					시간 : ${map.cosComp2.time}<br>
					가격 : ${map.cosComp2.price}<br>
					강사명 : ${map.cosComp2.teacher1} , ${map.cosComp2.teacher2}<br>
					개강일 : ${map.cosComp2.startday}<br>
					종가일 : ${map.cosComp2.endday}<br>
					후기 평점 : ${map.cosComp2.course_rating}<br>
					후기 갯수 : ${map.cosCompRe2}<br>
				</div>
			</div>	 	
	 		<p> <a href="#ex1" rel="modal:open">닫기</a></p>
		</div>
		