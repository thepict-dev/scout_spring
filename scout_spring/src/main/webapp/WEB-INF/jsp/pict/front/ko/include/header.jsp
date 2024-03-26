<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	String url = request.getRequestURL().toString();
	pageContext.setAttribute("url", url);
	
%>



<c:set var="main" value="${fn:indexOf(url, 'main')}"/>
<c:set var="intro" value="${fn:indexOf(url, 'intro')}"/>
<c:set var="highlight" value="${fn:indexOf(url, 'highlight')}"/>
<c:set var="board" value="${fn:indexOf(url, 'board')}"/>


<header>
    <div class="headerInner">
        <h1>
            <a href="/"><img src="/front_img/logo.png" alt="로고"></a>
        </h1>
        <ul class="nav">
            <li <c:if test="${main ne -1}">class="active"</c:if> >
                <a href="/front/ko/main.do">홈</a>
            </li>
            <li <c:if test="${intro ne -1}">class="active"</c:if> >
                <a href="/front/ko/intro.do">라이징스타 소개</a>
            </li>
            <li <c:if test="${highlight ne -1}">class="active"</c:if> >
                <a href="/front/ko/highlight.do">참가자 구경하러 가기</a>
            </li>
            <li <c:if test="${board ne -1}">class="active"</c:if> >
                <a href="/front/ko/board_list.do">소식보기</a>
            </li>
        </ul>
    </div>
</header>