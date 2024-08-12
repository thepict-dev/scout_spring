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
        	<img src="${vo.mainimg}" style="width:100%; margin-bottom:30px"/>
			<p class="federTitle">연맹장 인사말</p>
            <div class="greetingContainer feders">
            	<!-- 연맹소개글 -->
            	
                ${vo.introduce}
                
                <c:if test="${vo.leaderimg ne '' && vo.leaderimg ne null && vo.leaderimg ne undefined}">
                	<span class="feders"><img src="${vo.leaderimg}" alt="연맹장사진"></span>
               	</c:if>
            </div>
            <c:if test="${vo.leaderimg ne '' && vo.leaderimg ne null && vo.leaderimg ne undefined}">
	            <div class="sign feders" >
					<p>연맹장 ${vo.leadername}</p>
				</div>
			</c:if>
            <ul class="tabNav organNav rules">
                <li class="active"><a href="/federation_organ?dataid=${vo.dataid}">조직도</a></li>
                <li><a href="/federation_notice?dataid=${vo.dataid}">공지사항</a></li>
                <li><a href="/federation_files?dataid=${vo.dataid}">자료실</a></li>
                <li><a href="/federation_event?dataid=${vo.dataid}">행사안내</a></li>
                <li><a href="/federation_location?dataid=${vo.dataid}">오시는길</a></li>
            </ul>
            
            <!-- 여기서부터 조직도 S  -->
            <c:if test="${vo.organization ne '' && organization ne null && organization ne undefined}">
            	${vo.organization}
            </c:if>
            <c:if test="${vo.organization eq '' || organization eq null || organization eq undefined}">
            	등록된 자료가 없습니다.
            </c:if>
            <!-- 여기서부터 조직도 S  -->
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>