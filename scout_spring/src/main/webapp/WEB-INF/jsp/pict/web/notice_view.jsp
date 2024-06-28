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
        <div class="viewContainer">
            <div class="viewTop">
                <p>${pictVO.SUBJECT}</p>
                <span>${fn:substring(pictVO.ENTERDATE,0,11)}</span>
            </div>
            <div class="viewBottom">
                <div class="viewBottomInner">
                    <p>${pictVO.CONTENTS}</p>
                    
                </div>
            </div>
            <div class="addFile">
            	<c:if test="${pictVO.FILE1 ne '' && pictVO.FILE1 ne null && pictVO.FILE1 ne undefined}"><a href="${pictVO.FILE1}" download><img src="/user_img/file.png" alt="">${pictVO.FILE1}</a></c:if>
            	<c:if test="${pictVO.FILE2 ne '' && pictVO.FILE2 ne null && pictVO.FILE2 ne undefined}"><a href="${pictVO.FILE2}" download><img src="/user_img/file.png" alt="">${pictVO.FILE2}</a></c:if>
            	<c:if test="${pictVO.FILE3 ne '' && pictVO.FILE3 ne null && pictVO.FILE3 ne undefined}"><a href="${pictVO.FILE3}" download><img src="/user_img/file.png" alt="">${pictVO.FILE3}</a></c:if>
            	<c:if test="${pictVO.FILE4 ne '' && pictVO.FILE4 ne null && pictVO.FILE4 ne undefined}"><a href="${pictVO.FILE4}" download><img src="/user_img/file.png" alt="">${pictVO.FILE4}</a></c:if>
            	<c:if test="${pictVO.FILE5 ne '' && pictVO.FILE5 ne null && pictVO.FILE5 ne undefined}"><a href="${pictVO.FILE5}" download><img src="/user_img/file.png" alt="">${pictVO.FILE5}</a></c:if>
            </div>
            <div class="prevContainer">
                <a href="javascript:history.back()">목록</a>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>