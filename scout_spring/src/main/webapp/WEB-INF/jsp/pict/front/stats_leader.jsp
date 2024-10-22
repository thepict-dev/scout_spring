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
	    	<c:param name="pageTitle" value="연맹별 지도자 등록"/>
	    </c:import>
        <div class="contentsContainer">
	        <div class="statsWrapper">
	            <div class="fomrTabContent active">
	                <form action="" class="organSearchForm stats">
	                    <h2 class="subTitles">조회 결과</h2>
	                    <div class="organSearch stats">
	                        <div class="searchContainer">
	                            <p class="inputCaption">연도</p>
	                            <div class="inputsAlign stats">
	                                <input type="text" name="" id="" class="smThinInput" placeholder="내용을 입력해주세요...">
	                                <a href="#lnk">초기화</a>
	                            </div>
	                        </div>
	                        <div class="searchContainer">
	                            <p class="inputCaption">연맹/지구</p>
	                            <select name="" id="" class="smThinSelect">
	                                <option value="1">중앙본부</option>
	                            </select>
	                        </div>
	                    </div>
	                    <div class="btnContainer organ">
	                        <a href="#lnk" class="basicButton white"><img src="/front_img/reset.png" alt="">취소</a>
	                        <a href="#lnk" class="basicButton purple"><img src="/front_img/search.png" alt="">조회</a>
	                    </div>
	                </form>
	                <div class="tableContainer bottomBd">
	                    <h2 class="subTitles">대원 정보</h2>
	                    <div class="tableWrapper stats">
	                        <table>
	                            <colgroup>
	                                <col width="15%" />
	                                <col width="10%" />
	                                <col width="10%" />
	                                <col width="10%" />
	                                <col width="10%" />
	                                <col width="10%" />
	                            </colgroup>
	                            <thead>
	                                <tr>
	                                    <th>연맹</th>
	                                    <th>등록</th>
	                                    <th>미승인</th>
	                                    <th>계속등록</th>
	                                    <th>신규등록</th>
	                                    <th>총계</th>
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
					                        	<c:if test="${resultList.ASSOCIATIONCODE eq '전체 합계'}">전체 합계</c:if>
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
		                                    	<c:if test="${empty resultList.registersum}">0</c:if>
		                                    	<c:if test="${!empty resultList.registersum}">${resultList.registersum}</c:if>
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
</html>