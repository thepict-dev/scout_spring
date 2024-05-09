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
                <img src="/front_img/lnb1.png" alt="">
                <a href="#lnk">스카우트 통합 관리</a>
                <ul class="subNav">
                    <li><a href="/">조직 통합창</a></li>
                    <li><a href="/">회원 통합창</a></li>
                    <li><a href="/">단위대 통합창</a></li>
                    <li><a href="/front/signup">신규 회원 등록</a></li>
                </ul>
            </li>
            <li>
                <img src="/front_img/lnb2.png" alt="">
                <a href="#lnk">행사/활동 관리</a>
            </li>
            <li>
                <img src="/front_img/lnb3.png" alt="">
                <a href="#lnk">통계 및 현황</a>
            </li>
            <li>
                <img src="/front_img/lnb4.png" alt="">
                <a href="#lnk">홈페이지 관리</a>
            </li>
            <li>
                <img src="/front_img/lnb5.png" alt="">
                <a href="#lnk">커뮤니티</a>
            </li>
        </ul>
    </nav>
</div>