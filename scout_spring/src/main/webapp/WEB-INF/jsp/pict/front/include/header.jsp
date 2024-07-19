<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	pageContext.setAttribute("id", session.getAttribute("id"));
	pageContext.setAttribute("name", session.getAttribute("name"));
	pageContext.setAttribute("associationname", session.getAttribute("associationname"));
	pageContext.setAttribute("associationcode", session.getAttribute("associationcode"));
	pageContext.setAttribute("leaderpositionname", session.getAttribute("leaderpositionname"));
	pageContext.setAttribute("picimg", session.getAttribute("picimg"));
%>

<div class="header">
    <h1><a href="/"></a></h1>
    <div class="headerInner">
        <ul class="crumb">
            <li>${param.pageParent}</li>
            <li>${param.pageTitle}</li>
        </ul>
        <div class="topNav">
            <div class="profile">
                <span>
                	
                	<img src="<c:if test="${picimg eq null or pictimg eq ''}">/front_img/profile.png</c:if>
                	<c:if test="${picimg ne null and pictimg ne ''}">${picimg }</c:if>" alt="프로필 이미지">
               	</span>
                <div class="profileTexts">
                    <p>${name}(${id})</p>
                    <span>${associationname}<span>•</span>${leaderpositionname}</span>
                </div>
            </div>
            <div class="navBtns">
                <a href="#lnk" onclick="javascript:fn_logout()"><img src="/front_img/logout.png" alt="">로그아웃</a>
                <a href="https://www.scout.or.kr/SysApplicationController.do" target="_blank">홈페이지 바로가기</a>
            </div>
        </div>
    </div>
</div>
<script>
	
	function fn_logout() {
		if(confirm("로그아웃 하시겠습니까?")){
			location.href="/admin/logout"
		}
	}
	
	$(document).ready(function(){
		var requestData = {
	        memberno : '${id}',
	        associationcode : '${associationcode}'
	    }
		//여기서~ 연맹별 전종이 오늘 해야할일~
		debugger
	 
		$.ajax({
			url : "/admin/today_task"
			, type : "POST"
			, data : JSON.stringify(param)
			, contentType : "application/json"
			, dataType : "json"
			, async : false
			, success : function(data, status, xhr) {
				var html ="";
				console.log(data)

			}
			, error : function(xhr, status, error) {
				console.log(xhr)
				console.log("에러")
			}
		});

   	});
	
</script>