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
            <p class="pcText">전국 각지 수품대리점에서<br>최고의 스카우트 물품을 만날 수 있습니다.</p>
            <p class="mbText">전국 각지 수품대리점에서 최고의 스카우트 물품을 만날 수 있습니다.</p>
        </div>
        <div class="subContents">
            <div class="blockContainer">
                <h3 class="contentTitle">수품대리점 현황</h3>
                <h3 class="contentTitle mbText">수품대리점 현황</h3>
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
                        <li><span>중국청</span></li>
                    </ul>
                    <div class="contDropdown">
                        <button class="btnDropdown" type="button">서울북부</button>
                        <ul class="storeBtns">
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
                            <li><span>중국청</span></li>
                        </ul>
                    </div>
                    <div class="storeContentsWrapper">
                        <!-- 서울북부 -->
                        <div class="tabInner active">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">한국스카우트<br>그루터기</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>02-732-0388</span></li>
                                    <li><p>주소</p><span>서울특별시 종로구 당주동 100 세종빌딩 지하 32호</span></li>
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
                                    <li><p>주소</p><span>서울특별시 영등포구 당산동 2가 30-2 (유통상가 B1- 31호)</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 부산 -->
                        <div class="tabInner">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">형제마크사</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>051-805-8648</span></li>
                                    <li><p>주소</p><span>부산광역시 부산진구 중앙대로 762-1(부전동) 형제마크</span></li>
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
                                <p class="lh120">한국스카우트<br>광주연맹</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>062-385-6500</span></li>
                                    <li><p>주소</p><span>광주광역시 서구  상무민주로 86</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 대전 -->
                        <div class="tabInner">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">한국스카우트<br>(한국스카우트 대전대리점)</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>042-222-1012</span></li>
                                    <li><p>주소</p><span>대전광역시 동구 중앙로 200번길 99 1층 97~101호</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 울산 -->
                        <div class="tabInner">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">아산광고산업</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>052-211-3823</span></li>
                                    <li><p>주소</p><span>울산광역시 중구 학성로 53(성남동)</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 경기북부 -->
                        <div class="tabInner">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">사다새<br>(남양주)</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>031-904-1424</span></li>
                                    <li><p>주소</p><span>경기도 일산동구 백석로71번길 49, B1(백석동)</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 경기남부 -->
                        <div class="tabInner">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">한국스카우트<br>안양</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>031-466-3496</span></li>
                                    <li><p>주소</p><span>경기도 안양시 동안구 엘에스로 92(안양국제유통단지 지원동 B-1 67호)</span></li>
                                </ul>
                            </div>
                            <div class="textsWrapper rules facility">
                                <p class="lh120">한국스카우트<br>용인성남</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>031-284-3235</span></li>
                                    <li><p>주소</p><span>경기도 용인시 기흥구 신갈로 71(신갈동)</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 강원 -->
                        <div class="tabInner">
	                       	<div class="textsWrapper rules facility">
	                              <p class="lh120">한국스카우트<br>강릉</p>
	                              <ul class="textsSub">
	                                  <li><p>전화번호</p><span>033-647-7537</span></li>
	                                  <li><p>주소</p><span>강원도 강릉시 금학동 87-2호</span></li>
	                              </ul>
							</div>
							<div class="textsWrapper rules facility">
                                <p class="lh120">스마트(춘천점)</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>033-255-0555</span></li>
                                    <li><p>주소</p><span>강원도 춘천시 운교동 167-2</span></li>
                                </ul>
                            </div>
                            <div class="textsWrapper rules facility">
                                <p class="lh120">스마트학생복(원주점)</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>033-762-7644</span></li>
                                    <li><p>주소</p><span>강원도 원주시 개봉길29-1</span></li>
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
	                            <p class="lh120">한국스카우트<br>충남북부</p>
	                            <ul class="textsSub">
	                                <li><p>전화번호</p><span>070-8225-2147</span></li>
	                                <li><p>주소</p><span>충청남도 아산시 배방읍 북수로111번길 6-10 2층</span></li>
	                            </ul>
	                        </div>
                            <div class="textsWrapper rules facility">
                                <p class="lh120">한국스카우트<br>예산대리점</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>041-335-6688</span></li>
                                    <li><p>주소</p><span>충청남도 예산군 예산읍 주교1리 253-4</span></li>
                                </ul>
                            </div>
                            
                        </div>
                        <!-- 전북 -->
                        <div class="tabInner">
	                        <div class="textsWrapper rules facility">
	                            <p class="lh120">이벤트샵</p>
	                            <ul class="textsSub">
	                                <li><p>전화번호</p><span>063-278-6112</span></li>
	                                <li><p>주소</p><span>전주시 덕진구 시천로45</span></li>
	                            </ul>
	                        </div>
                            <div class="textsWrapper rules facility">
                                <p class="lh120">대한체육사</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>063-855-0908</span></li>
                                    <li><p>주소</p><span>전라북도 익산시 남중 147-20호</span></li>
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
                                    <li><p>전화번호</p><span>054-553-3500</span></li>
                                    <li><p>주소</p><span>경상북도 문경시 점촌동 246-76</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 경남 -->
                        <div class="tabInner">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">한국스카우트<br>창원</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>055-742-4070</span></li>
                                    <li><p>주소</p><span>경상남도 진주시 동성동 4-34 일신월드</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 제주 -->
                        <div class="tabInner">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">한국스카우트<br>제주</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>064-751-4234</span></li>
                                    <li><p>주소</p><span>제주시 평전3길34-1</span></li>
                                </ul>
                            </div>
                        </div>
                        <!-- 중국청 -->
                        <div class="tabInner">
                            <div class="textsWrapper rules facility">
                                <p class="lh120">중국청<br>프로비전</p>
                                <ul class="textsSub">
                                    <li><p>전화번호</p><span>-</span></li>
                                    <li><p>주소</p><span>중국청도</span></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
    <script>
        const btn = document.querySelector('.btnDropdown');
        const list = document.querySelector('.storeBtns');
        btn.addEventListener('click', () => {
        	btn.classList.toggle('on');
        });
        list.addEventListener('click', (event) => {
            if (event.target.nodeName === 'SPAN') {
                btn.innerText = event.target.innerText;
                btn.classList.remove('on');
            }
        });
    </script>
</body>
</html>