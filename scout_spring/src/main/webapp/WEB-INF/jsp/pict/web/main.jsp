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
    <div class="mainWrapper">
        <div class="mainSec1">
            <div class="textsLinks">
                <div class="texts">
                    <span>꿈과 모험이 가득한 축제,</span>
                    <p>스카우트와 함께<br>꿈을 펼쳐라!</p>
                </div>
                <ul class="links">
                    <li><a href="#lnk">지역대검색</a></li>
                    <li><a href="#lnk">임원통합소개</a></li>
                    <li><a href="#lnk">지방 특수연맹</a></li>
                    <li><a href="#lnk">진급기장신청</a></li>
                    <li><a href="#lnk">중앙훈련원</a></li>
                    <li><a href="#lnk">곤지암야영장</a></li>
                    <li><a href="#lnk">단위대관리</a></li>
                    <li><a href="#lnk">스카우트용어집</a></li>
                    <li><a href="#lnk">수품대리점안내</a></li>
                    <li><a href="#lnk">스카우트만의 혜택</a></li>
                </ul>
            </div>
            <div class="cards">
                <a href="#lnk">
                    <img src="" alt="">
                    <div class="cardTop">
                        <p>비버<br>스카우트</p>
                        <span>4~6세까지의 유치원생</span>
                    </div>
                </a>
                <a href="#lnk">
                    <img src="" alt="">
                    <div class="cardTop">
                        <p>컵<br>스카우트</p>
                        <span>6~12세까지의 초등학생</span>
                    </div>
                </a>
                <a href="#lnk">
                    <img src="" alt="">
                    <div class="cardTop">
                        <p>스카우트/<br>벤처스카우트</p>
                        <span>12~18세의 중·고등학생</span>
                    </div>
                </a>
                <a href="#lnk">
                    <img src="" alt="">
                    <div class="cardTop">
                        <p>지도자/<br>평생회원</p>
                        <span>성인 지도자 훈련 이수자</span>
                    </div>
                </a>
            </div>
        </div>
        <div class="mainSec2">
            <a href="#lnk">
                <img src="/user_img/main-banner.png" alt="메인배너">
            </a>
        </div>
        <div class="mainSec3">
            <div class="videoWrapper">
                <video controls>
                    <source src="/user_img/홍보.mp4" type="video/mp4" />
                </video>
                <div class="videoTop">
                    <div class="videoTopInner">
                        <button type="button"><img src="/user_img/play-btn.png" alt="영상재생버튼"></button>
                        <div class="videoTexts">
                            <p>스카우트 처럼</p>
                            <span>2024-06-20</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="mainSec4">
            <div class="mainSubTitle">
                <h2>공지사항</h2>
                <a href="#lnk"><img src="/user_img/arrow-outward.png" alt="링크이동"></a>
            </div>
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
        </div>
        <div class="mainSec4 sec5">
            <div class="mainSubTitle">
                <h2>언론에 비친 스카우트</h2>
                <a href="#lnk"><img src="/user_img/arrow-outward.png" alt="링크이동"></a>
            </div>
            <div class="noticeWrapper">
                <ul class="notice">
                    <li>
                        <a href="#lnk"><p>01</p>언론 제목이 이곳에 들어갑니다</a>
                        <p>2024-01-16</p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>