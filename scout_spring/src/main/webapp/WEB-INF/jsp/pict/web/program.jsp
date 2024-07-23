<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<meta charset="ko">
<%@ include file="./include/head.jsp" %>
<body>
	<%@ include file="./include/header.jsp" %>
    <div class="subWrapper">
        <div class="noticeTop">
            <h2>프로그램자료실</h2>
        </div>
        <div class="subContents">
            <div class="noticeWrapper">
	            <form action="" id="search_fm" name="search_fm" method="get">
	                <div class="searchInputBox">
	                    <input type="text" id="search_text" name="search_text" value="${pictVO.search_text}" placeholder="검색어를 입력해주세요.">
	                    <a href="#lnk" onclick="fn_search()"><img src="/user_img/list-sc.png" alt=""></a>
	                </div>
	            </form>
                <ul class="notice">
                	<c:forEach var="board_list" items="${board_list}" varStatus="status">
                		<li>
	                        <a href="/program_view?BRDCTSNO=${board_list.BRDCTSNO}">
	                        	<c:if test="${pictVO.pageNumber eq 1}">
	                        		<p>${board_cnt - status.index}</p>
                        		</c:if>
                        		<c:if test="${pictVO.pageNumber ne 1}">
                        			<p>${board_cnt - (status.index +  ((pictVO.pageNumber - 1) * 20))}</p>
                        		</c:if>
	                        	<span class="title">${board_list.SUBJECT}</span>
                        	</a>
	                        <p>
	                        	<c:if test="${board_list.file1 ne '' && board_list.file1 ne null && board_list.file1 ne undefined}">
	                            	<span><img src="/user_img/file.png" alt="첨부파일"></span>
	                            </c:if>
	                            ${fn:substring(board_list.ENTERDATE,0,11)}
	                        </p>
	                    </li>    
                    </c:forEach>
                </ul>
            </div>
            <div class="pagination">
            	<c:if test="${pictVO.pageNumber ne 1}">
            		<a href="/program?pageNumber=1&search_text=${pictVO.search_text}"><img src="/user_img/first.png" alt=""></a>
            		<a href="/program?pageNumber=${pictVO.pageNumber - 1 < 1 ? 1 : pictVO.pageNumber - 1}&search_text=${pictVO.search_text}"><img src="/user_img/prev.png" alt=""></a>
            	</c:if>
            	
            	
            	<c:forEach var="i" begin="${pictVO.startPage}" end="${pictVO.endPage}">
					<c:if test="${i eq pictVO.pageNumber}">
						<a href="/program?pageNumber=${i}&search_text=${pictVO.search_text}" class="active">${i}</a>
					</c:if>
					<c:if test="${i ne pictVO.pageNumber}">
						<a href="/program?pageNumber=${i}&search_text=${pictVO.search_text}" >${i}</a>
					</c:if>
				</c:forEach>
                
                <c:if test="${pictVO.lastPage ne pictVO.pageNumber}">
					<li><a href="/program?pageNumber=${pictVO.pageNumber + 1 > pictVO.lastPage ?  pictVO.lastPage : pictVO.pageNumber + 1}&search_text=${pictVO.search_text}"><img src="/user_img/next.png" alt=""></a></li>
					<li><a href="/program?pageNumber=${pictVO.lastPage}&search_text=${pictVO.search_text}"><img src="/user_img/last.png" alt=""></a></li>
				</c:if>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
<script>
	function fn_search(){
		$("#search_fm").attr("action", "/program");
		$("#search_fm").submit();
	}
</script>
</html>