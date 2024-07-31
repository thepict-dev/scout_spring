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
                        <p class="jams">세계 스카우트 잼버리<br>(World Scout Jamboree)</p>
                        <div class="jamDesc">
                            <span>매 4년마다 세계스카우트연맹에서 주최하는 전 세계적인 야영대회</span>
                            <p>세계연맹(말레이시아 쿠알라룸푸르/175개국 2024. 7월 기준)에서 주관하는 가장 큰 규모의 행사로, 전 세계의 스카우트가 모여서 다양한 활동을 통해 교류하고 문화와 경험을 공유하는 국제적인 스카우트 행사입니다. 세계스카우트잼버리는 매 4년마다 개최되며 세계스카우트총회를 통해 잼버리 개최지가 결정됩니다. 세계스카우트잼버리에서는 캠핑, 하이킹, 과정활동 등의 다양한 영·내외 프로그램을 즐길 수 있고 전 세계 스카우트와의 문화 교류 및 다양한 주제의 교육 프로그램을 경험할 수 있습니다. 첫 번째 세계스카우트잼버리는 1920년, 영국 런던에서 개최되었습니다. 우리나라는 1991년 강원도 고성 세계잼버리장에서 유치되어 개최되었고 이후 22년 만에 제25회 세계스카우트잼버리가 전라북도 새만금에서 유치되어 개최되었습니다. 제26회 세계스카우트잼버리는 2027년 7월에 폴란드에서 개최될 예정입니다.</p>
                        </div>
                    </li>
                    <li>
                        <p class="jams">아시아태평양지역 스카우트 잼버리<br>(Asia-Pacific Regional Scout Jamboree)</p>
                        <div class="jamDesc">
                            <span>매 4년마다 아시아태평양지역 회원국에서 개최되는 국제 야영대회</span>
                            <p>세계연맹 아·태 사무처(필리핀 마닐라/30개 회원국 2024. 7월 기준)에서 주관하는 스카우트 국제행사입니다. 1973년에 필리핀에서 첫 번째 아시아태평양지역 스카우트 잼버리(이하 아·태 잼버리)가 개최되었습니다. 잼버리 개최지는 아시아태평양지역 총회를 통해 회원국에서 잼버리 유치 신청하고, 아·태 연맹에서 검토하여 승인, 유치가 결정되면 ·태 사무처와 유치 국가연맹이 공동으로 잼버리를 운영합니다. 가장 최근 2023년 1월 방글라데시에서 제32회 아·태 잼버리가 개최되었습니다. 한국스카우트연맹은 제8회(1982년), 제17회(1996년), 제21회(2000년), 제24회(2004년), 제27회(2010년) 총 5회 개최하였습니다. 오는 2025년 12월 필리핀에서 제33회 아·태 잼버리가 개최될 예정입니다.</p>
                        </div>
                    </li>
                    <li>
                        <p class="jams">국가 스카우트 잼버리<br>(National Scout Jamboree)</p>
                        <div class="jamDesc">
                            <span>국가별로 개최되는 회원국 초청 국제 야영대회로서 우리연맹에서는 한국잼버리와 국제패트롤잼버리를 개최</span>
                            <p>세계연맹에 소속되어 있는 각 회원국(175개 회원국)이 주관하는 스카우트 국제행사입니다. 한국은 2년마다 한국잼버리(4년)와 국제패트롤잼버리(4년)를 개최하고 있습니다. 대부분의 회원국은 자국연맹에 2~4년 간격으로 국가 스카우트 잼버리를 개최합니다. 잼버리의 규모에 따라 자국 스카우트뿐만 아니라 해외 스카우트를 참가자로 초대(초청)하여 함께 잼버리를 즐기기도 합니다. 단, 국가 스카우트 잼버리를 개최하면서 동시에 리를 잼버리나 아·태 잼버리를 유치하게 되면 상위 행사의 명칭을 앞에 사용합니다.</p>
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
                    
                    <!-- 20s -->
                    <div class="tabInner jamTabContent">
                        <ul class="jamLists">
                            <li>
                                <div class="jamListImgTexts">
                                    <img src="/user_img/5.png" alt="엠블럼" style="max-width:145px">
                                    <div class="jamListTexts">
                                        <h4>제25회 세계스카우트잼버리</h4>
                                        <p>
                                            2023. 8. 1. ~ 12.
                                            <span>전북 부안군 새만금 잼버리장</span>
                                        </p>
                                    </div>
                                </div>
                                <p>156개국 • 42,646명<span>참가</span></p>
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