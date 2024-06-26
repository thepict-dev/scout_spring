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
            <h2>스카우트 장학사업</h2>
            <p>여러분의 작은 정성이<br>청소년의 희망으로 피어납니다</p>
            <span style="word-break: break-all;">한국스카우트연맹 장학위원회는 스카우트 대원들과 우리 청소년들이 보다 큰 꿈을 키우고 우리 사회의 건강한 주역이 될 수 있도록 장학기금 모금에서부터 장학생선발, 소외받고 가정형편이 어려운 처지의 청소년, 저개발 스카우트 회원국 지원 등 장학사업을 활발히 펼치고 있습니다. 스카우트 가족 여러분의 작은 정성과 도움이 우리 청소년들이 더 큰 꿈을 키울 수 있는 반석이 됩니다.</span>
        </div>
        <div class="subContents">
            <div class="flexContainer">
                <h3 class="contentTitle">스카우트<br>장학사업</h3>
                <ul class="contentDesc schol">
                    <li>
                        <p>매년 초등·중등·고등·대학생 400여명 장학금 전달</p>
                    </li>
                    <li>
                        <p>소외 계층 장학사업</p>
                    </li>
                    <li>
                        <p>새터민(탈북청소년) 장학사업</p>
                    </li>
                    <li>
                        <p>스카우트 회원국 청소년 장학사업</p>
                    </li>
                    <li>
                        <p>긴급구호(수해,화재 등) 지원사업</p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>