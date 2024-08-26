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
	                <li>
	                    <a href="">
	                        <p>서울남부 총계</p>
	                        <div class="counts">
	                            <p><span>500</span>명</p>
	                            <!-- <div class="increase"><img src="/front_img/count-up.png" alt="">123명</div> -->
	                            <div class="decrease"><img src="/front_img/count-down.png" alt="">123명</div>
	                        </div>
	                        <span>대원과 지도자수를 합산한 인원수입니다</span>
	                    </a>
	                </li>
	                <li>
	                    <a href="">
	                        <p>서울남부 총계</p>
	                        <div class="counts">
	                            <p><span>500</span>명</p>
	                            <div class="increase"><img src="/front_img/count-up.png" alt="">123명</div>
	                            <!-- <div class="decrease"><img src="/front_img/count-down.png" alt="">123명</div> -->
	                        </div>
	                        <span>대원과 지도자수를 합산한 인원수입니다</span>
	                    </a>
	                </li>
	            </ul>
	        </div>
	    </div>
	</body>
</html>