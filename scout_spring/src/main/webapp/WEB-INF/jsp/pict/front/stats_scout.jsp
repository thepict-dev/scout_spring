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
	    	<c:param name="pageTitle" value="연맹별등록"/>
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
	                                <col width="10%" />
	                                <col width="9%" />
	                                <col width="9%" />
	                                <col width="9%" />
	                                <col width="9%" />
	                                <col width="9%" />
	                                <col width="9%" />
	                                <col width="9%" />
	                                <col width="9%" />
	                                <col width="9%" />
	                            </colgroup>
	                            <thead>
	                                <tr>
	                                    <th>연맹</th>
	                                    <th>비버</th>
	                                    <th>컵</th>
	                                    <th>스카우트</th>
	                                    <th>벤처</th>
	                                    <th>로버</th>
	                                    <th>복합</th>
	                                    <th>기타</th>
	                                    <th>미할당</th>
	                                    <th>미승인</th>
	                                    <th>계</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                            	<c:forEach var="resultList" items="${resultList}" varStatus="status">
		                                <tr>
		                                    <td>
		                                    	<c:if test="${resultList.ASSOCIATIONCODE eq '011'}">서울북부연맹</c:if>
					                        	<c:if test="${resultList.ASSOCIATIONCODE eq '012'}">서울남부연맹</c:if>
					                        	<c:if test="${resultList.ASSOCIATIONCODE eq '020'}">부산연맹</c:if>
					                        	<c:if test="${resultList.ASSOCIATIONCODE eq '030'}">대구연맹</c:if>
					                        	<c:if test="${resultList.ASSOCIATIONCODE eq '040'}">인천연맹</c:if>
					                        	<c:if test="${resultList.ASSOCIATIONCODE eq '050'}">광주연맹</c:if>
					                        	<c:if test="${resultList.ASSOCIATIONCODE eq '060'}">대전연맹</c:if>
					                        	<c:if test="${resultList.ASSOCIATIONCODE eq '070'}">울산연맹</c:if>
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
					                        	<c:if test="${resultList.ASSOCIATIONCODE eq '전체 합계'}"><span style="font-weight:700">전체 합계</span></c:if>
		                                    </td>
		                                    <td>${resultList.scoutclscode1}</td>
		                                    <td>${resultList.scoutclscode2}</td>
		                                    <td>${resultList.scoutclscode3}</td>
		                                    <td>${resultList.scoutclscode4}</td>
		                                    <td>${resultList.scoutclscode5}</td>
		                                    <td>${resultList.scoutclscode6}</td>
		                                    <td>${resultList.scoutclscodeetc}</td>
		                                    <td>${resultList.scoutclscodenull}</td>
		                                    <td>${resultList.scoutclscodenonconfirm}</td>
		                                    <td>${resultList.scoutclscodesum}</td>
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
			$("#search_form").attr("action", "/admin/front/stats_scout");
			$("#search_form").submit();
		}	
	</script>
</html>