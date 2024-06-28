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
            	<c:set var="file1_sp" value="${fn:split(pictVO.file1, '/')}"/>
            	<c:set var="file1_name" value="${file1_sp[fn:length(file1_sp) - 1]}"/>
            	
            	<c:set var="file2_sp" value="${fn:split(pictVO.file2, '/')}"/>
            	<c:set var="file2_name" value="${file2_sp[fn:length(file2_sp) - 1]}"/>
            	
            	<c:set var="file3_sp" value="${fn:split(pictVO.file3, '/')}"/>
            	<c:set var="file3_name" value="${file3_sp[fn:length(file3_sp) - 1]}"/>
            	
            	<c:set var="file4_sp" value="${fn:split(pictVO.file4, '/')}"/>
            	<c:set var="file4_name" value="${file4_sp[fn:length(file4_sp) - 1]}"/>
            	
            	<c:set var="file5_sp" value="${fn:split(pictVO.file5, '/')}"/>
            	<c:set var="file5_name" value="${file5_sp[fn:length(file5_sp) - 1]}"/>
            	
            	<c:if test="${pictVO.file1 ne '' && pictVO.file1 ne null && pictVO.file1 ne undefined}"><a href="http://scout.thepict.co.kr${pictVO.file1}" target="_blank" download><img src="/user_img/file.png" alt="">${file1_name}</a></c:if>
            	<c:if test="${pictVO.file2 ne '' && pictVO.file2 ne null && pictVO.file2 ne undefined}"><a href="http://scout.thepict.co.kr${pictVO.file2}" target="_blank" download><img src="/user_img/file.png" alt="">${file2_name}</a></c:if>
            	<c:if test="${pictVO.file3 ne '' && pictVO.file3 ne null && pictVO.file3 ne undefined}"><a href="http://scout.thepict.co.kr${pictVO.file3}" target="_blank" download><img src="/user_img/file.png" alt="">${file3_name}</a></c:if>
            	<c:if test="${pictVO.file4 ne '' && pictVO.file4 ne null && pictVO.file4 ne undefined}"><a href="http://scout.thepict.co.kr${pictVO.file4}" target="_blank" download><img src="/user_img/file.png" alt="">${file4_name}</a></c:if>
            	<c:if test="${pictVO.file5 ne '' && pictVO.file5 ne null && pictVO.file5 ne undefined}"><a href="http://scout.thepict.co.kr${pictVO.file5}" target="_blank" download><img src="/user_img/file.png" alt="">${file5_name}</a></c:if>
            </div>
            <div class="prevContainer">
                <a href="javascript:history.back()">목록</a>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>