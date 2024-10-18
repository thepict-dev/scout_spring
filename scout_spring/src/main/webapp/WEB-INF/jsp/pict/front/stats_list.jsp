<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>	
<html lang="ko">
	<%@ include file="./include/head.jsp" %>
	<script src="/js/script_signup.js" defer></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<body>
		<%@ include file="./include/lnb.jsp" %>
		<c:import url="./include/header.jsp">
			<c:param name="pageParent" value="통계 및 현황"/>
	    	<c:param name="pageTitle" value="전체 대시보드 보기"/>
	    </c:import>
	    <div class="contentsContainer">
	        <div class="statsWrapper">
	            <ul class="statsContainer">
	            	<c:forEach var="resultList" items="${resultList}" varStatus="status">
		                <li>
		                    <a href="">
		                        <p>
		                        	<c:if test="${resultList.ASSOCIATIONCODE eq '011'}">서울북부연맹</c:if>
		                        	<c:if test="${resultList.ASSOCIATIONCODE eq '012'}">서울남부연맹</c:if>
		                        	<c:if test="${resultList.ASSOCIATIONCODE eq '020'}">부산연맹</c:if>
		                        	<c:if test="${resultList.ASSOCIATIONCODE eq '030'}">대구연맹</c:if>
		                        	<c:if test="${resultList.ASSOCIATIONCODE eq '040'}">인천연맹</c:if>
		                        	<c:if test="${resultList.ASSOCIATIONCODE eq '050'}">광주연맹</c:if>
		                        	<c:if test="${resultList.ASSOCIATIONCODE eq '060'}">대전연맹</c:if>
		                        	<c:if test="${resultList.ASSOCIATIONCODE eq '070'}">대전연맹</c:if>
		                        	<c:if test="${resultList.ASSOCIATIONCODE eq '080'}">울산연맹</c:if>
		                        	<c:if test="${resultList.ASSOCIATIONCODE eq '100'}">경기북부연맹</c:if>
		                        	<c:if test="${resultList.ASSOCIATIONCODE eq '110'}">경기남부연맹</c:if>
		                        	<c:if test="${resultList.ASSOCIATIONCODE eq '120'}">강원연맹</c:if>
		                        	<c:if test="${resultList.ASSOCIATIONCODE eq '130'}">충북연맹</c:if>
		                        	<c:if test="${resultList.ASSOCIATIONCODE eq '140'}">충남세종연맹</c:if>
		                        	<c:if test="${resultList.ASSOCIATIONCODE eq '150'}">전북연맹</c:if>
		                        	<c:if test="${resultList.ASSOCIATIONCODE eq '160'}">전남연맹</c:if>
		                        	<c:if test="${resultList.ASSOCIATIONCODE eq '170'}">경북연맹</c:if>
		                        	<c:if test="${resultList.ASSOCIATIONCODE eq '180'}">경남연맹</c:if>
		                        	<c:if test="${resultList.ASSOCIATIONCODE eq '190'}">제주연맹</c:if>
		                        	<c:if test="${resultList.ASSOCIATIONCODE eq '200'}">중앙본부</c:if>
		                        	<c:if test="${resultList.ASSOCIATIONCODE eq '210'}">가톨릭연맹</c:if>
		                        	<c:if test="${resultList.ASSOCIATIONCODE eq '220'}">원불교연맹</c:if>
		                        	<c:if test="${resultList.ASSOCIATIONCODE eq '230'}">불교연맹</c:if>
		                        	<c:if test="${resultList.ASSOCIATIONCODE eq '240'}">기독교연맹</c:if>
		                        	 총계
	                        	</p>
		                        <div class="counts">
		                            <p><span>${resultList.current}</span>명</p>
		                            <c:if test="${resultList.current - resultList.pre > 0}">
		                            	<div class="decrease"><img src="/front_img/count-down.png" alt="">${resultList.current - resultList.pre}명</div>
	                            	</c:if>
	                            	<c:if test="${resultList.current - resultList.pre < 0}">
		                            	<div class="increase"><img src="/front_img/count-up.png" alt="">${resultList.pre - resultList.current}명</div>
	                            	</c:if>
		                        </div>
		                        <span>대원과 지도자수를 합산한 인원수입니다</span>
		                    </a>
		                </li>
	                </c:forEach>
	            </ul>
	        </div>
	    </div>
	</body>
</html>