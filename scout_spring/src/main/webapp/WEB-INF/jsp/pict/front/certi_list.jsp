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
			<c:param name="pageParent" value="홈페이지 관리"/>
	    	<c:param name="pageTitle" value="등록증 출력 리스트"/>
	    </c:import>
		    <div class="contentsContainer">
	        <div class="listContainer">
	            <div class="listInner">
	                <form action="" id="search_fm" name="search_fm" method="get" style="display: flex; justify-content: flex-end; width: 100%;">
                        <div class="regiSearch" style="justify-content: flex-end; padding: 0 0 16px 0;">
                            <div class="searchContainer">
                                <p class="inputCaption">연맹/지구</p>
                                <div class="inputsAlign">
                                    <select name="ASSOCIATIONCODE" id="ASSOCIATIONCODE" onchange="fn_get_unitylist_org()" class="lgThinSelect">
                                        <c:forEach var="association_list" items="${association_list}" varStatus="status">
                                            <option value="${association_list.ASSOCIATIONCODE}"> ${association_list.ASSOCIATIONNAME}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="searchContainer">
                                <p class="inputCaption">등록일</p>
                               	<div class="inputsAlign">
	                                <input type="date" id="search_start" name="search_start" value="" class="lgThinInput" max="9999-12-31"> -
	                                <input type="date" id="search_end" name="search_end" value="" class="lgThinInput" max="9999-12-31">
                                </div>
                            </div>
                            <div class="btnContainer organ" style="justify-content: flex-start; margin-top: 5px;">
                                <a href="#regiSearchPopup" onclick="troop_search()" class="smButton searches purple regiSearch"><img src="/front_img/search2.png" alt="">조회</a>
                            </div>
                        </div>
	                </form>
	                <ul class="listHead certi">
	                    <li>순서</li>
	                    <li>회원번호</li>
	                    <li>이름</li>
	                    <li>지도자/대원</li>
	                    <li>연맹명</li>
	                    <li>단위대명</li>
	                    <li>등록일자</li>
	                </ul>
	                <ul class="listBody certi">
	                    <li>
	                        <p>1</p>
	                        <p>한지현</p>
	                        <p>12345678</p>
	                        <p>지도자</p>
	                        <p>강원도춘천에더픽트연맹</p>
	                        <p>강원도춘천에더픽트단위대</p>
	                        <p>2024-09-09</p>
	                    </li>
	                </ul>
	                <div class="pagination">
		            	<c:if test="${pictVO.pageNumber ne 1}">
		            		<a href="/admin/front/certi_list?BRDNO=${pictVO.BRDNO}&pageNumber=1"><img src="/user_img/first.png" alt=""></a>
		            		<a href="/admin/front/certi_list?BRDNO=${pictVO.BRDNO}&pageNumber=${pictVO.pageNumber - 1 < 1 ? 1 : pictVO.pageNumber - 1}"><img src="/user_img/prev.png" alt=""></a>
		            	</c:if>
		            	<c:forEach var="i" begin="${pictVO.startPage}" end="${pictVO.endPage}">
							<c:if test="${i eq pictVO.pageNumber}">
								<a href="/admin/front/certi_list?BRDNO=${pictVO.BRDNO}&pageNumber=${i}" class="active">${i}</a>
							</c:if>
							<c:if test="${i ne pictVO.pageNumber}">
								<a href="/admin/front/certi_list?BRDNO=${pictVO.BRDNO}&pageNumber=${i}" >${i}</a>
							</c:if>
						</c:forEach>
		                
		                <c:if test="${pictVO.lastPage ne pictVO.pageNumber}">
							<li><a href="/admin/front/certi_list?BRDNO=${pictVO.BRDNO}&pageNumber=${pictVO.pageNumber + 1 > pictVO.lastPage ?  pictVO.lastPage : pictVO.pageNumber + 1}"><img src="/user_img/next.png" alt=""></a></li>
							<li><a href="/admin/front/certi_list?BRDNO=${pictVO.BRDNO}&pageNumber=${pictVO.lastPage}"><img src="/user_img/last.png" alt=""></a></li>
						</c:if>
		            </div>
	            </div>
	        </div>
	    </div>
	</body>
	<script>
	
	</script>
</html>