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
	    	<c:param name="pageTitle" value="지도자 구성현황"/>
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
	                        <a href="#lnk" onclick="fn_search()" class="basicButton purple" style="height:35px; margin-top:20px"><img src="/front_img/search.png" alt="">조회</a>
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
	                                    <th rowspan="2">구분</th>
	                                    <th rowspan="2">등록</th>
	                                    <th rowspan="2">미승인</th>
	                                    <th rowspan="2">계속등록</th>
	                                    <th rowspan="2">신규등록</th>
	                                    <th colspan="3" style="text-align:center">협조</th>
	                                    <th colspan="3" style="text-align:center">훈육(일반)</th>
	                                    <th colspan="3" style="text-align:center">훈육(로버)</th>
	                                    <th colspan="3" style="text-align:center">전종</th>
	                                    <th colspan="3" style="text-align:center">합계</th>
	                                </tr>
	                                <tr>
	                                    <th>남자</th>
	                                    <th>여자</th>
	                                    <th>계</th>
	                                    <th>남자</th>
	                                    <th>여자</th>
	                                    <th>계</th>
	                                    <th>남자</th>
	                                    <th>여자</th>
	                                    <th>계</th>
	                                    <th>남자</th>
	                                    <th>여자</th>
	                                    <th>계</th>
	                                    <th>남자</th>
	                                    <th>여자</th>
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
		                                    </td>
		                                    <td>
		                                    	<c:if test="${empty resultList.registerconfirm}">0</c:if>
		                                    	<c:if test="${!empty resultList.registerconfirm}">${resultList.registerconfirm}</c:if>
	                                    	</td>
		                                    <td>
		                                    	<c:if test="${empty resultList.registernonconfirm}">0</c:if>
		                                    	<c:if test="${!empty resultList.registernonconfirm}">${resultList.registernonconfirm}</c:if>
	                                    	</td>
		                                    <td>
		                                    	<c:if test="${empty resultList.registercontinue}">0</c:if>
		                                    	<c:if test="${!empty resultList.registercontinue}">${resultList.registercontinue}</c:if>
	                                    	</td>
		                                    <td>
		                                    	<c:if test="${empty resultList.registernew}">0</c:if>
		                                    	<c:if test="${!empty resultList.registernew}">${resultList.registernew}</c:if>
	                                    	</td>
		                                    <td>
		                                    	<c:if test="${empty resultList.leaderposition1m}">0</c:if>
		                                    	<c:if test="${!empty resultList.leaderposition1m}">${resultList.leaderposition1m}</c:if>
	                                    	</td>
	                                    	<td>
		                                    	<c:if test="${empty resultList.leaderposition1w}">0</c:if>
		                                    	<c:if test="${!empty resultList.leaderposition1w}">${resultList.leaderposition1w}</c:if>
	                                    	</td>
	                                    	<td>
		                                    	${resultList.leaderposition1w + resultList.leaderposition1m}
	                                    	</td>
	                                    	
	                                    	<td>
		                                    	<c:if test="${empty resultList.leaderposition2m}">0</c:if>
		                                    	<c:if test="${!empty resultList.leaderposition2m}">${resultList.leaderposition2m}</c:if>
	                                    	</td>
	                                    	<td>
		                                    	<c:if test="${empty resultList.leaderposition2w}">0</c:if>
		                                    	<c:if test="${!empty resultList.leaderposition2w}">${resultList.leaderposition2w}</c:if>
	                                    	</td>
	                                    	<td>
		                                    	${resultList.leaderposition2w + resultList.leaderposition2m}
	                                    	</td>
	                                    	
	                                    	<td>
		                                    	<c:if test="${empty resultList.leaderposition4m}">0</c:if>
		                                    	<c:if test="${!empty resultList.leaderposition4m}">${resultList.leaderposition4m}</c:if>
	                                    	</td>
	                                    	<td>
		                                    	<c:if test="${empty resultList.leaderposition4w}">0</c:if>
		                                    	<c:if test="${!empty resultList.leaderposition4w}">${resultList.leaderposition4w}</c:if>
	                                    	</td>
	                                    	<td>
		                                    	${resultList.leaderposition4w + resultList.leaderposition4m}
	                                    	</td>
	                                    	
	                                    	<td>
		                                    	<c:if test="${empty resultList.leaderposition3m}">0</c:if>
		                                    	<c:if test="${!empty resultList.leaderposition3m}">${resultList.leaderposition3m}</c:if>
	                                    	</td>
	                                    	<td>
		                                    	<c:if test="${empty resultList.leaderposition3w}">0</c:if>
		                                    	<c:if test="${!empty resultList.leaderposition3w}">${resultList.leaderposition3w}</c:if>
	                                    	</td>
	                                    	<td>
		                                    	${resultList.leaderposition3w + resultList.leaderposition3m}
	                                    	</td>
	                                    	
	                                    	<td>
		                                    	${resultList.leaderposition1m+resultList.leaderposition2m+resultList.leaderposition3m+resultList.leaderposition4m}
	                                    	</td>
	                                    	<td>
		                                    	${resultList.leaderposition1w+resultList.leaderposition2w+resultList.leaderposition3w+resultList.leaderposition4w}
	                                    	</td>
	                                    	<td>
		                                    	${resultList.leaderposition1m+resultList.leaderposition2m+resultList.leaderposition3m+resultList.leaderposition4m + resultList.leaderposition1w+resultList.leaderposition2w+resultList.leaderposition3w+resultList.leaderposition4w}
	                                    	</td>
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
			$("#search_form").attr("action", "/admin/front/stats_leader");
			$("#search_form").submit();
		}	
	</script>
</html>