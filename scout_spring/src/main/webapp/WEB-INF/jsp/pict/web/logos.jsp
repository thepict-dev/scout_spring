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
            <h2>휘장 및 로고</h2>
            <p>체계적인 규정과 규율이<br>멋진 스카우트를 만듭니다.</p>
        </div>
        <div class="subContents">
            <div class="flexContainer">
                <h3 class="contentTitle">스카우트 휘장</h3>
                <h3 class="contentTitle mbText">스카우트 휘장</h3>
                <div class="contentDesc rules">
                    <img src="/user_img/rule1.png" alt="휘장">
                </div>
            </div>
            <div class="flexContainer">
                <h3 class="contentTitle">스카우트 로고</h3>
                <h3 class="contentTitle mbText">스카우트 로고</h3>
                <div class="contentDesc rules">
                    <img src="/user_img/rule2.png" alt="로고">
                </div>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>