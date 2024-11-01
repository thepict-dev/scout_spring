<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
    String url = request.getRequestURL().toString();
    pageContext.setAttribute("url", url);
    
    pageContext.setAttribute("authority", session.getAttribute("authority"));
%>

<c:set var="organization" value="${fn:indexOf(url, 'organization')}"/>
<c:set var="users" value="${fn:indexOf(url, 'users')}"/>
<c:set var="units" value="${fn:indexOf(url, 'units')}"/>
<c:set var="signup_org" value="${fn:indexOf(url, 'signup_org')}"/>
<c:set var="signup" value="${fn:indexOf(url, 'signup')}"/>
<c:set var="former_lists" value="${fn:indexOf(url, 'former_list')}"/>

<c:set var="management" value="${organization ne -1 || users ne -1 || units ne -1 || signup_org ne -1 || signup ne -1 || former_lists ne -1}" />

<c:set var="scout_whole_register" value="${fn:indexOf(url, 'register_scout')}"/>
<c:set var="scout_whole_confirm" value="${fn:indexOf(url, 'register_confirm')}"/>

<c:set var="board_lists" value="${fn:indexOf(url, 'board_list')}"/>
<c:set var="reservation_list" value="${fn:indexOf(url, 'reservation_list')}"/>
<c:set var="local_list" value="${fn:indexOf(url, 'local_list')}"/>
<c:set var="popup_list" value="${fn:indexOf(url, 'popup_list')}"/>

<c:set var="home_man" value="${board_lists ne -1 || reservation_list ne -1 || local_list ne -1 || popup_list ne -1 }" />

<c:set var="association_price" value="${fn:indexOf(url, 'association_price')}"/>

<c:set var="stats_list" value="${fn:indexOf(url, 'stats_list')}"/>
<c:set var="stats_scout" value="${fn:indexOf(url, 'stats_scout')}"/>
<c:set var="stats_leader" value="${fn:indexOf(url, 'stats_leader')}"/>
<c:set var="stats_continue" value="${fn:indexOf(url, 'stats_continue')}"/>
<c:set var="stats_rate" value="${fn:indexOf(url, 'stats_rate')}"/>
<c:set var="stats_organ" value="${fn:indexOf(url, 'stats_organ')}"/>

<c:set var="stats_organ" value="${fn:indexOf(url, 'stats_organ')}"/>
<c:set var="stats_member" value="${fn:indexOf(url, 'stats_member')}"/>
<c:set var="life_list" value="${fn:indexOf(url, 'life_list')}"/>

<c:if test="${authority eq 'jeonjong'}">
	<div class="lnb">
	    <nav>
	        <ul class="nav">
	            <li <c:if test="${management eq true}">class="active"</c:if>>
	                <span><img src="/front_img/lnb1.png" alt=""></span>
	                <a href="#lnk">스카우트 통합 관리</a>
	                <ul class="subNav">
	                    <li><a href="/admin/front/organization">조직 통합 관리</a></li>
	                    <li><a href="/admin/front/users">회원 통합 관리</a></li>
	                    <li><a href="/admin/front/units">단위대 통합 관리</a></li>
	                    <li><a href="/admin/front/signup_org">신규 조직 등록</a></li>
	                    <li><a href="/admin/front/signup">신규 회원 등록</a></li>
	                    <li><a href="/admin/front/former_list">전종 리스트</a></li>
	                    <li><a href="/admin/front/life_list">평생회원 관리</a></li>
	                </ul>
	            </li>
	            <li <c:if test="${scout_whole_register ne -1 || scout_whole_confirm ne -1}">class="active"</c:if>>
	                <span><img src="/front_img/lnb5.png" alt=""></span>
	                <a href="#lnk">회원등록</a>
	                <ul class="subNav">
	                    <li><a href="/admin/front/scout_whole_register">대등록</a></li>
	                    <li><a href="/admin/front/scout_whole_confirm">대승인</a></li>
	                </ul>
	            </li>
	            <li>
	                <span><img src="/front_img/lnb2.png" alt=""></span>
	                <a href="#lnk">행사/활동 관리</a>
	            </li>
	            <li <c:if test="${stats_list ne -1 || stats_scout ne -1 || stats_leader ne -1 || stats_continue ne -1 || stats_rate ne -1 || stats_organ ne -1}">class="active"</c:if>>
	                <span><img src="/front_img/lnb3.png" alt=""></span>
	                <a href="#lnk">통계 및 현황</a>
	                <ul class="subNav">
	                    <li><a href="/admin/front/stats_list">전체 대시보드</a></li>
	                    <li><a href="#lnk" onclick="fn_later()">조직등록현황</a></li>
	                    <li><a href="/admin/front/stats_scout">대원구성 현황</a></li>
	                    <li><a href="/admin/front/stats_leader">지도자 구성현황</a></li>
	                    <li><a href="/admin/front/stats_continue">대원(신규,계속) 현황</a></li>
	                    <li><a href="/admin/front/stats_rate">전년대비 비율</a></li>
	                    <li><a href="/admin/front/stats_organ">육성단체 현황</a></li>
	                    
	                    
	                </ul>
	            </li>
	            <li <c:if test="${home_man eq true}">class="active"</c:if>>
	                <span><img src="/front_img/lnb4.png" alt=""></span>
	                <a href="#lnk">홈페이지 관리</a>
	                <ul class="subNav">
	                    <li><a href="/admin/front/board_list">중앙본부 게시물</a></li>
	                    <li><a href="/admin/front/board_list_sub">지방·특수연맹 게시물</a></li>
	                    <li><a href="/admin/front/reservation_list">시설 예약관리</a></li>
	                    <li><a href="/admin/front/local_list">스카우트 가입 관리</a></li>
	                    <li><a href="/admin/front/popup_list">팝업 관리</a></li>
	                </ul>
	            </li>
	            <li <c:if test="${association_price ne -1}">class="active"</c:if>>
	                <span><img src="/front_img/setting.png" alt=""></span>
	                <a href="#lnk">기본설정관리</a>
	                <ul class="subNav">
	                    <li><a href="/admin/front/association_price">연맹별납부액관리</a></li>
	                </ul>
	            </li>
	        </ul>
	    </nav>
	</div>
</c:if>
<c:if test="${authority eq 'sub_admin'}">
	<div class="lnb">
	    <nav>
	        <ul class="nav">
	            <li <c:if test="${scout_whole_register ne -1 || scout_whole_confirm ne -1}">class="active"</c:if>>
	                <span><img src="/front_img/lnb5.png" alt=""></span>
	                <a href="#lnk">회원등록</a>
	                <ul class="subNav">
	                    <li><a href="/admin/front/scout_whole_register">대등록</a></li>
	                    <li><a href="/admin/front/units">단위대 관리</a></li>
	                </ul>
	            </li>
	           
	        </ul>
	    </nav>
	</div>
</c:if>
<script>
	function fn_later(){
		alert("추후 제공에정입니다.");
	}
</script>