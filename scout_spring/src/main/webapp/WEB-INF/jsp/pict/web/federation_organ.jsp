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
                <li class="active"><a href="/federation_organ">조직도</a></li>
                <li><a href="/federation_notice">공지사항</a></li>
                <li><a href="/federation_files">자료실</a></li>
                <li><a href="/federation_event">행사안내</a></li>
                <li><a href="/federation_location">오시는길</a></li>
            </ul>
            <div class="tabInner ruleContents active">
                <ul class="tabNavSub">
                    <li class="active"><a href="#lnk">임원</a></li>
                    <li><a href="#lnk">커미셔너</a></li>
                    <li><a href="#lnk">지방명예회의위원</a></li>
                </ul>
                <!-- 여기서부터 조직도 S  -->
                ${vo.organization}
                <!-- 여기서부터 조직도 S  -->
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>