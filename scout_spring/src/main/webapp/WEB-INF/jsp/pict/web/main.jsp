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
    <div class="mainBanner" data-aos="fade-up">
        <div class="swiper">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <a href="/user_img/2024 스카우트 활동 안전매뉴얼.pdf" target="_blank">
                        <div class="mainBannerText">
                            <p>스카우트 활동 안전 매뉴얼</p>
                            <span>친구들아 ! 안전한 스카우트 활동 하자!</span>
                        </div>
                        <p>이곳을 눌러 확인하기<img src="/user_img/arrow-banner.png" alt=""></p>
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="https://www.education.or.kr/studyjob/GroupCourse.asp?GroupSeq=751&QBCode=" target="_blank">
                        <div class="mainBannerText">
                            <span>스카우트 운동에 동참하는 성인들을 위한</span>
                            <p>지도자 초·중급훈련과정</p>
                            <span>이론과정 개설</span>
                        </div>
                        <p>이곳을 눌러 확인하기<img src="/user_img/arrow-banner.png" alt=""></p>
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="https://docs.google.com/forms/d/1CGcl3DESQ4EiI1ctB5WeDmU-XVq9ByrTCWwpEmjjsoA/edit" target="_blank">
                        <div class="mainBannerText">
                            <p>정기구독 간행물</p>
                            <span>신청하고 싶은 사람 모여라!</span>
                        </div>
                        <p>이곳을 눌러 확인하기<img src="/user_img/arrow-banner.png" alt=""></p>
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="/user_img/Safe from Harm.pdf" target="_blank">
                        <div class="mainBannerText">
                            <p>Safe From Harm</p>
                            <span>사랑하는 대원을 보호하는 스카우트만의 방법</span>
                        </div>
                        <p>이곳을 눌러 확인하기<img src="/user_img/arrow-banner.png" alt=""></p>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="mainWrapper">
        <div class="mainSec1">
            <div class="textsLinks" data-aos="fade-up">
                <div class="texts">
                    <span>꿈과 모험이 가득한 축제,</span>
                    <p>스카우트와 함께<br>꿈을 펼쳐라!</p>
                </div>
                <ul class="links">
                    <li><a href="/notice">공지사항</a></li>
                    <li><a href="/location_local" style="background:#78c992">지방·특수연맹 소식</a></li>
                    <li><a href="https://www.scout.or.kr/notice_view?BRDCTSNO=4065">진급기장신청</a></li>
                    <li><a href="/facility">중앙훈련원</a></li>
                    <li><a href="https://gongiamscout.itpage.kr/" target="_blank" title="새창이동">곤지암야영장</a></li>
                    <li><a href="https://www.scout.or.kr/youthhero">Youth Hero</a></li>
                	<!-- 
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
                    -->
                </ul>
            </div>
            <div class="cards">
                <a href="/scouts" data-aos="fade-up" data-aos-delay="200">
                    <img src="/user_img/bieber.png" alt="">
                    <div class="cardTop">
                        <p>비버<br>스카우트</p>
                        <span>4~6세까지의 유치원생</span>
                    </div>
                </a>
                <a href="/scouts" data-aos="fade-up" data-aos-delay="400">
                    <img src="/user_img/cup.jpeg" alt="">
                    <div class="cardTop">
                        <p>컵<br>스카우트</p>
                        <span>6~12세까지의 초등학생</span>
                    </div>
                </a>
                <a href="/scouts" data-aos="fade-up" data-aos-delay="600">
                    <img src="/user_img/venture.jpeg" alt="">
                    <div class="cardTop">
                        <p>스카우트/<br>벤처스카우트</p>
                        <span>12~18세의 중·고등학생</span>
                    </div>
                </a>
                <a href="/scouts" data-aos="fade-up" data-aos-delay="800">
                    <img src="/user_img/leader2.jpg" alt="">
                    <div class="cardTop">
                        <p>지도자/<br>평생회원</p>
                        <span>성인 지도자 훈련 이수자</span>
                    </div>
                </a>
            </div>
        </div>
        <!-- 
        <div class="mainSec2" data-aos="fade-up" data-aos-delay="800">
	        <div class="swiper">
			  <div class="swiper-wrapper">
			    <div class="swiper-slide">
		            <a href="/user_img/2024 스카우트 활동 안전매뉴얼.pdf" target="_blank">
		                <img src="/user_img/main-banner.png" alt="메인배너">
		            </a>
			    </div>
			    <div class="swiper-slide">
		            <a href="https://www.education.or.kr/studyjob/GroupCourse.asp?GroupSeq=751&QBCode=" target="_blank">
		                <img src="/user_img/지도자훈련.png" alt="메인배너">
		            </a>
			    </div>
			    <div class="swiper-slide">
		            <a href="https://notice.naver.com/notices/form/14352?page=1&pageSize=10&newNoticeHour=168&t=d" target="_blank">
		                <img src="/user_img/정기구독.png" alt="메인배너">
		            </a>
			    </div>
			    <div class="swiper-slide">
		            <a href="/user_img/Safe from Harm.pdf" target="_blank">
		                <img src="/user_img/01_9.png" alt="메인배너">
		            </a>
			    </div>
			  </div>
			</div>
        </div>
          -->
        <div class="mainSec3" data-aos="fade-up" data-aos-delay="200">
            <div class="videoWrapper">
                <video controls playsinline>
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
    </div>
	<%@ include file="./include/footer.jsp" %>
	<c:if test="${totalCnt > 0}">
		<div class="mainPopup">
	        <div class="mainPopupInner">
	            <button type="button" onclick="closePopup()"><img src="/user_img/close-popup.png" alt=""></button>
	            <div class="swiper">
	                <div class="swiper-wrapper">
	                    <c:forEach var="popup_list" items="${popup_list}" varStatus="status">
		                    <div class="swiper-slide">
		                        <a href="${popup_list.linkurl}">
		                            <img src="${popup_list.mainimg}" alt="팝업이미지">
		                        </a>
		                    </div>
	                    </c:forEach>
	                </div>
	            </div>
	            <div class="mainPopupButtons">
	                <button type="button" onclick="todayClosePopup()">오늘 하루 보지 않기</button>
	                <button type="button" onclick="closePopup()">닫기</button>
	            </div>
	            <div class="swiper-pagination"></div>
	        </div>
	    </div>
	</c:if>
	
	<script>
		AOS.init();
		
	    $( document ).ready(function() {
	        var cookiedata = document.cookie;
	        if (cookiedata.indexOf("ncookie=done") < 0) {
	            document.querySelector('.mainPopup').style.display = "flex";
	        }
	        else {
	            document.querySelector('.mainPopup').style.display = "none";    // 팝업창 아이디
	        }
	    });

	    function setCookie( name, value, expiredays ) { 
	        var todayDate = new Date(); 
	        todayDate.setDate( todayDate.getDate() + expiredays );
	        document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
	    }

	    function closePopup() { 
	        document.querySelector('.mainPopup').style.display = "none";    // 팝업창 아이디
	    }

	    function todayClosePopup() { 
	        setCookie( "ncookie", "done" , 1 );     // 저장될 쿠키명 , 쿠키 value값 , 기간( ex. 1은 하루, 7은 일주일)
	        document.querySelector('.mainPopup').style.display = "none";    // 팝업창 아이디
	    }
	</script>
</body>
</html>