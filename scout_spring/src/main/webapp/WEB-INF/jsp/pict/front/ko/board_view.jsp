<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ include file="./include/head.jsp" %>
<%@ include file="./include/header.jsp" %>

<div class="subMain">
    <div class="viewContainer">
        <a href="javascript:window.history.back();"><img src="/front_img/arrow.png" alt="">목록으로</a>
        <div class="viewTitle">
            <p>${pictVO.title}</p>
            <span>${pictVO.regdate}</span>
        </div>
        <c:if test="${pictVO.file1 ne '' && pictVO.file1 ne undefined }">
	        <div class="files">
	        	<c:if test="${pictVO.file1 ne '' && pictVO.file1 ne undefined }">
	            	<a href="http://www.hangangrisingstar.co.kr${pictVO.file1}" download=""><img src="/front_img/attach.png" alt="">${pictVO.file1}</a>
            	</c:if>
            	<c:if test="${pictVO.file2 ne '' && pictVO.file2 ne undefined }">
	            	<a href="http://www.hangangrisingstar.co.kr${pictVO.file2}" download=""><img src="/front_img/attach.png" alt="">${pictVO.file2}</a>
	            </c:if>
	        </div>
        </c:if>
        <div class="viewContents">
            <p>
                ${pictVO.text}
            </p>
        </div>
    </div>
</div>
<%@ include file="./include/footer.jsp" %>
