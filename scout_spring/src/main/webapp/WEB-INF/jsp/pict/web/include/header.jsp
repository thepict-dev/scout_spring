<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	pageContext.setAttribute("id", session.getAttribute("id"));
	pageContext.setAttribute("name", session.getAttribute("name"));
	pageContext.setAttribute("associationname", session.getAttribute("associationname"));
	pageContext.setAttribute("leaderpositionname", session.getAttribute("leaderpositionname"));
	pageContext.setAttribute("picimg", session.getAttribute("picimg"));
%>

<header>
    <div class="headerTop">
        <div class="headerTopInner">
            <p>다양한 스카우트 정보는 이곳에서 확인하세요</p>
            <div class="headerTopLinks">
                <a href="#lnk" target="_blank" title="새창이동">대등록 신청<img src="/user_img/right.png" alt=""></a>
                <a href="#lnk" target="_blank" title="새창이동">대번호 검색<img src="/user_img/right.png" alt=""></a>
                <a href="#lnk" target="_blank" title="새창이동">지역가입 안내<img src="/user_img/right.png" alt=""></a>
            </div>
        </div>
    </div>
    <div class="gnbWrapper">
        <div class="gnbInner">
            <div class="gnbLeft">
                <h1><a href="/"><img src="/user_img/logo.svg" alt="로고"></a></h1>
                <ul class="gnb">
                    <li class="active"><a href="/main">홈</a></li> 
                    <li>
                        <a href="#lnk">커뮤니티</a>
                    </li>
                    <li>
                        <a href="/jamboree">행사</a>
                        <ul class="gnbSub">
                            <li><a href="/jamboree">잼버리</a></li>
                            <li><a href="/youthhero">YOUTH HERO</a></li>
                            <li><a href="/scholarship">스카우트 장학사업</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="/integrated">자료실</a>
                        <ul class="gnbSub">
	                        <li><a href="/integrated">통합자료실</a></li>
	                        <li><a href="/program">프로그램자료실</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="/notice">뉴스</a>
                        <ul class="gnbSub">
                            <li><a href="/notice">공지사항</a></li>
                            <li><a href="/news">언론에 비친 SCOUT</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="/intro">한국스카우트연맹</a>
                        <ul class="gnbSub">
                            <li><a href="/intro">소개</a></li>
                            <li><a href="/greeting">인사말</a></li>
                            <li><a href="/vision">비전</a></li>
                            <li><a href="/history_local">연혁,사업</a></li>
                            <li><a href="/organization">조직</a></li>
                            <li><a href="/rules">규정,휘장</a></li>
                            <li><a href="/facility">시설안내,예약</a></li>
                            <li><a href="/location">찾아오시는길</a></li>
                            <li><a href="/store">수품대리점</a></li>
                            <li><a href="/family">함께하는 기관 및 기업</a></li>
                            <li><a href="/information">정보공개</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="gnbRight">
                <a href="#lnk">로그인</a>
                <a href="#lnk">소통게시판</a>
                <button type="button"><img src="/user_img/menu.png" alt="메뉴열기"></button>
            </div>
        </div>
    </div>
</header>