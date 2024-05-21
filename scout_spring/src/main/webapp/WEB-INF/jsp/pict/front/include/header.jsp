<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<%
/*
	pageContext.setAttribute("id", session.getAttribute("id"));
	pageContext.setAttribute("name", session.getAttribute("name"));
	pageContext.setAttribute("associationname", session.getAttribute("associationname"));
	pageContext.setAttribute("leaderpositionname", session.getAttribute("leaderpositionname"));
	pageContext.setAttribute("picimg", session.getAttribute("picimg"));
	*/
%>

<div class="header">
    <h1><a href="/"></a></h1>
    <div class="headerInner">
        <ul class="crumb">
            <li>스카우트 통합 관리</li>
            <li>회원 통합창</li>
        </ul>
        <div class="topNav">
            <div class="profile">
                <span>
                	
                	<img src="<c:if test="${picimg eq null or pictimg eq ''}">/front_img/profile.png</c:if>
                	<c:if test="${picimg ne null and pictimg ne ''}">${picimg }</c:if>" alt="프로필 이미지">
               	</span>
                <div class="profileTexts">
                    
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
			location.href="/logout"
		}
	}

</script>