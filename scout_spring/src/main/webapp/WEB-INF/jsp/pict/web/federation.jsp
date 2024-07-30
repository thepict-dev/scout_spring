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
        	<img src="https://scout.thepict.co.kr${vo.mainimg}" style="width:100%; margin-bottom:30px"/>
            <div class="greetingContainer">
            	<!-- 연맹소개글 -->
                ${vo.introduce}
                
                <div class="sign" >
					<p style="float:right; position:relative">연맹장 ${vo.leadername}</p>
				</div>
                <span class="feders"><img src="https://scout.thepict.co.kr${vo.leaderimg}" alt="연맹장사진"></span>
            </div>
            <ul class="tabNav organNav rules">
                <li class="active"><a href="#lnk">조직도</a></li>
                <li><a href="#lnk">공지사항</a></li>
                <li><a href="#lnk">자료실</a></li>
                <li><a href="#lnk">행사안내</a></li>
            </ul>
            <div class="tabInner ruleContents active">
                <ul class="tabNavSub">
                    <li class="active"><a href="#lnk">임원</a></li>
                    <li><a href="#lnk">커미셔너</a></li>
                    <li><a href="#lnk">지방명예회의위원</a></li>
                </ul>
                <!-- 여기서부터 조직도 S  -->
                ${vo.organization}
                <!-- 여기서부터 조직도 S  -->
            </div>
            
            <!-- 공지사항 -->
            <div class="tabInner ruleContents">
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
	            		<a href="/federation?dataid=${pictVO.dataid}&pageNumber=1&search_text=${pictVO.search_text}"><img src="/user_img/first.png" alt=""></a>
	            		<a href="/federation?dataid=${pictVO.dataid}&pageNumber=${pictVO.pageNumber - 1 < 1 ? 1 : pictVO.pageNumber - 1}&search_text=${pictVO.search_text}"><img src="/user_img/prev.png" alt=""></a>
	            	</c:if>
	            	
	            	
	            	<c:forEach var="i" begin="${pictVO.startPage}" end="${pictVO.endPage}">
						<c:if test="${i eq pictVO.pageNumber}">
							<a href="/federation?dataid=${pictVO.dataid}&pageNumber=${i}&search_text=${pictVO.search_text}" class="active">${i}</a>
						</c:if>
						<c:if test="${i ne pictVO.pageNumber}">
							<a href="/federation?dataid=${pictVO.dataid}&pageNumber=${i}&search_text=${pictVO.search_text}" >${i}</a>
						</c:if>
					</c:forEach>
	                
	                <c:if test="${pictVO.lastPage ne pictVO.pageNumber}">
						<li><a href="/federation?dataid=${pictVO.dataid}&pageNumber=${pictVO.pageNumber + 1 > pictVO.lastPage ?  pictVO.lastPage : pictVO.pageNumber + 1}&search_text=${pictVO.search_text}"><img src="/user_img/next.png" alt=""></a></li>
						<li><a href="/federation?dataid=${pictVO.dataid}&pageNumber=${pictVO.lastPage}&search_text=${pictVO.search_text}"><img src="/user_img/last.png" alt=""></a></li>
					</c:if>
	            </div>
            </div>
            <!-- 자료실 -->
            <div class="tabInner ruleContents">
                <div class="noticeWrapper">
                    <ul class="notice">
                        <li>
                            <a href="#lnk"><span class="noti">중요</span>공지사항 내용이 이곳에 들어갑니다</a>
                            <p>2024-01-16</p>
                        </li>
                        <li>
                            <a href="#lnk"><p>01</p>공지사항 내용이 이곳에 들어갑니다</a>
                            <p>
                                <span><img src="/user_img/file.png" alt="첨부파일"></span>
                                2024-01-16
                            </p>
                        </li>
                    </ul>
                </div>
                <div class="pagination">
                    <a href="#lnk"><img src="/user_img/first.png" alt="처음으로"></a>
                    <a href="#lnk"><img src="/user_img/prev.png" alt="이전으로"></a>
                    <a href="#lnk" class="active">1</a>
                    <a href="#lnk">2</a>
                    <a href="#lnk">3</a>
                    <p>...</p>
                    <a href="#lnk">10</a>
                    <a href="#lnk"><img src="/user_img/next.png" alt="다음으로"></a>
                    <a href="#lnk"><img src="/user_img/last.png" alt="처음으로"></a>
                </div>
            </div>
            
            <!-- 행사안내 -->
            <div class="tabInner ruleContents">
                <div class="noticeWrapper">
                    <ul class="notice">
                        <li>
                            <a href="#lnk"><span class="noti">중요</span>공지사항 내용이 이곳에 들어갑니다</a>
                            <p>2024-01-16</p>
                        </li>
                        <li>
                            <a href="#lnk"><p>01</p>공지사항 내용이 이곳에 들어갑니다</a>
                            <p>
                                <span><img src="/user_img/file.png" alt="첨부파일"></span>
                                2024-01-16
                            </p>
                        </li>
                    </ul>
                </div>
                <div class="pagination">
                    <a href="#lnk"><img src="/user_img/first.png" alt="처음으로"></a>
                    <a href="#lnk"><img src="/user_img/prev.png" alt="이전으로"></a>
                    <a href="#lnk" class="active">1</a>
                    <a href="#lnk">2</a>
                    <a href="#lnk">3</a>
                    <p>...</p>
                    <a href="#lnk">10</a>
                    <a href="#lnk"><img src="/user_img/next.png" alt="다음으로"></a>
                    <a href="#lnk"><img src="/user_img/last.png" alt="처음으로"></a>
                </div>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>