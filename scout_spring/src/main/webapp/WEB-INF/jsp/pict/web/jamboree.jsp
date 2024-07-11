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
            <h2>잼버리 Jamboree</h2>
            <p class="pcText">북미 인디언의 '즐거운 놀이', '유쾌한 잔치'라는 뜻의<br><span>Jamboree</span>는 스카우트의 대표 행사입니다.</p>
            <p class="mbText">북미 인디언의 '즐거운 놀이', '유쾌한 잔치'라는 뜻의<span>Jamboree</span>는 스카우트의 대표 행사입니다.</p>
            <span>Jamboree는 북미 인디언의 '즐거운 놀이', '유쾌한 잔치'라는 뜻을 지닌 시바아리(SHIVAREE)란 말이 전음화된 것으로, 스카우트의 창시자인 베이든 포우엘경이 1920년 런던의 올림피아 스타디움에서 열린 제1회 세계잼버리를 개최하면서 직접 이 대회에『Jamboree』라는 이름을 붙였습니다.</span>
        </div>
        <div class="subContents">
            <div class="flexContainer">
                <h3 class="contentTitle">잼버리의 종류</h3>
                <ul class="contentDesc">
                    <li>
                        <p>세계 잼버리</p>
                        <div class="jamDesc">
                            <span>매 4년마다 개최되는 전 세계적인 야영대회</span>
                            <p>세계연맹(말레이시아 쿠아라룸프/163개국 2014. 2.월 기준)에서 주관하는 가장 큰 스카우트 국제행사입니다. 4년마다 열리는 행사로서. 2007년도에 영국에서 스카우트 운동 100주년 기념으로 개최되었습니다. 2011년 스웨덴, 그리고 2015년 일본에서 개최 될 예정입니다. 잼버리 개최지는 세계총회에서 결정하는데요. 2015년 일본 개최확정은 2008년 대한민국 제주에서 열린 세계총회에서 결정되었습니다. 2011년 브라질 세계총회에서 미국으로 결정되었습니다. 우리나라는 1991년 세계잼버리를 강원도 고성 세계잼버리장에서 유치해서 개최되었으며, 역대 가장 훌륭한 잼버리로 평가 받을 만큼 성공리에 마쳤고, 그 시점을 계기로 한국스카우트가 한 단계 도약하는 계기가 되었습니다. 참고로 세계연맹 산하에는 아·태 사무처, 유라시아 사무처, 미주 사무처, 아랍 사무처, 유럽 사무처, 아프리카 사무처 총 6개의 세계연맹 지역 사무처으로 이루어져 있으며, 우리나라는 아·태 사무처에 소속되어 있습니다.</p>
                        </div>
                    </li>
                    <li>
                        <p>아·태 잼버리</p>
                        <div class="jamDesc">
                            <span>매 4년마다 아시아 태평양 지역 회원국에서 개최되는 국제 야영대회</span>
                            <p>세계연맹 아·태 사무처(필리핀 마닐라/28개 회원국 2014. 2월 기준)에서 주관하는 스카우트 국제행사입니다. 2012년 방글라데시 총회에서 4년 단위로 개최국을 결정하게 되어 2017년 몽골이 개최국이 되었습니다. 참고로 이전 아·태잼버리는 회원국에서 잼버리 유치 신청하고, 아·태 연맹에서 검토하여 승인, 유치가 결정되어 아·태 사무처와 유치 국가연맹이 공동으로 잼버리를 진행하였습니다. 참고로 우리나라는 제8회(1982년), 제17회(1996년), 제21회(2000년), 제24회(2004년), 제27회(2010년) 총 5회 개최하였습니다.</p>
                        </div>
                    </li>
                    <li>
                        <p>국가 잼버리</p>
                        <div class="jamDesc">
                            <span>국가별로 개최되는 회원국 초청 국제 야영대회로서 대한민국에서는 한국잼버리와 국제패트롤잼버리를 개최</span>
                            <p>각 회원국(163개 회원국)이 주관하는 스카우트 국제행사입니다. 한국은 2년마다 한국잼버리(4년)와 국제패트롤잼버리(4년)를 개최하고 있습니다. 대부분의 국가는 자국연맹에 2~4년 간격으로 국가잼버리를 개최합니다. 단, 국가 잼버리를 개최함에 있어, 리를 잼버리나 아·태 잼버리를 유치하게 되면 상위 행사의 명칭을 앞에 써주면 됩니다.</p>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="blockContainer">
                <h3 class="contentTitle">역대 한국개최<br>잼버리 현황</h3>
                <div class="flexTab jamFlexTab">
                    <ul class="tabNav jamTab">
                        <li class="active"><span>1950년</span></li>
                        <li><span>1960년</span></li>
                        <li><span>1970년</span></li>
                        <li><span>1980년</span></li>
                        <li><span>1990년</span></li>
                        <li><span>2000년</span></li>
                        <li><span>2010년</span></li>
                        <li><span>2020년</span></li>
                    </ul>
                    <!-- 50s -->
                    <div class="tabInner jamTabContent active">
                        <ul class="jamLists">
                            <li>
                                <div class="jamListImgTexts">
                                    <img src="/user_img/jam50.jpg" alt="엠블럼">
                                    <div class="jamListTexts">
                                        <h4>제 1회 한국잼버리</h4>
                                        <p>
                                            1952. 8. 8. ~ 14.
                                            <span>부산 일광 해변</span>
                                        </p>
                                    </div>
                                </div>
                                <p>500명<span>참가</span></p>
                            </li>
                        </ul>
                    </div>
                    <!-- 60s -->
                    <div class="tabInner jamTabContent">
                        <ul class="jamLists">
                            <li>
                                <div class="jamListImgTexts">
                                    <img src="/user_img/jam60-1.png" alt="엠블럼">
                                    <div class="jamListTexts">
                                        <h4>제 2회 한국잼버리</h4>
                                        <p>
                                            1962. 8. 10. ~ 16.
                                            <span>서울 경희대학교</span>
                                        </p>
                                    </div>
                                </div>
                                <p>2,000명<span>참가</span></p>
                            </li>
                            <li>
                                <div class="jamListImgTexts">
                                    <img src="/user_img/jam60-2.png" alt="엠블럼">
                                    <div class="jamListTexts">
                                        <h4>제 3회 한국잼버리</h4>
                                        <p>
                                            1967. 8. 10. ~ 15.
                                            <span>서울 태릉 화랑대</span>
                                        </p>
                                    </div>
                                </div>
                                <p>4,800명<span>참가</span></p>
                            </li>
                        </ul>
                    </div>
                    <!-- 70s -->
                    <div class="tabInner jamTabContent">
                        <ul class="jamLists">
                            <li>
                                <div class="jamListImgTexts">
                                    <img src="/user_img/jam70-1.jpg" alt="엠블럼">
                                    <div class="jamListTexts">
                                        <h4>제 4회 한국잼버리</h4>
                                        <p>
                                            1972. 8. 10. ~ 16.
                                            <span>경기 고양 서삼릉</span>
                                        </p>
                                    </div>
                                </div>
                                <p>7개국 · 5,041명<span>참가</span></p>
                            </li>
                            <li>
                                <div class="jamListImgTexts">
                                    <img src="/user_img/jam70-2.jpg" alt="엠블럼">
                                    <div class="jamListTexts">
                                        <h4>제 5회 한국잼버리</h4>
                                        <p>
                                            1977. 8. 10. ~ 16.
                                            <span>전북 무주 덕유대</span>
                                        </p>
                                    </div>
                                </div>
                                <p>4,800명<span>참가</span></p>
                            </li>
                        </ul>
                    </div>
                    <!-- 80s -->
                    <div class="tabInner jamTabContent">
                        <ul class="jamLists">
                            <li>
                                <div class="jamListImgTexts">
                                    <img src="/user_img/jam80-1.jpg" alt="엠블럼">
                                    <div class="jamListTexts">
                                        <h4>제8회 아시아 태평양잼버리 겸<br>제6회 한국잼버리</h4>
                                        <p>
                                            1982. 8. 4. ~ 10.
                                            <span>전북 무주 덕유대 종합야영장</span>
                                        </p>
                                    </div>
                                </div>
                                <p>29개국 • 12,009명<span>참가</span></p>
                            </li>
                            <li>
                                <div class="jamListImgTexts">
                                    <img src="/user_img/jam80-2.jpg" alt="엠블럼">
                                    <div class="jamListTexts">
                                        <h4>제 7회 한국잼버리</h4>
                                        <p>
                                            1986. 7.29. ~ 8. 4.
                                            <span>경북 경주 도투락월드야영장</span>
                                        </p>
                                    </div>
                                </div>
                                <p>11,144명<span>참가</span></p>
                            </li>
                        </ul>
                    </div>
                    <!-- 90s -->
                    <div class="tabInner jamTabContent">
                        <ul class="jamLists">
                            <li>
                                <div class="jamListImgTexts">
                                    <img src="/user_img/jam90-1.jpg" alt="엠블럼">
                                    <div class="jamListTexts">
                                        <h4>제8회 한국잼버리</h4>
                                        <p>
                                            1990. 8. 8. ~ 16.
                                            <span>강원 고성 토성면 신평리</span>
                                        </p>
                                    </div>
                                </div>
                                <p>8개국 • 12,756명<span>참가</span></p>
                            </li>
                            <li>
                                <div class="jamListImgTexts">
                                    <img src="/user_img/jam90-2.jpg" alt="엠블럼">
                                    <div class="jamListTexts">
                                        <h4>제17회 세계한국잼버리</h4>
                                        <p>
                                            1991. 8. 8. ~ 16.
                                            <span>강원 고성 토성면 신평리</span>
                                        </p>
                                    </div>
                                </div>
                                <p>113개국 • 19,081명<span>참가</span></p>
                            </li>
                            <li>
                                <div class="jamListImgTexts">
                                    <img src="/user_img/jam90-3.jpg" alt="엠블럼">
                                    <div class="jamListTexts">
                                        <h4>제9회 한국잼버리</h4>
                                        <p>
                                            1994. 8. 5. ~ 11.
                                            <span>강원 세계잼버리수련장</span>
                                        </p>
                                    </div>
                                </div>
                                <p>12개국 • 10,138명<span>참가</span></p>
                            </li>
                            <li>
                                <div class="jamListImgTexts">
                                    <img src="/user_img/jam90-4.jpg" alt="엠블럼">
                                    <div class="jamListTexts">
                                        <h4>제17회 아시아 태평양잼버리</h4>
                                        <p>
                                            1996. 8. 7. ~ 13.
                                            <span>강원 세계잼버리수련장</span>
                                        </p>
                                    </div>
                                </div>
                                <p>53개국 • 23,251명<span>참가</span></p>
                            </li>
                        </ul>
                    </div>
                    <!-- 00s -->
                    <div class="tabInner jamTabContent">
                        <ul class="jamLists">
                            <li>
                                <div class="jamListImgTexts">
                                    <img src="/user_img/jam00-1.jpg" alt="엠블럼">
                                    <div class="jamListTexts">
                                        <h4>제21회 아시아 태평양잼버리 겸<br>제10회 한국잼버리</h4>
                                        <p>
                                            2000. 8. 7. ~ 14.
                                            <span>강원 세계잼버리수련장</span>
                                        </p>
                                    </div>
                                </div>
                                <p>44개국 • 16,700명<span>참가</span></p>
                            </li>
                            <li>
                                <div class="jamListImgTexts">
                                    <img src="/user_img/jam00-2.jpg" alt="엠블럼">
                                    <div class="jamListTexts">
                                        <h4>제1회 국제패트롤잼버리</h4>
                                        <p>
                                            2002. 7.24. ~ 29.
                                            <span>제주 세계섬문화 축제장</span>
                                        </p>
                                    </div>
                                </div>
                                <p>18개국 • 10,557명<span>(참관단3,024명)</span><span>참가</span></p>
                            </li>
                            <li>
                                <div class="jamListImgTexts">
                                    <img src="/user_img/jam00-3.jpg" alt="엠블럼">
                                    <div class="jamListTexts">
                                        <h4>제24회 아시아·태평양잼버리 겸<br>제11회 한국잼버리</h4>
                                        <p>
                                            2004. 8. 5. ~ 11.
                                            <span>강원 세계잼버리수련장</span>
                                        </p>
                                    </div>
                                </div>
                                <p>35개국 • 14,542명<span>참가</span></p>
                            </li>
                            <li>
                                <div class="jamListImgTexts">
                                    <img src="/user_img/jam00-4.jpg" alt="엠블럼">
                                    <div class="jamListTexts">
                                        <h4>제2회 국제패트롤잼버리</h4>
                                        <p>
                                            2006. 8. 5. ~ 11.
                                            <span>전남 순천청소년수련소</span>
                                        </p>
                                    </div>
                                </div>
                                <p>51개국 • 10,591명<span>참가</span></p>
                            </li>
                            <li>
                                <div class="jamListImgTexts">
                                    <img src="/user_img/jam00-5.jpg" alt="엠블럼">
                                    <div class="jamListTexts">
                                        <h4>제12회 한국잼버리</h4>
                                        <p>
                                            2008. 8. 6. ~ 11.
                                            <span>강원 세계잼버리수련장</span>
                                        </p>
                                    </div>
                                </div>
                                <p>35개국 • 10,103명<span>참가</span></p>
                            </li>
                        </ul>
                    </div>
                    <!-- 10s -->
                    <div class="tabInner jamTabContent">
                        <ul class="jamLists">
                            <li>
                                <div class="jamListImgTexts">
                                    <img src="/user_img/jam10-1.jpg" alt="엠블럼">
                                    <div class="jamListTexts">
                                        <h4>제27회 아시아태평양잼버리 겸<br>제3회 국제패트롤잼버리</h4>
                                        <p>
                                            2010. 8. 4. ~ 9.
                                            <span>전남 순천청소년수련소	</span>
                                        </p>
                                    </div>
                                </div>
                                <p>42개국 • 11,213명<span>참가</span></p>
                            </li>
                            <li>
                                <div class="jamListImgTexts">
                                    <img src="/user_img/jam10-2.jpg" alt="엠블럼">
                                    <div class="jamListTexts">
                                        <h4>재13회 한국잼버리</h4>
                                        <p>
                                            2012. 8. 2. ~ 8.
                                            <span>강원 세계잼버리수련장</span>
                                        </p>
                                    </div>
                                </div>
                                <p>45개국 • 8,842명<span>참가</span></p>
                            </li>
                            <li>
                                <div class="jamListImgTexts">
                                    <img src="/user_img/jam10-3.jpg" alt="엠블럼">
                                    <div class="jamListTexts">
                                        <h4>제4회 국제패트롤잼버리</h4>
                                        <p>
                                            2014. 8. 1. ~ 6.
                                            <span>상주시 강창나루공원</span>
                                        </p>
                                    </div>
                                </div>
                                <p>40개국 • 7,633명<span>참가</span></p>
                            </li>
                            <li>
                                <div class="jamListImgTexts">
                                    <img src="/user_img/jam10-4.jpg" alt="엠블럼">
                                    <div class="jamListTexts">
                                        <h4>제14회 한국잼버리</h4>
                                        <p>
                                            2016. 8. 3. ~ 9.
                                            <span>대구광역시 달성군 구지면 오설리 일원</span>
                                        </p>
                                    </div>
                                </div>
                                <p>44개국 • 8,438명<span>참가</span></p>
                            </li>
                            <li>
                                <div class="jamListImgTexts">
                                    <img src="/user_img/jam10-5.png" alt="엠블럼" style="max-width: 142px;">
                                    <div class="jamListTexts">
                                        <h4>제5회 국제패트롤잼버리</h4>
                                        <p>
                                            2018. 8. 2. ~ 7.
                                            <span>강원 세계잼버리수련장</span>
                                        </p>
                                    </div>
                                </div>
                                <p>45개국 • 5,718명<span>참가</span></p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>