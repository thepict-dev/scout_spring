<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	String url = request.getRequestURL().toString();
	pageContext.setAttribute("url", url);
	
%>

<div class="lnb">
    <nav>
        <ul class="nav">
            <li>
            	<span><img src="/front_img/lnb1.png" alt=""></span>
                <a href="#lnk">스카우트 통합 관리</a>
                <ul class="subNav">
                    <li><a href="/front/organization">조직 통합 관리</a></li>
                    <li><a href="/front/users">회원 통합 관리</a></li>
                    <li><a href="/front/units">단위대 통합 관리</a></li>
                    <li><a href="/front/signup_org">신규 조직 등록</a></li>
                    <li><a href="/front/signup">신규 회원 등록</a></li>
                    <li><a href="/front/former_list">전종리스트</a></li>
                </ul>
            </li>
            <li>
            	<span><img src="/front_img/lnb5.png" alt=""></span>
                <a href="#lnk">회원등록</a>
                <ul class="subNav">
                    <li><a href="/front/scout_whole_register">대등록</a></li>
                    <li><a href="/front/scout_whole_confirm">대승인</a></li>
                </ul>
            </li>
            <li>
            	<span><img src="/front_img/lnb2.png" alt=""></span>
                <a href="#lnk">행사/활동 관리</a>
            </li>
            <li>
            	<span><img src="/front_img/lnb3.png" alt=""></span>
                <a href="#lnk">통계 및 현황</a>
            </li>
            <li>
            	<span><img src="/front_img/lnb4.png" alt=""></span>
                <a href="#lnk">홈페이지 관리</a>
            </li>
            <li>
                <span><img src="/front_img/setting.png" alt=""></span>
                <a href="#lnk">기본설정관리</a>
                <ul class="subNav">
                	<li><a href="/front/association_price">연맹별납부액관리</a></li>
               	</ul>
            </li>
        </ul>
    </nav>
</div>