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
            <h2>${vo.title}</h2>
            <p>${vo.ASSOCIATIONNAME}</p>
        </div>
        <div class="subContents">
        	<img src="https://scout.thepict.co.kr${vo.mainimg}" style="width:100%; margin-bottom:30px"/>
            <div class="greetingContainer">
            	<!-- 연맹소개글 -->
                ${vo.introduce}
                
                <div class="sign" >
					<p style="float:right; position:relative">연맹장 ${vo.leadername}</p>
				</div>
                <span class="feders"><img src="https://scout.thepict.co.kr${vo.leaderimg}" alt="연맹장사진"></span>
            </div>
            <ul class="tabNav organNav rules">
                <li><a href="/federation_organ">조직도</a></li>
                <li><a href="/federation_notice">공지사항</a></li>
                <li><a href="/federation_files">자료실</a></li>
                <li><a href="/federation_event">행사안내</a></li>
                <li class="active"><a href="/federation_location">오시는길</a></li>
            </ul>
            <div class="tabInner ruleContents active">
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