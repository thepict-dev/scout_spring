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
	    	<c:param name="pageTitle" value="게시물리스트"/>
	    </c:import>
		    <div class="contentsContainer">
	        <div class="listContainer">
	            <div class="listInner">
	                <form action="" id="search_fm" name="search_fm" method="get" class="countList">
	                    <p>총 <span>${board_cnt}</span>개</p>
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <select name="BRDNO" id="BRDNO" class="lgThinInput">
	                            	<option value="">전체</option>
	                                <option value="56" <c:if test="${pictVO.BRDNO eq '56'}">selected</c:if>>공지사항</option>
	                                <option value="227" <c:if test="${pictVO.BRDNO eq '227'}">selected</c:if>>언론에 비친 SCOUT</option>
	                                <option value="290" <c:if test="${pictVO.BRDNO eq '290'}">selected</c:if>>대운영자료실</option>
	                                <option value="1587" <c:if test="${pictVO.BRDNO eq '1587'}">selected</c:if>>통합자료실</option>
	                                <option value="1827" <c:if test="${pictVO.BRDNO eq '1827'}">selected</c:if>>정보공개</option>
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
	                    <li>카테고리</li>
	                    <li>제목</li>
	                    <li>작성자</li>
	                    <li>등록일</li>
	                    <li>삭제</li>
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
		                        <p>
		                        	<c:if test="${board_list.BRDNO eq '56'}">공지사항</c:if>
		                        	<c:if test="${board_list.BRDNO eq '227'}">언론에 비친 SCOUT</c:if>
		                        	<c:if test="${board_list.BRDNO eq '290'}">대운영자료실</c:if>
		                        	<c:if test="${board_list.BRDNO eq '1587'}">통합자료실</c:if>
		                        	<c:if test="${board_list.BRDNO eq '1827'}">정보공개</c:if>
		                        </p>
		                        <a href="/admin/front/board_form?BRDCTSNO=${board_list.BRDCTSNO}" class="title">${board_list.SUBJECT}</a>
		                        <p>
		                        	<c:if test="${board_list.register eq '' || board_list.register eq null || board_list.register eq undefined}">관리자</c:if>	
		                        	<c:if test="${board_list.register ne '' && board_list.register ne null && board_list.register ne undefined}">${board_list.register}</c:if>
		                        </p>
		                        <p>${fn:substring(board_list.ENTERDATE,0,11)}</p>
		                        <p><a href="#lnk" onclick="board_delete('${board_list.BRDCTSNO}')"><img src="/front_img/delete.png" alt="삭제"></a></p>
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
		<input type='hidden' name="BRDCTSNO" id="BRDCTSNO" value='' />
		<input type='hidden' name="type" id="type" value='' />
	</form>
	<script>
		$("#BRDNO").change(function(){
			$("#search_fm").attr("action", "/admin/front/board_list");
			$("#search_fm").submit();
		});
		function fn_search(){
			$("#search_fm").attr("action", "/admin/front/board_list");
			$("#search_fm").submit();
		}
		function board_delete(BRDCTSNO) {
			if (confirm("삭제 하시겠습니까?")) {
				$('#BRDCTSNO').val(BRDCTSNO)
				$("#register").attr("action", "/admin/front/board_delete");
				$("#register").submit();
			}
		}
	</script>
</html>