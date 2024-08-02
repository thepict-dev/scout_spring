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
        <div class="subTop">
            <h2>${vo.title}</h2>
            <p>${vo.ASSOCIATIONNAME}</p>
        </div>
        <div class="subContents">
        	<img src="${vo.mainimg}" style="width:100%; margin-bottom:30px"/>
            <div class="greetingContainer">
            	<!-- 연맹소개글 -->
               	${vo.introduce}

                <c:if test="${vo.leaderimg ne '' && vo.leaderimg ne null && vo.leaderimg ne undefined}">
                	<span class="feders"><img src="${vo.leaderimg}" alt="연맹장사진"></span>
               	</c:if>
            </div>
			<div class="dummy"></div>
            <c:if test="${vo.leaderimg ne '' && vo.leaderimg ne null && vo.leaderimg ne undefined}">
	            <div class="sign feders" >
					<p>연맹장 ${vo.leadername}</p>
				</div>
			</c:if>
            <ul class="tabNav organNav rules">
                <li><a href="/federation_organ?dataid=${vo.dataid}">조직도</a></li>
                <li><a href="/federation_notice?dataid=${vo.dataid}">공지사항</a></li>
                <li><a href="/federation_files?dataid=${vo.dataid}">자료실</a></li>
                <li class="active"><a href="/federation_event?dataid=${vo.dataid}">행사안내</a></li>
                <li><a href="/federation_location?dataid=${vo.dataid}">오시는길</a></li>
            </ul>
            <!-- 행사안내 -->
            <div class="tabInner ruleContents active">
                <div class="noticeWrapper">
                    <ul class="notice">
                        <c:forEach var="board_list" items="${board_list}" varStatus="status">
	                		<c:if test="${board_list.NOTI eq 'Y'}">
			                    <li>
			                        <a href="/notice_view?BRDCTSNO=${board_list.BRDCTSNO}"><span class="noti">공지</span><span class="title">${board_list.SUBJECT}</span></a>
			                        <p>
			                        	<c:if test="${board_list.file1 ne '' && board_list.file1 ne null && board_list.file1 ne undefined}">
			                            	<span><img src="/user_img/file.png" alt="첨부파일"></span>
			                            </c:if>
			                        	<span>${fn:substring(board_list.ENTERDATE,0,11)}</span>
		                        	</p>
			                    </li>
		                    </c:if>
		                    <c:if test="${board_list.NOTI ne 'Y'}">
		                		<li>
			                        <a href="/notice_view?BRDCTSNO=${board_list.BRDCTSNO}">
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
		                    </c:if>
                    </c:forEach>
                    </ul>
                </div>
                <div class="pagination">
	            	<c:if test="${pictVO.pageNumber ne 1}">
	            		<a href="/federation_event?dataid=${pictVO.dataid}&pageNumber=1&search_text=${pictVO.search_text}"><img src="/user_img/first.png" alt=""></a>
	            		<a href="/federation_event?dataid=${pictVO.dataid}&pageNumber=${pictVO.pageNumber - 1 < 1 ? 1 : pictVO.pageNumber - 1}&search_text=${pictVO.search_text}"><img src="/user_img/prev.png" alt=""></a>
	            	</c:if>
	            	
	            	
	            	<c:forEach var="i" begin="${pictVO.startPage}" end="${pictVO.endPage}">
						<c:if test="${i eq pictVO.pageNumber}">
							<a href="/federation_event?dataid=${pictVO.dataid}&pageNumber=${i}&search_text=${pictVO.search_text}" class="active">${i}</a>
						</c:if>
						<c:if test="${i ne pictVO.pageNumber}">
							<a href="/federation_event?dataid=${pictVO.dataid}&pageNumber=${i}&search_text=${pictVO.search_text}" >${i}</a>
						</c:if>
					</c:forEach>
	                
	                <c:if test="${pictVO.lastPage ne pictVO.pageNumber}">
						<li><a href="/federation_event?dataid=${pictVO.dataid}&pageNumber=${pictVO.pageNumber + 1 > pictVO.lastPage ?  pictVO.lastPage : pictVO.pageNumber + 1}&search_text=${pictVO.search_text}"><img src="/user_img/next.png" alt=""></a></li>
						<li><a href="/federation_event?dataid=${pictVO.dataid}&pageNumber=${pictVO.lastPage}&search_text=${pictVO.search_text}"><img src="/user_img/last.png" alt=""></a></li>
					</c:if>
	            </div>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
	<script>
		document.addEventListener('DOMContentLoaded', function() {
		    var targetDiv = document.querySelector('.dummy');
		    if (targetDiv) {
		        targetDiv.scrollIntoView({ behavior: 'smooth', block: 'start' });
		    }
		});
	</script>
</body>
</html>