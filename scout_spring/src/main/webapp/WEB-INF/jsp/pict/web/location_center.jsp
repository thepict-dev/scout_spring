<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<meta charset="ko">
<%@ include file="./include/head.jsp" %>
<body>
	<%@ include file="./include/header.jsp" %>
    <div class="subWrapper">
        <div class="subTop">
            <h2>찾아오시는 길</h2>
            <p>스카우트는 여러분께<br>항상 열려있습니다.</p>
        </div>
        <div class="subContents">
            <ul class="tabNav organNav rules">
                <li class="active"><a href="/location_center">중앙본부</a></li>
                <li><a href="/location_local">지방/특수연맹</a></li>
            </ul>
            <!-- 스카우트 구성 -->
            <div class="tabInner active">
                <ul class="locationTexts">
                    <li>
                        <p><img src="/user_img/location.png" alt="주소">주소</p>
                        <span>서울 영등포구 국회대로62길 14</span>
                    </li>
                    <li>
                        <p><img src="/user_img/call.png" alt="전화번호">전화번호</p>
                        <span>02-6335-2000</span>
                    </li>
                </ul>
                <div class="kakaoMap">

                </div>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>