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
            	<c:if test="${pictVO.file1 ne '' && pictVO.file1 ne null && pictVO.file1 ne undefined}"><a href="http://scout.thepict.co.kr${pictVO.file1}" target="_blank" download><img src="/user_img/file.png" alt="">${fn:split(pictVO.file1,'/user1/upload_file/scout/')[1]}</a></c:if>
            	<c:if test="${pictVO.file2 ne '' && pictVO.file2 ne null && pictVO.file2 ne undefined}"><a href="http://scout.thepict.co.kr${pictVO.file2}" target="_blank" download><img src="/user_img/file.png" alt="">${fn:split(pictVO.file2,'/user1/upload_file/scout/')[1]}</a></c:if>
            	<c:if test="${pictVO.file3 ne '' && pictVO.file3 ne null && pictVO.file3 ne undefined}"><a href="http://scout.thepict.co.kr${pictVO.file3}" target="_blank" download><img src="/user_img/file.png" alt="">${fn:split(pictVO.file3,'/user1/upload_file/scout/')[1]}</a></c:if>
            	<c:if test="${pictVO.file4 ne '' && pictVO.file4 ne null && pictVO.file4 ne undefined}"><a href="http://scout.thepict.co.kr${pictVO.file4}" target="_blank" download><img src="/user_img/file.png" alt="">${fn:split(pictVO.file4,'/user1/upload_file/scout/')[1]}</a></c:if>
            	<c:if test="${pictVO.file5 ne '' && pictVO.file5 ne null && pictVO.file5 ne undefined}"><a href="http://scout.thepict.co.kr${pictVO.file5}" target="_blank" download><img src="/user_img/file.png" alt="">${fn:split(pictVO.file5,'/user1/upload_file/scout/')[1]}</a></c:if>
            </div>
            <div class="prevContainer">
                <a href="javascript:history.back()">목록</a>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>