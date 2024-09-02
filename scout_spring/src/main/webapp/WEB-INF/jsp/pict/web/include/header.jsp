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
	pageContext.setAttribute("employeey", session.getAttribute("employeey"));
	pageContext.setAttribute("adminy", session.getAttribute("adminy"));
%>
<%
	String url = request.getRequestURL().toString();
	pageContext.setAttribute("url", url);
	
%>

<c:set var="jamboree" value="${fn:indexOf(url, 'jamboree')}"/>
<c:set var="scouts" value="${fn:indexOf(url, 'scouts')}"/>
<c:set var="oath" value="${fn:indexOf(url, 'oath')}"/>
<c:set var="logos" value="${fn:indexOf(url, 'logos')}"/>
<c:set var="youthhero" value="${fn:indexOf(url, 'youthhero')}"/>
<c:set var="scholarship" value="${fn:indexOf(url, 'scholarship')}"/>

<c:set var="scouts" value="${jamboree ne -1 || scouts ne -1 || oath ne -1 || logos ne -1 || youthhero ne -1 || scholarship ne -1}" />

<c:set var="integrated" value="${fn:indexOf(url, 'integrated')}"/>
<c:set var="program" value="${fn:indexOf(url, 'program')}"/>
<c:set var="information" value="${fn:indexOf(url, 'information')}"/>

<c:set var="notice" value="${fn:indexOf(url, 'notice')}"/>
<c:set var="news" value="${fn:indexOf(url, 'news')}"/>

<c:set var="intro" value="${fn:indexOf(url, 'intro')}"/>
<c:set var="facility" value="${fn:indexOf(url, 'facility')}"/>
<c:set var="greeting" value="${fn:indexOf(url, 'greeting')}"/>
<c:set var="history_local" value="${fn:indexOf(url, 'history_local')}"/>
<c:set var="history_inter" value="${fn:indexOf(url, 'history_inter')}"/>
<c:set var="organization" value="${fn:indexOf(url, 'organization')}"/>
<c:set var="rules" value="${fn:indexOf(url, 'rules')}"/>
<c:set var="location_center" value="${fn:indexOf(url, 'location_center')}"/>
<c:set var="location_local" value="${fn:indexOf(url, 'location_local')}"/>
<c:set var="family" value="${fn:indexOf(url, 'family')}"/>

<c:set var="feder" value="${intro ne -1 || greeting ne -1 || history_local ne -1 || history_inter ne -1 || organization ne -1 || rules ne -1 || location_center ne -1 || location_local ne -1 || family ne -1 || facility ne -1 || store ne -1}" />

<c:set var="tr_intgree" value="${fn:indexOf(url, 'tr_intgree')}"/>
<c:set var="tr_gil" value="${fn:indexOf(url, 'tr_gil')}"/>
<c:set var="tr_board" value="${fn:indexOf(url, 'tr_borad')}"/>

