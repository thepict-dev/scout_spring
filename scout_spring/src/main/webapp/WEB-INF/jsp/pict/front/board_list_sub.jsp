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
	    	<c:param name="pageTitle" value="지방·특수 게시물관리"/>
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
	                                <option value="787" <c:if test="${pictVO.BRDNO eq '787'}">selected</c:if>>서울북부</option>
	                                <option value="805" <c:if test="${pictVO.BRDNO eq '805'}">selected</c:if>>서울남부</option>
	                                <option value="823" <c:if test="${pictVO.BRDNO eq '823'}">selected</c:if>>부산연맹</option>
	                                <option value="841" <c:if test="${pictVO.BRDNO eq '841'}">selected</c:if>>대구연맹</option>
	                                <option value="859" <c:if test="${pictVO.BRDNO eq '859'}">selected</c:if>>인천연맹</option>
	                                <option value="877" <c:if test="${pictVO.BRDNO eq '877'}">selected</c:if>>광주연맹</option>
	                                <option value="896" <c:if test="${pictVO.BRDNO eq '896'}">selected</c:if>>대전연맹</option>
	                                <option value="913" <c:if test="${pictVO.BRDNO eq '913'}">selected</c:if>>울산연맹</option>
	                                <option value="931" <c:if test="${pictVO.BRDNO eq '931'}">selected</c:if>>경기북부</option>
	                                <option value="967" <c:if test="${pictVO.BRDNO eq '967'}">selected</c:if>>강원연맹</option>
	                                <option value="985" <c:if test="${pictVO.BRDNO eq '985'}">selected</c:if>>충북연맹</option>
	                                <option value="1003" <c:if test="${pictVO.BRDNO eq '1003'}">selected</c:if>>충남세종</option>
	                                <option value="1022" <c:if test="${pictVO.BRDNO eq '1022'}">selected</c:if>>전북연맹</option>
	                                <option value="1039" <c:if test="${pictVO.BRDNO eq '1039'}">selected</c:if>>전남연맹</option>
	                                <option value="1058" <c:if test="${pictVO.BRDNO eq '1058'}">selected</c:if>>경북연맹</option>
	                                <option value="1075" <c:if test="${pictVO.BRDNO eq '1075'}">selected</c:if>>경남연맹</option>
	                                <option value="1093" <c:if test="${pictVO.BRDNO eq '1093'}">selected</c:if>>제주연맹</option>
	                                <option value="1129" <c:if test="${pictVO.BRDNO eq '1129'}">selected</c:if>>원불교연맹</option>
	                                <option value="1572" <c:if test="${pictVO.BRDNO eq '1572'}">selected</c:if>>불교연맹</option>
	                                
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
	                    <li>숨김</li>
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
		                        	<c:if test="${board_list.BRDNO eq '787'}">서울북부</c:if>
									<c:if test="${board_list.BRDNO eq '805'}">서울남부</c:if>
									<c:if test="${board_list.BRDNO eq '823'}">부산연맹</c:if>
									<c:if test="${board_list.BRDNO eq '841'}">대구연맹</c:if>
									<c:if test="${board_list.BRDNO eq '859'}">인천연맹</c:if>
									<c:if test="${board_list.BRDNO eq '877'}">광주연맹</c:if>
									<c:if test="${board_list.BRDNO eq '896'}">대전연맹</c:if>
									<c:if test="${board_list.BRDNO eq '913'}">울산연맹</c:if>
									<c:if test="${board_list.BRDNO eq '931'}">경기북부</c:if>
									<c:if test="${board_list.BRDNO eq '967'}">강원연맹</c:if>
									<c:if test="${board_list.BRDNO eq '985'}">충북연맹</c:if>
									<c:if test="${board_list.BRDNO eq '1003'}">충남세종</c:if>
									<c:if test="${board_list.BRDNO eq '1022'}">전북연맹</c:if>
									<c:if test="${board_list.BRDNO eq '1039'}">전남연맹</c:if>
									<c:if test="${board_list.BRDNO eq '1058'}">경북연맹</c:if>
									<c:if test="${board_list.BRDNO eq '1075'}">경남연맹</c:if>
									<c:if test="${board_list.BRDNO eq '1093'}">제주연맹</c:if>
									<c:if test="${board_list.BRDNO eq '1129'}">원불교연맹</c:if>
									<c:if test="${board_list.BRDNO eq '1572'}">불교연맹</c:if>
		                        </p>
		                        <a href="/admin/front/board_form_sub?BRDCTSNO=${board_list.BRDCTSNO}" class="title">${board_list.SUBJECT}</a>
		                        <p>
		                        	<c:if test="${board_list.register eq '' || board_list.register eq null || board_list.register eq undefined}">관리자</c:if>	
		                        	<c:if test="${board_list.register ne '' && board_list.register ne null && board_list.register ne undefined}">${board_list.register}</c:if>
		                        </p>
		                        <p>${fn:substring(board_list.ENTERDATE,0,11)}</p>
		                        <p><a href="#lnk" onclick="board_delete('${board_list.BRDCTSNO}', 'H')"><img src="/front_img/delete.png" alt="숨김"></a></p>
		                        <p><a href="#lnk" onclick="board_delete('${board_list.BRDCTSNO}', 'N')"><img src="/front_img/delete.png" alt="삭제"></a></p>
		                    </li>
	                    </c:forEach>
	                </ul>
	                <div class="listButton">
	                    <a href="/admin/front/board_form"><img src="/front_img/add.png" alt="등록버튼">등록</a>
	                </div>
	                <div class="pagination">
		            	<c:if test="${pictVO.pageNumber ne 1}">
		            		<a href="/admin/front/board_list_sub?BRDNO=${pictVO.BRDNO}&pageNumber=1"><img src="/user_img/first.png" alt=""></a>
		            		<a href="/admin/front/board_list_sub?BRDNO=${pictVO.BRDNO}&pageNumber=${pictVO.pageNumber - 1 < 1 ? 1 : pictVO.pageNumber - 1}"><img src="/user_img/prev.png" alt=""></a>
		            	</c:if>
		            	
		            	
		            	<c:forEach var="i" begin="${pictVO.startPage}" end="${pictVO.endPage}">
							<c:if test="${i eq pictVO.pageNumber}">
								<a href="/admin/front/board_list_sub?BRDNO=${pictVO.BRDNO}&pageNumber=${i}" class="active">${i}</a>
							</c:if>
							<c:if test="${i ne pictVO.pageNumber}">
								<a href="/admin/front/board_list_sub?BRDNO=${pictVO.BRDNO}&pageNumber=${i}" >${i}</a>
							</c:if>
						</c:forEach>
		                
		                <c:if test="${pictVO.lastPage ne pictVO.pageNumber}">
							<li><a href="/admin/front/board_list_sub?BRDNO=${pictVO.BRDNO}&pageNumber=${pictVO.pageNumber + 1 > pictVO.lastPage ?  pictVO.lastPage : pictVO.pageNumber + 1}"><img src="/user_img/next.png" alt=""></a></li>
							<li><a href="/admin/front/board_list_sub?BRDNO=${pictVO.BRDNO}&pageNumber=${pictVO.lastPage}"><img src="/user_img/last.png" alt=""></a></li>
						</c:if>
		            </div>
	            </div>
	        </div>
	    </div>
	</body>
	<form action="" id="register" name="register" method="post" enctype="multipart/form-data">
		<input type='hidden' name="BRDCTSNO" id="BRDCTSNO" value='' />
		<input type='hidden' name="USEAT" id="USEAT" value='' />
		<input type='hidden' name="type" id="type" value='' />
	</form>
	<script>
		$("#BRDNO").change(function(){
			$("#search_fm").attr("action", "/admin/front/board_list_sub");
			$("#search_fm").submit();
		});
		function fn_search(){
			$("#search_fm").attr("action", "/admin/front/board_list_sub");
			$("#search_fm").submit();
		}
		function board_delete(BRDCTSNO, flag) {
			if (confirm("삭제 하시겠습니까?")) {
				$('#BRDCTSNO').val(BRDCTSNO)
				$('#USEAT').val(flag)
				$("#register").attr("action", "/admin/front/board_delete_sub");
				$("#register").submit();
			}
		}
	</script>
</html>