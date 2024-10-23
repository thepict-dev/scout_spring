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
	    	<c:param name="pageTitle" value="전년대비 비율"/>
	    </c:import>
        <div class="contentsContainer">
	        <div class="statsWrapper">
	            <div class="fomrTabContent active">
	                <form action="" class="organSearchForm stats" id="search_form" name="search_form" method="post" enctype="multipart/form-data">
	                    <h2 class="subTitles">조회 결과</h2>
	                    <div class="organSearch stats">
	                        <div class="searchContainer">
	                            <p class="inputCaption">연도</p>
	                            <div class="inputsAlign stats">
	                                <input type="text" name="search_year" id="search_year" class="smThinInput" placeholder="연도를 입력해주세요." value="${pictVO.search_year}">
	                            </div>
	                        </div>
	                        <a href="#lnk" onclick="fn_search()" class="basicButton purple"><img src="/front_img/search.png" alt="">조회</a>
	                    </div>
	                </form>
	                <div class="tableContainer bottomBd">
	                    <h2 class="subTitles">대원 정보</h2>
	                    <div class="tableWrapper stats">
	                        <table>
	                            <colgroup>
	                                <col width="5%" />
	                                <col width="5%" />
	                                <col width="5%" />
	                                <col width="5%" />
	                                <col width="5%" />
	                                <col width="5%" />
	                                <col width="5%" />
	                                <col width="5%" />
	                                <col width="5%" />
	                                <col width="5%" />
	                                <col width="5%" />
	                                <col width="5%" />
	                                <col width="5%" />
	                                <col width="5%" />
	                                <col width="5%" />
	                                <col width="5%" />
	                                <col width="5%" />
	                                <col width="5%" />
	                                <col width="5%" />
	                                <col width="5%" />
	                            </colgroup>
	                            <thead>
	                                <tr>
	                                    <th>연맹</th>
	                                    <th>비버(당해)</th>
	                                    <th>컵(당해)</th>
	                                    <th>스카우트(당해)</th>
	                                    <th>벤처(당해)</th>
	                                    <th>로버(당해)</th>
	                                    <th>복합(당해)</th>
	                                    <th>기타(당해)</th>
	                                    <th>미해당(당해)</th>
	                                    <th>미승인(당해)</th>
	                                    <th>계(당해)</th>
	                                    <th>비버(이전)</th>
	                                    <th>컵(이전)</th>
	                                    <th>스카우트(이전)</th>
	                                    <th>벤처(이전)</th>
	                                    <th>로버(이전)</th>
	                                    <th>복합(이전)</th>
	                                    <th>기타(이전)</th>
	                                    <th>미해당(이전)</th>
	                                    <th>미승인(이전)</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                            	<c:forEach var="resultList" items="${resultList}" varStatus="status">
		                                <tr>
		                                    <td>
		                                    	<c:if test="${resultList.ASSOCIATIONNAME ne '' && resultList.ASSOCIATIONNAME ne null && resultList.ASSOCIATIONNAME ne undefined}">
		                                    		${resultList.ASSOCIATIONNAME}
	                                    		</c:if>
	                                    		<c:if test="${resultList.ASSOCIATIONNAME eq '' || resultList.ASSOCIATIONNAME eq null || resultList.ASSOCIATIONNAME eq undefined}">
	                                    			전체 합계
	                                    		</c:if>
	                                    	</td>
		                                    <td>
		                                    	<c:if test="${empty resultList.currentbeaber}">0</c:if>
		                                    	<c:if test="${!empty resultList.currentbeaber}">${resultList.currentbeaber}</c:if>
	                                    	</td>
		                                    <td>
		                                    	<c:if test="${empty resultList.currentcup}">0</c:if>
		                                    	<c:if test="${!empty resultList.currentcup}">${resultList.currentcup}</c:if>
	                                    	</td>
		                                    <td>
		                                    	<c:if test="${empty resultList.currentscout}">0</c:if>
		                                    	<c:if test="${!empty resultList.currentscout}">${resultList.currentscout}</c:if>
	                                    	</td>
		                                    <td>
		                                    	<c:if test="${empty resultList.currentventure}">0</c:if>
		                                    	<c:if test="${!empty resultList.currentventure}">${resultList.currentventure}</c:if>
	                                    	</td>
		                                    <td>
		                                    	<c:if test="${empty resultList.currentrover}">0</c:if>
		                                    	<c:if test="${!empty resultList.currentrover}">${resultList.currentrover}</c:if>
	                                    	</td>
		                                    <td>
		                                    	<c:if test="${empty resultList.currentcomposite}">0</c:if>
		                                    	<c:if test="${!empty resultList.currentcomposite}">${resultList.currentcomposite}</c:if>
	                                    	</td>
		                                    <td>
		                                    	<c:if test="${empty resultList.currentother}">0</c:if>
		                                    	<c:if test="${!empty resultList.currentother}">${resultList.currentother}</c:if>
	                                    	</td>
		                                    <td>
		                                    	<c:if test="${empty resultList.currentnotapplicable}">0</c:if>
		                                    	<c:if test="${!empty resultList.currentnotapplicable}">${resultList.currentnotapplicable}</c:if>
	                                    	</td>
		                                    <td>
		                                    	<c:if test="${empty resultList.currentnotapproved}">0</c:if>
		                                    	<c:if test="${!empty resultList.currentnotapproved}">${resultList.currentnotapproved}</c:if>
	                                    	</td>
	                                    	<td>
		                                    	<c:if test="${empty resultList.currenttotal}">0</c:if>
		                                    	<c:if test="${!empty resultList.currenttotal}">${resultList.currenttotal}</c:if>
	                                    	</td>
		                                    <td>${resultList.prebeaberrate}</td>
		                                    <td>${resultList.precuprate}</td>
		                                    <td>${resultList.prescoutrate}</td>
		                                    <td>${resultList.preventurerate}</td>
		                                    <td>${resultList.preroverrate}</td>
		                                    <td>${resultList.precompositerate}</td>
		                                    <td>${resultList.preotherrate}</td>
		                                    <td>${resultList.premissingrate}</td>
		                                    <td>${resultList.premissingapprovalrate}</td>
		                                </tr>
	                                </c:forEach>
	                            </tbody>
	                        </table>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</body>
	<script>
		function fn_search(){
			$("#search_form").attr("action", "/admin/front/stats_rate");
			$("#search_form").submit();
		}	
	</script>
</html>