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
            <p>스카우트는 청소년과 함께<br>새로운 역사를 만들어갑니다.</p>
        </div>
        <div class="subContents">
            <ul class="tabNav organNav rules">
                <li class="active"><a href="/history_local">국내 역사</a></li>
                <li><a href="/history_inter">국제 역사</a></li>
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
                                <p>2024. 02. 22.</p>
                                <span>제17대 이찬희 총재 취임</span>
                            </li>
                            <li>
                                <p>2023. 08. 01.</p>
                                <span>2023 제25회 세계스카우트잼버리 개최(전북 새만금)</span>
                            </li>
                            <li>
                                <p>2023. 03. 29.</p>
                                <span>윤석열 대통령 명예총재 추대</span>
                            </li>
                            <li>
                                <p>2022. 12. 03.</p>
                                <span>제2회 중앙커미셔너회 & 지방치프커미셔너 연석회의</span>
                            </li>
                            <li>
                                <p>2022. 10. 28.</p>
                                <span>2022년 전국훈육지도자회의(온라인)</span>
                            </li>
                            <li>
                                <p>2022. 10. 14.</p>
                                <span>2022 JOTA-JOTI</span>
                            </li>
                            <li>
                                <p>2022. 10. 05.</p>
                                <span>한국스카우트운동 100주년 창립기념식 「스카우트 100년의 길」 준공(중앙훈련원)</span>
                            </li>
                            <li>
                                <p>2022. 10. 01.</p>
                                <span>2022년 세계디지털야영대회</span>
                            </li>
                            <li>
                                <p>2022. 08. 28.</p>
                                <span>쓰담해영, 플로깅 캠페인</span>
                            </li>
                            <li>
                                <p>2022. 08. 20.</p>
                                <span>제15회 스카우트 기자스쿨</span>
                            </li>
                            <li>
                                <p>2022. 08. 07.</p>
                                <span>제15회 한국잼버리 서브캠프(분산개최)</span>
                            </li>
                            <li>
                                <p>2022. 07. 23.</p>
                                <span>육군 스카우트 대잔치</span>
                            </li>
                            <li>
                                <p>2022. 06. 11.</p>
                                <span>제1회 중앙커미셔너 & 치프커미셔너 연석회의</span>
                            </li>
                            <li>
                                <p>2022. 05. 26.</p>
                                <span>제18회 대한민국청소년박람회 우수운영단체 선정</span>
                            </li>
                            <li>
                                <p>2022.</p>
                                <span>패밀리 스카우팅 서포터즈 프로젝트 운영</span>
                            </li>
                            <li>
                                <p>2021. 12. 06.</p>
                                <span>육군 자녀 교육지원 확대를 위한 업무협약(대한민국 육군)</span>
                            </li>
                            <li>
                                <p>2021. 11. 27.</p>
                                <span>제2회 중앙커미셔너회 & 지방치프커미셔너 연석회의</span>
                            </li>
                            <li>
                                <p>2021. 11. 27.</p>
                                <span>청벤져스(캠핑안전지도자 3급) 개최</span>
                            </li>
                            <li>
                                <p>2021. 11. 22.</p>
                                <span>제15회 Youth Hero상 시상식</span>
                            </li>
                            <li>
                                <p>2021. 10. 15.</p>
                                <span>2021년 전국훈육지도자회의(온라인)</span>
                            </li>
                            <li>
                                <p>2021. 09. 01.</p>
                                <span>2021년 어린이 농촌체험단 운영</span>
                            </li>
                            <li>
                                <p>2021. 08. 28.</p>
                                <span>제14회 스카우트 기자스쿨</span>
                            </li>
                            <li>
                                <p>2021. 06. 16.</p>
                                <span>100주년 특별사업 추진위원회(3기) 구성</span>
                            </li>
                            <li>
                                <p>2021. 05. 29.</p>
                                <span>제1회 중앙커미셔너회 & 지방치프커미셔너 연석회의</span>
                            </li>
                            <li>
                                <p>2020. 12. 14.</p>
                                <span>100주년 엠블럼 확정</span>
                            </li>
                            <li>
                                <p>2020. 11. 28.</p>
                                <span>제2회 중앙커미셔너회 & 지방치프커미셔너 연석회의</span>
                            </li>
                            <li>
                                <p>2020. 11. 26.</p>
                                <span>제14회 Youth Hero상 시상식</span>
                            </li>
                            <li>
                                <p>2020. 10. 31.</p>
                                <span>제13회 스카우트 기자스쿨</span>
                            </li>
                            <li>
                                <p>2020. 10. 30.</p>
                                <span>2020년 전국훈육지도자회의(온라인)</span>
                            </li>
                            <li>
                                <p>2020. 10. 15.</p>
                                <span>2020년 세계디지털야영대회</span>
                            </li>
                            <li>
                                <p>2020. 10. 07.</p>
                                <span>도티 홍보대사 위촉식</span>
                            </li>
                            <li>
                                <p>2020. 09. 01.</p>
                                <span>2020년 어린이 농촌체험단 운영</span>
                            </li>
                            <li>
                                <p>2020. 07. 01.</p>
                                <span>스카우트 온라인 대집회 콘텐츠 개발 / 보급(총 52종)</span>
                            </li>
                            <li>
                                <p>2020. 05. 28.</p>
                                <span>명예임원(고문) 추대 - 문희상, 강창희, 문용린</span>
                            </li>
                            <li>
                                <p>2020. 05. 23.</p>
                                <span>제1회 중앙커미셔너회 & 지방치프커미셔너 연석회의</span>
                            </li>
                            <li>
                                <p>2020. 03. 14.</p>
                                <span>제 16대 강태선 총재 취임</span>
                            </li>
                            <li>
                                <p>2020. 01. 11.</p>
                                <span>한일스카우트친선교류 프로그램</span>
                            </li>
                        </ul>
                        
                        <ul class="histories 2010s" id="2010s">
                            <li>
                                <p>2019. 11. 09.</p>
                                <span>전국 훈육지도자회의(전북 전주)</span>
                            </li>
                            <li>
                                <p>2019. 11. 01.</p>
                                <span>제13회 Youth Hero Prize(자랑스런 청소년대상 시상식)</span>
                            </li>
                            <li>
                                <p>2019. 10. 05.</p>
                                <span>세계스카우트잼버리 페스티벌(용인 에버랜드)</span>
                            </li>
                            <li>
                                <p>2019. 07. 31.</p>
                                <span>제25회 평화통일 체험활동</span>
                            </li>
                            <li>
                                <p>2019. 07. 01.</p>
                                <span>한중 청소년교류</span>
                            </li>
                            <li>
                                <p>2019. 02. 15.</p>
                                <span>스카우트 기자스쿨</span>
                            </li>
                            <li>
                                <p>2019. 01. 12.</p>
                                <span>홍보대사 위촉(에이비식스-AB6IX)</span>
                            </li>
                            <li>
                                <p>2019. 01. 12.</p>
                                <span>한일스카우트친선교류 프로그램</span>
                            </li>
                            <li>
                                <p>2018. 11. 10.</p>
                                <span>전국 훈육지도자회의(전북 전주)</span>
                            </li>
                            <li>
                                <p>2018. 11. 01.</p>
                                <span>제12회 Youth Hero Prize(자랑스런 청소년대상 시상식)</span>
                            </li>
                            <li>
                                <p>2018. 08. 02.</p>
                                <span>제5회 국제패트롤 잼버리(강원도 세계잼버리 수련장)</span>
                            </li>
                            <li>
                                <p>2018. 08. 01.</p>
                                <span>CJK 벤처스카우트 프로젝트(대만)</span>
                            </li>
                            <li>
                                <p>2018. 07. 30.</p>
                                <span>제24회 평화통일 체험활동</span>
                            </li>
                            <li>
                                <p>2018. 03. 24.</p>
                                <span>전국 대장포럼(인바다)</span>
                            </li>
                            <li>
                                <p>2018. 02. 23.</p>
                                <span>스카우트 청소년 모의 국회</span>
                            </li>
                            <li>
                                <p>2018. 01. 06.</p>
                                <span>한일 스카우트 친선교류 프로그램</span>
                            </li>
                            <li>
                                <p>2017. 11. 09.</p>
                                <span>제5회 대한민국 인성교육대상 수상</span>
                            </li>
                            <li>
                                <p>2017. 11. 01.</p>
                                <span>제11회 Youth Hero Prize(자랑스런 청소년대상 시상식)</span>
                            </li>
                            <li>
                                <p>2017. 08. 16.</p>
                                <span>2023년 제25회 세계스카우트잼버리 유치 성공(전북 새만금)</span>
                            </li>
                            <li>
                                <p>2017. 07. 31.</p>
                                <span>제23회 평화통일 체험활동</span>
                            </li>
                            <li>
                                <p>2017. 07. 13.</p>
                                <span>2017 청소년 및 가정의 달 기념 "대통령 표창" 수상</span>
                            </li>
                            <li>
                                <p>2017. 03. 24.</p>
                                <span>스카우트 청소년 모의국회</span>
                            </li>
                            <li>
                                <p>2017. 01. 06.</p>
                                <span>한일친선교류 프로그램</span>
                            </li>
                            <li>
                                <p>2017. 01. 01.</p>
                                <span>고양시 토당청소년수련관 위탁 운영</span>
                            </li>
                            <li>
                                <p>2016. 11. 12.</p>
                                <span>전국 훈육지도자회의(전북 부안)</span>
                            </li>
                            <li>
                                <p>2016. 11. 03.</p>
                                <span>제10회 Youth Hero Prize(자랑스런 청소년대상 시상식)</span>
                            </li>
                            <li>
                                <p>2016. 08. 08.</p>
                                <span>CJK 벤처프로젝트(일본)</span>
                            </li>
                            <li>
                                <p>2016. 08. 03.</p>
                                <span>제14회 한국잼버리 개최(대구광역시 달성군)</span>
                            </li>
                            <li>
                                <p>2016. 07. 25.</p>
                                <span>제22회 평화통일 체험활동</span>
                            </li>
                            <li>
                                <p>2016. 05. 07.</p>
                                <span>제20회 전국오리에티어링대회(전남 여수시)</span>
                            </li>
                            <li>
                                <p>2016. 02. 13.</p>
                                <span>CJK 로버프로젝트(방글라데시)</span>
                            </li>
                            <li>
                                <p>2016. 01. 17.</p>
                                <span>유스필란트로피 라오스 봉사활동</span>
                            </li>
                            <li>
                                <p>2016. 01. 06.</p>
                                <span>한일친선교류 프로그램</span>
                            </li>
                            <li>
                                <p>2016. 01. 01.</p>
                                <span>온라인 지도자 양성 시스템 도입 및 운영</span>
                            </li>
                            <li>
                                <p>2015. 11. 30.</p>
                                <span>네팔 대지진 성금 모금 및 전달</span>
                            </li>
                            <li>
                                <p>2015. 11. 03.</p>
                                <span>제25차 아시아 태평양 스카우트 총회 개최(전라남도 광주시)</span>
                            </li>
                            <li>
                                <p>2015. 10. 13.</p>
                                <span>제9회 Youth Hero Prize(자랑스런 청소년대상 시상식)</span>
                            </li>
                            <li>
                                <p>2015. 09. 10.</p>
                                <span>한중 청소년 특별교류</span>
                            </li>
                            <li>
                                <p>2015. 07. 27.</p>
                                <span>제21회 평화통일 체험활동</span>
                            </li>
                            <li>
                                <p>2015. 07. 25.</p>
                                <span>제4회 쿠두잼버렛 개최</span>
                            </li>
                            <li>
                                <p>2014. 12. 01.</p>
                                <span>2014년 국가인증 수련활동 우수기관 선정(2년 연속 선정)</span>
                            </li>
                            <li>
                                <p>2014. 07. 27.</p>
                                <span>제13회 한일유프포럼(강원도 강릉)</span>
                            </li>
                            <li>
                                <p>2014. 01. 08.</p>
                                <span>제15차 한일친선교류프로그램</span>
                            </li>
                            <li>
                                <p>2013. 12. 20.</p>
                                <span>2013년 국가인증 수련활동 우수기관 선정</span>
                            </li>
                            <li>
                                <p>2013. 08. 13.</p>
                                <span>제12회 한일유스포럼(서울)</span>
                            </li>
                            <li>
                                <p>2013. 07. 29.</p>
                                <span>제19회 평화통일 체험활동</span>
                            </li>
                            <li>
                                <p>2013. 07. 28.</p>
                                <span>제3회 쿠두잼버렛 & 남도연합캠퍼리 개최</span>
                            </li>
                            <li>
                                <p>2013. 01. 08.</p>
                                <span>제14차 한일친선교류프로그램</span>
                            </li>
                            <li>
                                <p>2012. 12. 10.</p>
                                <span>창립 90주년 기념 한국 독립운동과 소년운동 학술 심포지엄(국회도서관)</span>
                            </li>
                            <li>
                                <p>2012. 10. 22.</p>
                                <span>제6회 Youth Hero Prize 시상식(한국프레스센터)</span>
                            </li>
                            <li>
                                <p>2012. 10. 18.</p>
                                <span>창립 90주년 기념 조선소년군?소년척후단 창설 90주년 기념 기증자료 특별전(독립기념관)</span>
                            </li>
                            <li>
                                <p>2012. 10. 05.</p>
                                <span>한국스카우트연맹 창립 90주년</span>
                            </li>
                            <li>
                                <p>2012. 08. 07.</p>
                                <span>CJK 벤처스카우트 협력 프로그램(강원도 강릉)</span>
                            </li>
                            <li>
                                <p>2012. 08. 02.</p>
                                <span>제13회 한국잼버리(강원도 세계잼버리 수련장)</span>
                            </li>
                            <li>
                                <p>2012. 08. 01.</p>
                                <span>제4차 세계스카우트 종교 심포지엄(전북 익산시)</span>
                            </li>
                            <li>
                                <p>2012. 07. 27.</p>
                                <span>제18회 평화통일체험활동</span>
                            </li>
                            <li>
                                <p>2012. 06. 02.</p>
                                <span>청소년 학교폭력예방 캠페인 출범식(의정부)</span>
                            </li>
                            <li>
                                <p>2012. 05. 17.</p>
                                <span>학교폭력 예방 및 근절을 위한 업무협약(교육과학기술부, 한국방송공사)</span>
                            </li>
                            <li>
                                <p>2012. 02. 26.</p>
                                <span>제15대 함종한 총재 취임</span>
                            </li>
                            <li>
                                <p>2012. 02. 24.</p>
                                <span>2012년도 전국 리더스 게더링(KSLG 2012)</span>
                            </li>
                            <li>
                                <p>2012. 01. 08.</p>
                                <span>한일 90주년 기념식 및 M.O.U. 체결식</span>
                            </li>
                            <li>
                                <p>2011. 10. 24.</p>
                                <span>제5회 Youth Hero Prize 시상식(국립중앙박물관)</span>
                            </li>
                            <li>
                                <p>2011. 10. 14.</p>
                                <span>아태 기금마련 워크숍(서울 올림픽 파크텔)</span>
                            </li>
                            <li>
                                <p>2011. 08. 01.</p>
                                <span>제17회 평화통일체험활동</span>
                            </li>
                            <li>
                                <p>2011. 07. 21.</p>
                                <span>제2회 쿠두 잼버렛(경북 상주시)</span>
                            </li>
                            <li>
                                <p>2011. 02. 25.</p>
                                <span>2011년도 전국 리더스 게더링(인천 하버파크 호텔)</span>
                            </li>
                            <li>
                                <p>2010. 11. 01.</p>
                                <span>제6차 세계스카우트의원연맹 총회(서울교육문화회관)</span>
                            </li>
                            <li>
                                <p>2010. 10. 30.</p>
                                <span>아태 이사회(서울교육문화회관)</span>
                            </li>
                            <li>
                                <p>2010. 10. 05.</p>
                                <span>제4회 Youth Hero Prize 시상식(문호아트홀)</span>
                            </li>
                            <li>
                                <p>2010. 08. 04.</p>
                                <span>제27회 아태 잼버리 겸 제3회 국제 패트롤 잼버리(전남 순천시)</span>
                            </li>
                            <li>
                                <p>2010. 07. 28.</p>
                                <span>제16회 평화통일 체험활동(휴전선 155마일 횡단)</span>
                            </li>
                            <li>
                                <p>2010. 06. 05.</p>
                                <span>세계스카우트센터 한국의 방 개방식</span>
                            </li>
                            <li>
                                <p>2010. 03. 10.</p>
                                <span>아태 경영평가단 방문(Committee NSO Visit)</span>
                            </li>
                            <li>
                                <p>2010. 02. 22.</p>
                                <span>2010년 정기 전국총회(중앙훈련원)</span>
                            </li>
                            <li>
                                <p>2010. 02. 22.</p>
                                <span>스카우트, 벤처스카우트 핸드북 개정 발간</span>
                            </li>
                        </ul>
                        
                        <ul class="histories 2000s" id="2000s">
                            <li>
                                <p>2009. 11. 16.</p>
                                <span>제3회 Youth Hero Prize 시상식(목동 방송회관)</span>
                            </li>
                            <li>
                                <p>2009. 11. 13.</p>
                                <span>임시 전국총회 - 대원등록제도 변경(연차등록)</span>
                            </li>
                            <li>
                                <p>2009. 08. 07.</p>
                                <span>제15회 평화통일 체험활동</span>
                            </li>
                            <li>
                                <p>2009. 07. 30.</p>
                                <span>제1회 전국지역대 야영대회(KUDU Jamborette 2009)</span>
                            </li>
                            <li>
                                <p>2009. 02. 26.</p>
                                <span>2009년 정기 전국총회 개최(사학연금회관)</span>
                            </li>
                            <li>
                                <p>2008. 10. 13.</p>
                                <span>유스히어로 시상식(프레스 센터)</span>
                            </li>
                            <li>
                                <p>2008. 08. 06.</p>
                                <span>국제청소년야영대회 & 제12회 한국잼버리</span>
                            </li>
                            <li>
                                <p>2008. 07. 14.</p>
                                <span>제38차 세계총회(ICC제주)</span>
                            </li>
                            <li>
                                <p>2008. 07. 10.</p>
                                <span>세계 대학생 문화대축제(전남 순천시 청소년 수련소)</span>
                            </li>
                            <li>
                                <p>2008. 07. 07.</p>
                                <span>제10차 세계유스포럼(원광대)</span>
                            </li>
                            <li>
                                <p>2008. 04. 03.</p>
                                <span>제55회 세계스카우트지원재단회의(서울)</span>
                            </li>
                            <li>
                                <p>2008. 03. 06.</p>
                                <span>제14대 강영중 총재 취임</span>
                            </li>
                            <li>
                                <p>2007. 10. 26.</p>
                                <span>유스히어로 시상식(프레스 센터)</span>
                            </li>
                            <li>
                                <p>2007. 07. 27.</p>
                                <span>제21회 세계잼버리 파견(500명)</span>
                            </li>
                            <li>
                                <p>2007. 07. 09.</p>
                                <span>제14회 로버무트(순천시 청소년수련소)</span>
                            </li>
                            <li>
                                <p>2007. 07. 09.</p>
                                <span>제13회 평화통일체험활동(휴전선 155마일)</span>
                            </li>
                            <li>
                                <p>2006. 08. 09.</p>
                                <span>국제패트롤잼버리(순천시 청소년수련소)</span>
                            </li>
                            <li>
                                <p>2005. 07. 28.</p>
                                <span>제11회 평화통일체험활동(휴전선155마일)</span>
                            </li>
                            <li>
                                <p>2005. 07. 12.</p>
                                <span>제13회 금강산 로버무트(금강산 300명)</span>
                            </li>
                            <li>
                                <p>2005. 02. 21.</p>
                                <span>전국 대장포럼</span>
                            </li>
                            <li>
                                <p>2004. 08. 05.</p>
                                <span>제24회 아태잼버리, 제11회 한국잼버리(세계잼버리수련장)</span>
                            </li>
                            <li>
                                <p>2004. 08. 01.</p>
                                <span>제4회 한일유스포럼(세계잼버리장)</span>
                            </li>
                            <li>
                                <p>2004. 06. 04.</p>
                                <span>제20회 아구노리 대회(경남 양산 해운청소년수련원)</span>
                            </li>
                            <li>
                                <p>2004. 04. 17.</p>
                                <span>전국훈육지도자대회(중앙훈련원)</span>
                            </li>
                            <li>
                                <p>2004. 01. 05.</p>
                                <span>중앙훈련원 리모델링 준공식</span>
                            </li>
                            <li>
                                <p>2003. 07. 01.</p>
                                <span>제1회 스카우트 발전창안제</span>
                            </li>
                            <li>
                                <p>2002. 12. 17.</p>
                                <span>제20회 세계잼버리 참가</span>
                            </li>
                            <li>
                                <p>2002. 12. 16.</p>
                                <span>사진으로 보는 스카우트 80년 발간</span>
                            </li>
                            <li>
                                <p>2002. 12. 12.</p>
                                <span>VISION 2013 수립</span>
                            </li>
                            <li>
                                <p>2002. 12. 04.</p>
                                <span>제13회 국제청소년광장(동양인재개발원)</span>
                            </li>
                            <li>
                                <p>2002. 08. 09.</p>
                                <span>제8회 평화통일체험활동(휴전선 155마일)</span>
                            </li>
                            <li>
                                <p>2002. 07. 24.</p>
                                <span>국제 청소년 야영대회 개최</span>
                            </li>
                            <li>
                                <p>2002. 07. 20.</p>
                                <span>창립80주년 기념우표집 발행</span>
                            </li>
                            <li>
                                <p>2002. 05. 29.</p>
                                <span>세계평화아동축제 개최(49개국 245명)</span>
                            </li>
                            <li>
                                <p>2001. 12. 29.</p>
                                <span>연맹 명칭 변경 승인(한국스카우트연맹)</span>
                            </li>
                            <li>
                                <p>2001. 11. 10.</p>
                                <span>한국디지털대학 스카우트학과 설치</span>
                            </li>
                            <li>
                                <p>2001. 06. 01.</p>
                                <span>제17회 아구노리대회 개최</span>
                            </li>
                            <li>
                                <p>2001. 03. 30.</p>
                                <span>컵스카우트(다람쥐) 발간</span>
                            </li>
                            <li>
                                <p>2000. 08. 07.</p>
                                <span>제21회 아·태 잼버리 개최(44개국 16,700명)</span>
                            </li>
                        </ul>
                        
                        <ul class="histories 1990s" id="1990s">
                            <li>
                                <p>1999. 08.</p>
                                <span>제1차 한·일 청소년 교류 프로그램</span>
                            </li>
                            <li>
                                <p>1998. 04. 24.</p>
                                <span>한국보이스카우트연맹 회관 준공</span>
                            </li>
                            <li>
                                <p>1996. 11.</p>
                                <span>제주 금석야영장 준공</span>
                            </li>
                            <li>
                                <p>1996. 08.</p>
                                <span>제17회 아·태잼버리 개최(강원, 고성)</span>
                            </li>
                            <li>
                                <p>1996. 03.</p>
                                <span>스카우트 평생회원 제도 실시</span>
                            </li>
                            <li>
                                <p>1994. 08.</p>
                                <span>제9회 한국 잼버리 개최(강원, 고성)</span>
                            </li>
                            <li>
                                <p>1993. 03.</p>
                                <span>중앙훈련소를 훈련원으로 승격 개원</span>
                            </li>
                            <li>
                                <p>1991. 08.</p>
                                <span>제17회 세계 잼버리 개최(강원, 고성)</span>
                            </li>
                            <li>
                                <p>1991. 08.</p>
                                <span>세계스카우트 의원연맹 창설, 김종호 의원 초대 총재로 선출</span>
                            </li>
                            <li>
                                <p>1990. 08.</p>
                                <span>제8회 한국 잼버리 개최(강원, 고성)</span>
                            </li>
                        </ul>
                        
                        <ul class="histories 1980s" id="1980s">
                            <li>
                                <p>1986. 07.</p>
                                <span>제7회 한국 잼버리 개최(경주, 도투락)</span>
                            </li>
                            <li>
                                <p>1985. 07.</p>
                                <span>"85 스카우트 국제야영대회 개최, 걸스카우트와 공동개최(덕유대)</span>
                            </li>
                            <li>
                                <p>1985. 05.</p>
                                <span>제1회 아구노리 개최(경기, 서삼릉)</span>
                            </li>
                            <li>
                                <p>1983. 11. 19.</p>
                                <span>재단법인 한국 보이스카우트 지원재단 설립</span>
                            </li>
                            <li>
                                <p>1983. 10. 13.</p>
                                <span>국회 스카우트 의원 연맹 창설</span>
                            </li>
                            <li>
                                <p>1982. 08.</p>
                                <span>제6회 한국 잼버리 겸 제8회 아·태 잼버리 개최(전북, 무주)</span>
                            </li>
                        </ul>
                        
                        <ul class="histories 1970s" id="1970s">
                            <li>
                                <p>1978. 08. 18.</p>
                                <span>제26차 세계총회에서 박정희 대통령을 세계 명예총재로 추대</span>
                            </li>
                            <li>
                                <p>1978. 08.</p>
                                <span>제5회 한국 잼버리 개최 (전북, 무주)</span>
                            </li>
                            <li>
                                <p>1975. 08.</p>
                                <span>제25회 세계총회에서 세계 연맹 최우수 성공 사례국으로 선정</span>
                            </li>
                            <li>
                                <p>1975. 03.</p>
                                <span>지도자용 계간지 "스카우팅" 창간</span>
                            </li>
                            <li>
                                <p>1972. 10.</p>
                                <span>중앙본부 회관 준공</span>
                            </li>
                            <li>
                                <p>1972. 08.</p>
                                <span>제4회 한국 잼버리 개최(경기, 서삼릉)</span>
                            </li>
                        </ul>
                        
                        <ul class="histories 1960s" id="1960s">
                            <li>
                                <p>1969. 07. 28.</p>
                                <span>스카우트 육성에 관한 법률 제정 공포</span>
                            </li>
                            <li>
                                <p>1968. 08.</p>
                                <span>중앙훈련소 준공</span>
                            </li>
                            <li>
                                <p>1968. 08.</p>
                                <span>사단법인 '한국보이스카우트연맹'으로 개명</span>
                            </li>
                            <li>
                                <p>1968. 04.</p>
                                <span>사단법인 한국보이스카우트연맹으로 개칭</span>
                            </li>
                            <li>
                                <p>1967. 08.</p>
                                <span>제3회 한국 잼버리 개최(서울, 태릉)</span>
                            </li>
                            <li>
                                <p>1966. 02.</p>
                                <span>대한소년단을 '보이스카우트 한국연맹'으로 개명</span>
                            </li>
                            <li>
                                <p>1965. 01.</p>
                                <span>제1회 우드배지 훈련 실시</span>
                            </li>
                            <li>
                                <p>1962. 08.</p>
                                <span>제2회 한국 잼버리 개최(서울, 경희대)</span>
                            </li>
                        </ul>
                        
                        <ul class="histories 1950s" id="1950s">
                            <li>
                                <p>1952. 08. 08.</p>
                                <span>제1회 한국 잼버리 개최(부산, 일광 해변)</span>
                            </li>
                            <li>
                                <p>1952. 01. 31.</p>
                                <span>대한소년단 세계연맹 회원국으로 가입</span>
                            </li>
                            <li>
                                <p>1950. 12.</p>
                                <span>세계연맹 회원국 가입과 세계무대 진출</span>
                            </li>
                            <li>
                                <p>1948. 12.</p>
                                <span>연맹지 [소년단] 창간호 발간</span>
                            </li>
                            <li>
                                <p>1948. 08.</p>
                                <span>국호변경에 따라 '대한소년단'으로 개칭</span>
                            </li>
                            <li>
                                <p>1947. 12.</p>
                                <span>[조선 소년단] 교본 발행</span>
                            </li>
                            <li>
                                <p>1931. 12.</p>
                                <span>소년 척후범 교범 발간</span>
                            </li>
                        </ul>

                        <ul class="histories 1920s" id="1920s">
                            <li>
                                <p>1927. 07.</p>
                                <span>범스카우트 제1호 탄생</span>
                            </li>
                            <li>
                                <p>1925. 06. 19.</p>
                                <span>[소년군 교범] 초판 발행</span>
                            </li>
                            <li>
                                <p>1924. 04.</p>
                                <span>제1회 극동 국제 야영대회에 대표단 파견(중국, 북경)</span>
                            </li>
                            <li>
                                <p>1924. 03.</p>
                                <span>소년 척후단 조선 총연맹 결성(총재 이상재 선생) 전국적으로 78개대 조직 활동</span>
                            </li>
                            <li>
                                <p>1922. 10. 05.</p>
                                <span>조선 소년군 경성 제1호대 발대(조철호 선생), 소년 척후단 발대(정성채 선생)</span>
                            </li>
                        </ul>                        
                    </div>
                    <div class="historyNav">
                        <a href="#2020s" class="active"><span></span><span>2020년대</span></a>
                        <a href="#2010s"><span></span><span>2010년대</span></a>
                        <a href="#2000s"><span></span><span>2000년대</span></a>
                        <a href="#1990s"><span></span><span>1990년대</span></a>
                        <a href="#1980s"><span></span><span>1980년대</span></a>
                        <a href="#1970s"><span></span><span>1970년대</span></a>
                        <a href="#1960s"><span></span><span>1960년대</span></a>
                        <a href="#1950s"><span></span><span>1950년대</span></a>
                        <a href="#1920s"><span></span><span>1920년대</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>

	<%@ include file="./include/footer.jsp" %>
	
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
</body>
</html>