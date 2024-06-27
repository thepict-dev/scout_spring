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
            <h2>수품대리점</h2>
            <p>전국 각지 수품대리점에서<br>최고의 스카우트 물품을 만날 수 있습니다</p>
        </div>
        <div class="subContents">
            <div class="blockContainer">
                <h3 class="contentTitle">수품대리점 현황</h3>
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
                        <!-- 서울북부 -->
                        <div class="tabInner active">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">한국스카우트<br>광화문대리점</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>02-732-0388</span></li>
                                    <li><p>주소</p><span>서울시 종로구 세종대로23길 54 세종빌딩 지하 32호</span></li>
                                </ul>
                            </div>
                            <div class="textsWrapper rules facility">
                                <p class="lh120">한국스카우트<br>서울동부대리점</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>02-2235-2136</span></li>
                                    <li><p>주소</p><span>서울시 성동구 무학로6길 50 삼성쉐르빌상가2층 213호</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 서울남부 -->
                        <div class="tabInner">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">한국스카우트<br>서울서부대리점</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>02-2678-5702</span></li>
                                    <li><p>주소</p><span>서울시 영등포구 영등포로 109 (유통상가B1-31호)</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 부산 -->
                        <div class="tabInner">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">형제마크사</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>051-804-5074</span></li>
                                    <li><p>주소</p><span>부산광역시 부산진구 중앙대로 762-1</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 대구 -->
                        <div class="tabInner">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">등록된 데이터가 존재하지 않습니다.</p>
                            </div>
                        </div>
                        <!-- 인천 -->
                        <div class="tabInner">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">등록된 데이터가 존재하지 않습니다.</p>
                            </div>
                        </div>
                        <!-- 광주 -->
                        <div class="tabInner">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">브라운시<br>(한국스카우트 광주대리점)</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>051-804-5074</span></li>
                                    <li><p>주소</p><span>부산광역시 부산진구 중앙대로 762-1</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 대전 -->
                        <div class="tabInner">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">한국스카우트<br>(한국스카우트 대전대리점)</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>042-222-1012</span></li>
                                    <li><p>주소</p><span>대전광역시 동구 중앙로200번길 99 (원동) 1층 100호</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 울산 -->
                        <div class="tabInner">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">아산광고</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>052-246-0555</span></li>
                                    <li><p>주소</p><span>울산광역시 중구 학성로 53(성남동)</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 경기북부 -->
                        <div class="tabInner">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">사다새<br>(경기북부 인천)</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>031-908-1424</span></li>
                                    <li><p>주소</p><span>경기도 고양시 일산동구 백석로71번길 49 B1층</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 경기남부 -->
                        <div class="tabInner">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">한국스카우트<br>수원대리점</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>031-253-1318</span></li>
                                    <li><p>주소</p><span>경기도 수원시 팔달구 정조로 853 (신풍동, 신진프라자)3층</span></li>
                                </ul>
                            </div>
                            <div class="textsWrapper rules facility">
                                <p class="lh120">한국스카우트<br>안양대리점</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>031-466-3496</span></li>
                                    <li><p>주소</p><span>경기도 안양시 동안구 엘에스로 92(안양국제유통단지 지원동 B-1 67호)</span></li>
                                </ul>
                            </div>
                            <div class="textsWrapper rules facility">
                                <p class="lh120">한국스카우트<br>용인성남대리점</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>031-287-3235</span></li>
                                    <li><p>주소</p><span>경기도 용인시 기흥구 신갈로 71 2층</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 강원 -->
                        <div class="tabInner">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">SMART상사(원주점)</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>033-762-7644</span></li>
                                    <li><p>주소</p><span>강원도 원주시 치악로 1806</span></li>
                                </ul>
                            </div>
                            <div class="textsWrapper rules facility">
                                <p class="lh120">스마트(춘천점)</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>033-255-0555</span></li>
                                    <li><p>주소</p><span>강원도 춘천시 금강로 87</span></li>
                                </ul>
                            </div>
                            <div class="textsWrapper rules facility">
                                <p class="lh120">한국스카우트<br>강릉</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>033-647-7537</span></li>
                                    <li><p>주소</p><span>강원도 강릉시 임영로116번안길 10</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 충북 -->
                        <div class="tabInner">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">등록된 데이터가 존재하지 않습니다.</p>
                            </div>
                        </div>
                        <!-- 충남 -->
                        <div class="tabInner">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">한국스카우트<br>예산대리점</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>041-335-6688</span></li>
                                    <li><p>주소</p><span>충남 예산군 예산읍 주교로 24</span></li>
                                </ul>
                            </div>
                            <div class="textsWrapper rules facility">
                                <p class="lh120">한국스카우트<br>충남북부대리점</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>070-8225-2147</span></li>
                                    <li><p>주소</p><span>충청남도 아산시 배방읍 북수로111번길 6-10 2층</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 전북 -->
                        <div class="tabInner">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">대한체육사</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>063-855-0908</span></li>
                                    <li><p>주소</p><span>전북 익산시 인북로 151</span></li>
                                </ul>
                            </div>
                            <div class="textsWrapper rules facility">
                                <p class="lh120">이벤트샵(전주)</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>063-278-6112</span></li>
                                    <li><p>주소</p><span>전북 전주시 덕진구 시천로45 대명상가 2동 204호</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 전남 -->
                        <div class="tabInner">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">한국스카우트<br>목포대리점</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>061-274-3300</span></li>
                                    <li><p>주소</p><span>전남 목포시 백년대로 51</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 경북 -->
                        <div class="tabInner">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">경북체육사(문경)</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>054-555-1534</span></li>
                                    <li><p>주소</p><span>경북 문경시 중앙로 117-22</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 경남 -->
                        <div class="tabInner">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">한국스카우트<br>창원(진주)</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>055-742-4070</span></li>
                                    <li><p>주소</p><span>경북 문경시 중앙로 117-22</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 제주 -->
                        <div class="tabInner">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">등록된 데이터가 존재하지 않습니다.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>