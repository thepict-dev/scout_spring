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
            <h2>연혁,사업</h2>
            <p>수카우트는 청소년과 함께<br>새로운 역사를 만들어갑니다.</p>
        </div>
        <div class="subContents">
            <ul class="tabNav organNav rules">
                <li><a href="/history_local">국내 역사</a></li>
                <li class="active"><a href="/history_inter">국제 역사</a></li>
            </ul>
            <!-- 스카우트 구성 -->
            <div class="tabInner historyContents active">
                <h3 class="contentTitle">
                    <p><span class="odometer">2020</span><span>년대</span></p>
                    <span class="contentSubTitle">세계 스카우트 중심으로<br>부상한 한국보이스카우트</span>
                </h3>
                <div class="historyListWrapper">
                    <div class="historyLists">
                        <ul class="histories 2020s" id="2020s">
                            <li>
                                <p>2023</p>
                                <span>2023 제25회 세계스카우트잼버리 개최(전북 새만금)</span>
                            </li>
                            <li>
                                <p>2022</p>
                                <span>2022 아시아태평양지역 스카우트 이사회</span>
                            </li>
                            <li>
                                <p>2022</p>
                                <span>제10차 세계스카우트의원연맹(WSPU) 총회</span>
                            </li>
                            <li>
                                <p>2022</p>
                                <span>한국스카우트운동 100주년</span>
                            </li>
                            <li>
                                <p>2022</p>
                                <span>제5회 최고 임원 회의(5th Chief Scout Executives Meet)</span>
                            </li>
                            <li>
                                <p>2022</p>
                                <span>제27차 아태스카우트총회 및 제10차 아태스카우트유스포럼(가상)</span>
                            </li>
                            <li>
                                <p>2021</p>
                                <span>Scout Academy</span>
                            </li>
                            <li>
                                <p>2021</p>
                                <span>제2회 APR 교육포럼</span>
                            </li>
                            <li>
                                <p>2021</p>
                                <span>2021 JOTA-JOTI(세계아마추어무선-인터넷잼버리)</span>
                            </li>
                            <li>
                                <p>2021</p>
                                <span>제10차 APR Scout Leader Summit(가상)</span>
                            </li>
                            <li>
                                <p>2021</p>
                                <span>제42차 세계스카우트총회 및 제14차 세계스카우트유스포럼(가상)</span>
                            </li>
                            <li>
                                <p>2021</p>
                                <span>2021 세계 청소년 정상회의(Global Youth Summit)</span>
                            </li>
                        </ul>
                        
                        <ul class="histories 2010s" id="2010s">
                            <li>
                                <p>2019</p>
                                <span>제24회 북미 세계스카우트 잼버리(미국)</span>
                            </li>
                            <li>
                                <p>2019</p>
                                <span>제24회 북미 세계스카우트 잼버리 스터디그룹 파견</span>
                            </li>
                            <li>
                                <p>2018</p>
                                <span>제26차 아시아태평양 스카우트 총회</span>
                            </li>
                            <li>
                                <p>2018</p>
                                <span>제9차 세계스카우트의원 총회</span>
                            </li>
                            <li>
                                <p>2017</p>
                                <span>제31회 아시아태평양 잼버리(몽골)</span>
                            </li>
                            <li>
                                <p>2017</p>
                                <span>제41차 세계스카우트 총회</span>
                            </li>
                            <li>
                                <p>2017</p>
                                <span>미국스카우트 잼버리</span>
                            </li>
                            <li>
                                <p>2016</p>
                                <span>105주년 홍콩스카우트 잼버리</span>
                            </li>
                            <li>
                                <p>2015</p>
                                <span>SG50 싱가포르스카우트 잼버리</span>
                            </li>
                            <li>
                                <p>2015</p>
                                <span>제25차 아태 스카우트 총회(대한민국, 광주광역시)</span>
                            </li>
                            <li>
                                <p>2015</p>
                                <span>제23회 세계 스카우트 잼버리(일본)</span>
                            </li>
                            <li>
                                <p>2014</p>
                                <span>제40차 세계총회 및 제12회 세계유스포럼(슬로베니아)</span>
                            </li>
                            <li>
                                <p>2014</p>
                                <span>제8회 아시아태평양 최고 경영자 회의(스리랑카)</span>
                            </li>
                            <li>
                                <p>2013</p>
                                <span>제7차 세계스카우트의원연맹(WSPU) 총회(일본 동경)</span>
                            </li>
                            <li>
                                <p>2013</p>
                                <span>제1차 세계 교육 총회(홍콩)</span>
                            </li>
                            <li>
                                <p>2013</p>
                                <span>제30회 아시아태평양 잼버리(일본)</span>
                            </li>
                            <li>
                                <p>2012</p>
                                <span>제24차 아태 스카우트 총회(방글라데시)</span>
                            </li>
                            <li>
                                <p>2012</p>
                                <span>제29회 아태 잼버리(스리랑카)</span>
                            </li>
                            <li>
                                <p>2011</p>
                                <span>제28회 아태 잼버리 겸 대만 100주년 잼버리(대만)</span>
                            </li>
                            <li>
                                <p>2011</p>
                                <span>제39차 세계총회 및 제11회 세계유스포럼(브라질)</span>
                            </li>
                            <li>
                                <p>2011</p>
                                <span>제22회 세계 스카우트 잼버리(스웨덴)</span>
                            </li>
                        </ul>
                        
                        <ul class="histories 2000s" id="2000s">
                            <li>
                                <p>2009</p>
                                <span>제26회 아태 잼버리(필리핀)</span>
                            </li>
                            <li>
                                <p>2009</p>
                                <span>제23차 아태 스카우트 총회 및 제6차 아태 유스포럼(말레이지아)</span>
                            </li>
                            <li>
                                <p>2008</p>
                                <span>세계 대학생 문화대축제(전남 순천시 청소년 수련소)</span>
                            </li>
                            <li>
                                <p>2008</p>
                                <span>제55회 세계스카우트지원재단회의(서울)</span>
                            </li>
                            <li>
                                <p>2008</p>
                                <span>제38차 세계총회 및 제10차 세계유스포럼 (제주ICC, 원광대)</span>
                            </li>
                            <li>
                                <p>2007</p>
                                <span>100주년 기념 제21회 세계잼버리 (영국)</span>
                            </li>
                            <li>
                                <p>2005</p>
                                <span>제37차 세계총회 (튀니지)</span>
                            </li>
                            <li>
                                <p>2003</p>
                                <span>제12회 월드무트 (타이완)</span>
                            </li>
                            <li>
                                <p>2002</p>
                                <span>제23회 아태/13회 일본잼버리 (장소:일본오사카마이시마)</span>
                            </li>
                            <li>
                                <p>2001</p>
                                <span>제20차 아-태총회 (인도)</span>
                            </li>
                            <li>
                                <p>2000</p>
                                <span>제11회 세계 로버 무트( 멕시코 )</span>
                            </li>
                        </ul>
                        
                        <ul class="histories 1990s" id="1990s">
                            <li>
                                <p>1999</p>
                                <span>제 35 차 세계총회 (남아프리카공화국)</span>
                            </li>
                            <li>
                                <p>1998</p>
                                <span>제 19 차 아-태 총회 (홍콩)</span>
                            </li>
                            <li>
                                <p>1996</p>
                                <span>제 34 차 세계총회 (노르웨이), 제 17 회 아태잼버리 개최 (한국)</span>
                            </li>
                            <li>
                                <p>1994</p>
                                <span>세계스카우트의원연맹 제 1 차 총회 (칠레)</span>
                            </li>
                            <li>
                                <p>1991</p>
                                <span>제 17 회 세계잼버리 개최 (한국), 세계스카우트의원연맹 창설 총회 (한국)</span>
                            </li>
                        </ul>
                        
                        <ul class="histories 1980s" id="1980s">
                            <li>
                                <p>1984</p>
                                <span>세계연맹 국제 로터리클럽 국제 이해상 수상</span>
                            </li>
                            <li>
                                <p>1959</p>
                                <span>극동지역 사무국 설립 (회원국 10개국)</span>
                            </li>
                            <li>
                                <p>1924</p>
                                <span>제 3 차 세계총회, 코펜하겐 선언문 결의</span>
                            </li>
                            <li>
                                <p>1920</p>
                                <span>제 1 회 세계잼버리 개최 (영국, 올림피아), 베이든 포우엘경 세계 치이프 스카우트 초대</span>
                            </li>
                            <li>
                                <p>1919</p>
                                <span>제 1 회 지도자 훈련 상급과정 훈련실시(길웰 훈련소)</span>
                            </li>
                            <li>
                                <p>1907</p>
                                <span>보이스카우트 발족</span>
                            </li>
                        </ul>
                    </div>
                    <div class="historyNav">
                        <a href="#2020s" class="active"><span></span><span>2020년대</span></a>
                        <a href="#2010s"><span></span><span>2010년대</span></a>
                        <a href="#2000s"><span></span><span>2000년대</span></a>
                        <a href="#1990s"><span></span><span>1990년대</span></a>
                        <a href="#1980s"><span></span><span>1980년대</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>  
    	window.odometerOptions = {
            format: ''  // 쉼표 형식을 제거하는 옵션
        };
        $(document).ready(function () {
            $(document).on("scroll", onScroll);

            // Smooth scroll and update active link
            $('a[href^="#"]').on('click', function (e) {
                e.preventDefault();
                $(document).off("scroll");

                $('a').each(function () {
                    $(this).removeClass('active');
                })
                $(this).addClass('active');

                var target = this.hash;
                $target = $(target);
                $('html, body').stop().animate({
                    'scrollTop': $target.offset().top + 2
                }, 500, 'swing', function () {
                    window.location.hash = target;
                    $(document).on("scroll", onScroll);
                });
            });

            // Update odometer value on scroll
            function onScroll(event) {
                var scrollPos = $(document).scrollTop();
                $('.historyNav a').each(function () {
                    var currLink = $(this);
                    var refElement = $(currLink.attr("href"));
                    if (refElement.position().top <= scrollPos && refElement.position().top + refElement.height() > scrollPos) {
                        $('.historyNav a').removeClass("active");
                        currLink.addClass("active");

                        // Update odometer value
                        var newYear = currLink.attr("href").substring(1, 5);
                        $('.odometer').html(newYear);
                    }
                    else {
                        currLink.removeClass("active");
                    }
                });
            }
        });
    </script>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>