<header>
    <div class="headerTop">
        <div class="headerTopInner">
            <p>다양한 스카우트 정보는 이곳에서 확인하세요</p>
            <div class="headerTopLinks">
                <a href="/admin/front/scout_whole_register" target="_blank" title="새창이동">대등록 신청<img src="/user_img/right.png" alt=""></a>
                <a href="/facility">시설안내, 예약<img src="/user_img/right.png" alt=""></a>
                <a href="/store">수품대리점<img src="/user_img/right.png" alt=""></a>
            </div>
        </div>
    </div>
    <div class="gnbWrapper">
        <div class="gnbInner">
            <div class="gnbLeft">
                <h1><a href="/"><img src="/user_img/logo.svg" alt="로고"></a></h1>
                <ul class="gnb">
                    <li><a href="#lnk" class="localApply">스카우트 가입하기</a></li> 
                    <li <c:if test="${scouts eq true}">class="active"</c:if>>
                        <a href="/jamboree">스카우트</a>
                        <ul class="gnbSub">
	                        <li><a href="/jamboree">잼버리</a></li>
	                        <li><a href="/scouts">대원 및 지도자</a></li>
                            <li><a href="/oath">선서 및 규율</a></li>
                            <li><a href="/logos">휘장 및 로고</a></li>
                            <li><a href="/youthhero">Youth Hero</a></li>
                            <li><a href="/scholarship">스카우트 장학사업</a></li>
                        </ul>
                    </li>
                    <li <c:if test="${integrated ne -1 || program ne -1 || information ne -1}">class="active"</c:if>>
                        <a href="/integrated">자료실</a>
                        <ul class="gnbSub">
	                        <li><a href="/integrated">통합자료실</a></li>
	                        <li><a href="/program">프로그램자료실</a></li>
                            <li><a href="/information">정보공개</a></li>
                        </ul>
                    </li>
                    <li <c:if test="${notice ne -1 || news ne -1}">class="active"</c:if>>
                        <a href="/notice">뉴스</a>
                        <ul class="gnbSub">
                            <li><a href="/notice">공지사항</a></li>
                            <li><a href="/news">언론에 비친 SCOUT</a></li>
                        </ul>
                    </li>
                    <li <c:if test="${fn:contains(url, '/intro') || fn:contains(url, '/greeting') || fn:contains(url, '/history_local') || fn:contains(url, '/organization') || fn:contains(url, '/rules') || fn:contains(url, '/location_center') || fn:contains(url, '/facility') || fn:contains(url, '/store') || fn:contains(url, '/family')}">class="active"</c:if>>
                        <a href="/intro">한국스카우트연맹</a>
                        <ul class="gnbSub">
                            <li><a href="/intro">소개</a></li>
                            <li><a href="/greeting">인사말</a></li>
                            <li><a href="/history_local">연혁,사업</a></li>
                            <li><a href="/organization">조직</a></li>
                            <li><a href="/rules">규정</a></li>
                            <li><a href="/location_center">찾아오시는길</a></li>
                            
                            <li><a href="/facility">시설안내,예약</a></li>
                            <li><a href="/store">수품대리점</a></li>
                            
                            
	                        <li><a href="/family">함께하는 기관 및 기업</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="gnbRight">
            	<c:if test="${name ne null && name ne undefined && name ne ''}">
            		<a href="/mypage"><img src="/user_img/mypage.png" alt="마이페이지">마이페이지</a>
                	<a href="#lnk" onclick="fn_logout()">로그아웃</a>
               	</c:if>
               	<c:if test="${name eq null || name eq undefined || name eq ''}">
                	<a href="#lnk" onclick="fn_login()">로그인</a>
               	</c:if>
                <!-- <a href="#lnk">소통게시판</a> -->
           		<a href="/mypage" class="mb"><img src="/user_img/mypage.png" alt="마이페이지"></a>
                <button type="button"><img src="/user_img/menu.png" alt="메뉴열기"></button>
            </div>
        </div>
    </div>
    <div class="siteMap">
	    <div class="siteMapInner">
	        <div class="siteMapTop">
	            <a href="/"><img src="/user_img/logo-sitemap.png" alt="로고"></a>
	            <button type="button"><img src="/user_img/close2.png" alt="닫기"></button>
	        </div>
	        <div class="siteMapBottom">
	            <ul class="depth1">
	                <li>
	                    <a href="#lnk" class="localApply">스카우트 가입하기</a>
	                </li>
	            </ul>
	            <ul class="depth1">
	                <li>
	                    <a href="/jamboree" <c:if test="${scouts eq true}">class="active"</c:if>>스카우트</a>
	                    <ul class="depth2">
	                        <li><a href="/jamboree">잼버리</a></li>
	                        <li><a href="/scouts">대원 및 지도자</a></li>
                            <li><a href="/oath">선서 및 규율</a></li>
                            <li><a href="/logos">휘장 및 로고</a></li>
                            <li><a href="/youthhero">Youth Hero</a></li>
                            <li><a href="/scholarship">스카우트 장학사업</a></li>
	                    </ul>
	                </li>
	            </ul>
	            <ul class="depth1">
	                <li>
	                    <a href="/integrated" <c:if test="${integrated ne -1 || program ne -1 || information ne -1}">class="active"</c:if>>자료실</a>
	                    <ul class="depth2">
	                        <li><a href="/integrated">통합자료실</a></li>
	                        <li><a href="/program">프로그램자료실</a></li>
	                        <li><a href="/information">정보공개</a></li>
	                    </ul>
	                </li>
	            </ul>
	            <ul class="depth1">
	                <li>
	                    <a href="/notice" <c:if test="${notice ne -1 || news ne -1}">class="active"</c:if>>뉴스</a>
	                    <ul class="depth2">
	                        <li><a href="/notice">공지사항</a></li>
	                        <li><a href="/news">언론에 비친 SCOUT</a></li>
	                    </ul>
	                </li>
	            </ul>
	            <ul class="depth1">
	                <li>
	                    <a href="/intro" <c:if test="${fn:contains(url, '/intro') || fn:contains(url, '/greeting') || fn:contains(url, '/history_local') || fn:contains(url, '/organization') || fn:contains(url, '/rules') || fn:contains(url, '/location_center') || fn:contains(url, '/facility') || fn:contains(url, '/store') || fn:contains(url, '/family')}">class="active"</c:if>><span class="pcText">한국스카우트연맹</span><span class="mbText">한국<br>스카우트<br>연맹</span></a>
	                    <ul class="depth2">
                            <li><a href="/intro">소개</a></li>
                            <li><a href="/greeting">인사말</a></li>
                            <li><a href="/history_local">연혁,사업</a></li>
                            <li><a href="/organization">조직</a></li>
                            <li><a href="/rules">규정</a></li>
                            <li><a href="/location_center">찾아오시는길</a></li>
                            <li><a href="/facility">시설안내,예약</a></li>
                            <li><a href="/store">수품대리점</a></li>
	                        <li><a href="/family">함께하는 기관 및 기업</a></li>
	                    </ul>
	                </li>
	            </ul>
	            <!-- 
	            <ul class="depth1">
	                <li>
	                    <a href="/tr_intgree" <c:if test="${tr_intgree ne -1 || tr_gil ne -1 || tr_board ne -1}">class="active"</c:if>><span class="pcText">중앙훈련</span><span class="mbText">중앙<br>훈련원</span></a>
	                    <ul class="depth2">
	                        <li><a href="/tr_intgree">소개</a></li>
	                        <li><a href="/tr_gil">찾아오시는길</a></li>
                            <li><a href="/tr_board">공지사항</a></li>
	                    </ul>
	                </li>
	            </ul>
	             -->
	        </div>
	    </div>
	</div>
	<input type="hidden" id="tttt" value="N">
</header>
<script>
	document.addEventListener('keydown', function(event) {
	    // 눌린 키의 코드 값을 가져옵니다
	    if (event.key === 'p' || event.key === 'P') {
	        // 'P' 키가 눌렸을 때 실행할 코드
	        $('#tttt').val("Y")
	    }
	});
	function fn_login(){
		var tttt = $('#tttt').val()
		if(tttt == 'N'){
			alert("현재 지원하지 않는 기능입니다.")	
		}
		else{
			location.href= "/login"	
		}
		
	}
	function fn_logout(){
		if(confirm("로그아웃 하시겠습니까?")){
			location.href="/logout"
		}
		
	}
</script>