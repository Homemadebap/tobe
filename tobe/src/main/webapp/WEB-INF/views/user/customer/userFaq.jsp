<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<META name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=no">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
<link rel="stylesheet" href="/tobe/css/user_Header_Footer.css" />
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    
<style>
    .main{
        width:auto;
        position: relative;
        margin: 200px;
    }
    .select{
        width: 100%;
        height:auto;
        border: 1px solid black;
        border-collapse: collapse;
    
    }
    .select tr{
        
        /* display: flex; */
        font-weight: bold;

     }

    .select tr td{
        border: 1px solid black;
        flex: 1;
    }
    .list{
        width: 100%;
        border-top: 1px solid black;
        
    }
    .list th{
        border-bottom: 1px solid black;
        background: #ECEDE8;
    }
    .list a{
        display: inline-block;
        vertical-align: middle;
    }
    .context td{
        text-align: center;
        border-bottom: 1px solid black;
    }
    .search-wrap{
        margin:10px;
    }
    .page{text-align: center; margin: 20px auto 0;}
    .page li {display: inline-block;}


</style>
<script>
    $(function(){
        $(".t").click(function(){
            var idx = $(this).index(".t");
            
            // 현재 클릭한 토글 외의 다른 토글 닫기
            $(".content").not(":eq("+idx+")").slideUp(300);
            
            // 클릭한 토글 열기 또는 닫기
            $(".content").eq(idx).slideToggle(300);
        });
    });
</script>


</head>
<body>
<body>
	<div class="wrap">
		<%@include file="/WEB-INF/views/user/common/userHeader.jsp"%>
		</div>
		<div class="main">
		    <table class="select">
		        <div>
		            <tr>
		                <td style="text-align: center; width: 250px;"><div class="text"><p>공지사항</p></div><a href="/tobe/user/customer/userCustomer.do"><img src="/img/notice.png" width="80" height="80"></a></td>
		                <td style="text-align: center; width: 250px;"><div class="text"><p>1:1 문의사항</p></div><a href="/tobe/user/customer/userQna.do"><img src="/img/qna.png" width="80" height="80"></a></td>
		                <td style="text-align: center; width: 250px;"><div class="text"><p>FAQ</p></div><a href="/tobe/user/customer/userFaq.do"><img src="/img/faq.png" width="80" height="80"></a></td>   
		            </tr>
		        </div>
		    </table>
		
		    <!-- <h3 class="sub_title" style="border-bottom:1px solid; width: 200px;">공지사항</h3> -->

    
    
	        <div class="container">
	          <div class="search-window">
	            <form action="">
	              <div class="search-wrap">
	                <label for="search" class="blind" style="font-weight: bold;">FAQ</label>
	                    <select>
	                        <option value="제목">제목</option>
	                        <option value="제목">작성일</option>
	                    </select>
	                    <input id="search" type="search" name="" placeholder="검색어를 입력하세요." value="">                        
	                    <button type="submit" class="btn" style="background-color: #ECEDE8; color:#44546A; border-width: 1px; border-radius: 7px; padding:3x 10px; ">검색</button>
	              </div>
	            </form>
	          </div>
	        </div>
     
    

		    <div class="board_head">
		        <table class="list">
		    </div>
		
		            <tbody class="context">
		                <c:forEach var="vo" items="${map.list }">       
                            <tr>                              
                                <td class="t">${vo.f_title }</td>
                            </tr>
                            <tr>                              
                                <td class="content" style="display:none;">${vo.f_content }</td>
                            </tr>
                       </c:forEach>
		            </tbody>
		
		        </table>
		 
		    </div>
			<%@include file="/WEB-INF/views/user/common/userFooter.jsp"%>
		</div>
	</div>
</body>
</html>