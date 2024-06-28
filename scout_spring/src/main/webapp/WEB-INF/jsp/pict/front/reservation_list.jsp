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
	    	<c:param name="pageTitle" value="시설예약 관리"/>
	    </c:import>
		    <div class="contentsContainer">
	        <div class="listContainer">
	            <div class="listInner">
	                <form action="" id="search_fm" name="search_fm" method="get" class="countList">
	                    <p>총 <span>${board_cnt}</span>개</p>
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <select name="status" id="status" class="lgThinInput">
	                            	<option value="">전체</option>
	                                <option value="Y" <c:if test="${pictVO.status eq 'Y'}">selected</c:if>>승인</option>
	                                <option value="N" <c:if test="${pictVO.status eq 'N'}">selected</c:if>>미승인</option>
	                            </select>
	                        </div>
	                        <div class="inputBox listSearch">
	                            <input type="text" name="search_text" id="search_text" placeholder="내용을 입력하세요…">
	                            <a href="#lnk" onclick="fn_search()"><img src="/front_img/search2.png" alt=""></a>
	                        </div>
	                    </div>
	                </form>
	                <ul class="listHead">
	                    <li>순서</li>
	                    <li>기관명</li>
	                    <li>담당부서</li>
	                    <li>담당자</li>
	                    <li>연락처</li>
	                    <li>사용일시</li>
	                    <li>사용시간</li>
	                    <li>사용인원</li>
	                    <li>부가시설</li>
	                    <li>신청일자</li>
	                    <li>상태</li>
	                </ul>
	                <ul class="listBody">
	                	<c:forEach var="board_list" items="${board_list}" varStatus="status">
		                    <li>
		                        <p>
		                        	<c:if test="${pictVO.pageNumber eq 1}">
		                        		${board_cnt - status.index}
	                        		</c:if>
	                        		<c:if test="${pictVO.pageNumber ne 1}">
	                        			${board_cnt - (status.index +  ((pictVO.pageNumber - 1) * 20))}
	                        		</c:if>
		                        </p>
		                        <p>${board_list.company}</p>
		                        <p>${board_list.depart}</p>
		                        <p>${board_list.name}</p>
		                        <p>${board_list.MOBILE}</p>
		                        <p>${board_list.applydate}</p>
		                        <p>${board_list.time}</p>
		                        <p>${board_list.person}</p>
		                        <p>${board_list.etc1} / ${board_list.etc2}</p>
		                        <p>${fn:substring(board_list.ENTERDATE,0,11)}</p>
		                        <p>${board_list.status}</p>
		                    </li>
	                    </c:forEach>
	                </ul>
	                <div class="listButton">
	                    <a href="/admin/front/board_form"><img src="/front_img/add.png" alt="등록버튼">등록</a>
	                </div>
	                <div class="pagination">
		            	<c:if test="${pictVO.pageNumber ne 1}">
		            		<a href="/admin/front/board_list?BRDNO=${pictVO.BRDNO}&pageNumber=1"><img src="/user_img/first.png" alt=""></a>
		            		<a href="/admin/front/board_list?BRDNO=${pictVO.BRDNO}&pageNumber=${pictVO.pageNumber - 1 < 1 ? 1 : pictVO.pageNumber - 1}"><img src="/user_img/prev.png" alt=""></a>
		            	</c:if>
		            	
		            	
		            	<c:forEach var="i" begin="${pictVO.startPage}" end="${pictVO.endPage}">
							<c:if test="${i eq pictVO.pageNumber}">
								<a href="/admin/front/board_list?BRDNO=${pictVO.BRDNO}&pageNumber=${i}" class="active">${i}</a>
							</c:if>
							<c:if test="${i ne pictVO.pageNumber}">
								<a href="/admin/front/board_list?BRDNO=${pictVO.BRDNO}&pageNumber=${i}" >${i}</a>
							</c:if>
						</c:forEach>
		                
		                <c:if test="${pictVO.lastPage ne pictVO.pageNumber}">
							<li><a href="/admin/front/board_list?BRDNO=${pictVO.BRDNO}&pageNumber=${pictVO.pageNumber + 1 > pictVO.lastPage ?  pictVO.lastPage : pictVO.pageNumber + 1}"><img src="/user_img/next.png" alt=""></a></li>
							<li><a href="/admin/front/board_list?BRDNO=${pictVO.BRDNO}&pageNumber=${pictVO.lastPage}"><img src="/user_img/last.png" alt=""></a></li>
						</c:if>
		            </div>
	            </div>
	        </div>
	    </div>
	</body>
	<form action="" id="register" name="register" method="post" enctype="multipart/form-data">
		<input type='hidden' name="idx" id="idx" value='' />
		
	</form>
	<script>
		function fn_search(){
			$("#search_fm").attr("action", "/admin/front/reservation_list");
			$("#search_fm").submit();
		}
		function board_delete(BRDCTSNO) {
			if (confirm("삭제 하시겠습니까?")) {
				$('#BRDCTSNO').val(BRDCTSNO)
				$("#register").attr("action", "/admin/front/reservation_cng");
				$("#register").submit();
			}
		}
	</script>
</html>