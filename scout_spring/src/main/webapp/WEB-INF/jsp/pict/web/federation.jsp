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
            <h2>연맹별 공지사항</h2>
        </div>
        <div class="subContents">
            <div class="blockContainer">
                <div class="flexTab store">
                    <ul class="tabNav jamTab store">
                        <li class="active"><span>서울북부</span></li>
                        <li><span>서울남부</span></li>
                        <li><span>부산</span></li>
                        <li><span>대구</span></li>
                        <li><span>인천</span></li>
                        <li><span>광주</span></li>
                        <li><span>대전</span></li>
                        <li><span>울산</span></li>
                        <li><span>경기북부</span></li>
                        <li><span>경기남부</span></li>
                        <li><span>강원</span></li>
                        <li><span>충북</span></li>
                        <li><span>충남</span></li>
                        <li><span>전북</span></li>
                        <li><span>전남</span></li>
                        <li><span>경북</span></li>
                        <li><span>경남</span></li>
                        <li><span>제주</span></li>
                    </ul>
                    <div class="storeContentsWrapper">
                        <div class="tabInner active">
                            <div class="noticeWrapper">
                                <ul class="notice">
                                    <li>
                                        <a href="#lnk"><span>중요</span>공지사항 내용이 이곳에 들어갑니다</a>
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
                        <div class="tabInner">

                        </div>
                        <div class="tabInner">

                        </div>
                        <div class="tabInner">

                        </div>
                        <div class="tabInner">

                        </div>
                        <div class="tabInner">

                        </div>
                        <div class="tabInner">

                        </div>
                        <div class="tabInner">

                        </div>
                        <div class="tabInner">

                        </div>
                        <div class="tabInner">

                        </div>
                        <div class="tabInner">

                        </div>
                        <div class="tabInner">

                        </div>
                        <div class="tabInner">

                        </div>
                        <div class="tabInner">

                        </div>
                        <div class="tabInner">

                        </div>
                        <div class="tabInner">

                        </div>
                        <div class="tabInner">

                        </div>
                        <div class="tabInner">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>