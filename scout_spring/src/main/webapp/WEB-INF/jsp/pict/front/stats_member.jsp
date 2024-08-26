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
	            <ul class="formTabNav stats">
	                <li class="active">기본정보</li>
	                <li>추가정보</li>
	            </ul>
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
	                                <col width="20%" />
	                                <col width="20%" />
	                                <col width="20%" />
	                                <col width="40%" />
	                            </colgroup>
	                            <thead>
	                                <tr>
	                                    <th>회원번호</th>
	                                    <th>회원명</th>
	                                    <th>관계</th>
	                                    <th>비고</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                                <tr>
	                                    <td>1</td>
	                                    <td>지도자</td>
	                                    <td>년도</td>
	                                    <td>연맹</td>
	                                </tr>
	                            </tbody>
	                        </table>
	                    </div>
	                </div>
	            </div>
	            <div class="fomrTabContent">
	
	            </div>
	        </div>
	    </div>
	</body>
</html>