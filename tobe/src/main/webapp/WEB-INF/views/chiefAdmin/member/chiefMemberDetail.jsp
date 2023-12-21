<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원정보수정</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

<script>
   function goSave(){
	   $("#frm").submit();
   }

</script>
<style>
		.size{
	    position:absolute;
	    top:50%;
	    left:50%;
	    transform:translate(-50%, -50%);
        }

        
		table{
		border: 1px solid;
		width: 1080px;
		}
		th, td{
		border:1px solid;
		font-size:20px
		}
		th{
			background-color:#D9D9D9;
			text-align:left;
		}

	</style>

</head>
<body>
    <div class="wrap">
       <%@include file="/WEB-INF/views/chiefAdmin/common/chiefSideBar_logo.jsp" %>
       </div>
        <div class="sub">
            <div class="size">
                <h2 class="sub_title">회원정보</h2>
                <form name="frm" id="frm" method="post" action="chiefMemberIndex.do">
                <table class="board_write" cellspacing = "0">
                    <!-- <caption style="float:left;">필수입력</caption> -->
                    <colgroup>
                        <col width="20%" />
                        <col width="80%" />
                    </colgroup>
                    <tbody>
                    	<tr>
                    		<th>이름</th>
                    		<td>${map.name}</td>
                    	</tr>
                        <tr>
                    		<th>아이디</th>
                    		<td>${map.id }</td>
                    	</tr>
                        <tr>
                            <th>성별</th>
                            <td>${map.gender }</td>
                        </tr>
                        <tr>
                            <th>가입일</th>
                            <td>${map.registdate }</td>
                        </tr>
                        <tr>
                    		<th>생년월일</th>
                    		<td>${map.birthday }</td>
                    	</tr>
                    	<tr>
                    		<th>이메일</th>
                    		<td>${map.email }</td>
                    	</tr>
                    	<tr>
                    		<th>전화번호</th>
                    		<td>${map.hp }</td>
                    	</tr>
                    	<tr>
                    		<th>포인트</th>
                    		<td><input type="text" name="point" id="point" style="float:left;" value="${map.point }">point
                    		<input type="hidden" name="member_no" value="${map.member_no }"/></td>
                    	</tr>
                        <tr>
                            <th>주소</th>
							<td>${map.addr1 }</td>
                        </tr>
                     	<tr>
                     		<th>상세 주소</th>
							<td>${map.addr2 }</td>
                        </tr>
                    </tbody>
                </table>
                        <input type="hidden" name="cmd" value="write.do"/>
                        <input type="hidden" name="checkEmail" id="checkEmail" value="0"/>
                </form>
                <!-- //write--->
                <div class="btnSet clear">
                    <div><a href="javascript:;" class="btn" onclick="goSave();">수정</a> <a href="javascript:;" class="btn" onclick="history.back();">취소</a></div>
                </div>
            </div>
        </div>
		
    </div>
</body> 
</html>