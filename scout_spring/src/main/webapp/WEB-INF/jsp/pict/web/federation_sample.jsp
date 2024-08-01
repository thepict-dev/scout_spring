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
        	<img src="${vo.mainimg}" style="width:100%; margin-bottom:30px"/>
            <div class="greetingContainer">
            	<!-- 연맹소개글 -->
            	<div class="greetingText feders">
                	<div class="greetingTexts feders">
                		<p>스카우트 가족 여러분~!<br> 甲辰年 푸른 용의 해는 좋은 일로 가득한 해가 되시길 바랍니다.<br>안녕하십니까?<br>한국스카우트 서울남부연맹 연맹장 문효순입니다.</p>                		
                		<p>연맹 홈페이지를 방문해 주신 여러분께 감사 인사드립니다.</p>
                		<p>지난 몇 년 동안 코로나로 인해 활동도 많이 위축되고 어려움도 많으셨을 거라고 생각합니다.<br>그런 어려운 상황임에도 불구하고 연맹에 보여주신 극진한 사랑과 열정에 깊은 감사를 드립니다.</p>
                		<p>2024년에는 그동안의 어려운 상황을 이겨낸 만큼 다시 시작한다는 마음으로 가족 여러분들께서 보여주신 많은 관심과 노력에 보답하고자 합니다.</p>
                		<p>우리 스카우트 대원들이 정신적, 육체적으로 건강하게 성장하고 마음껏 그들의 꿈을 펼칠 수 있도록 역할과 책임을 다하겠습니다.</p>
                		<p>연맹은 그간 쌓아온 경험과 지혜를 바탕으로 우리 대원들이 꿈과 희망을 키워 나가 건전한 청소년으로 성장할 수 있도록 끊임없이 노력하겠습니다.</p>
                		<p>올 한해는 대원들이 건강하게 많이 배우고 왕성한 활동을 할 수 있도록 스카우트 가족 여러분의 많은 관심과 노력을 아낌없이 부탁드리겠습니다.<br>더불어 우리 연맹에도 더 많은 관심과 격려 부탁드립니다.</p>
                		<p>감사합니다.</p>
                		<p>한국스카우트 서울남부연맹 연맹장 문 효 순</p>
               		</div>
                </div>
                <span class="feders"><img src="${vo.leaderimg}" alt="연맹장사진"></span>
            </div>
            <div class="sign feders" >
				<p>연맹장 ${vo.leadername}</p>
			</div>
            <ul class="tabNav organNav rules">
                <li class="active"><a href="/federation_organ?dataid=${vo.dataid}">조직도</a></li>
                <li><a href="/federation_notice?dataid=${vo.dataid}">공지사항</a></li>
                <li><a href="/federation_files?dataid=${vo.dataid}">자료실</a></li>
                <li><a href="/federation_event?dataid=${vo.dataid}">행사안내</a></li>
                <li><a href="/federation_location?dataid=${vo.dataid}">오시는길</a></li>
            </ul>
            
            <!-- 조직도S -->
            <div class="tabInner ruleContents active">
                <ul class="tabNavSub">
                    <li class="active"><a href="#lnk">임원</a></li>
                    <li><a href="#lnk">커미셔너</a></li>
                    <li><a href="#lnk">지방명예회의위원</a></li>
                </ul>
                
                
                <div class="tabInnerSub active">
				    <div class="organTableWrapper">
				        <table>
				            <colgroup>
				                <col width="20%" />
				                <col width="15%" />
				                <col width="65%" />
				            </colgroup>
				            <thead>
				                <tr>
				                    <th>직책</th>
				                    <th>성명</th>
				                    <th>소속(직장 및 직위)</th>
				                </tr>
				            </thead>
				            <tbody>
				                <tr>
				                    <td>연맹장</td>
				                    <td>문효순</td>
				                    <td>前, 서울남부연맹 부연맹장</td>
				                </tr>
				                <tr>
				                <tr>
				                    <td rowspan="6">부연맹장</td>
				                    <td>김지선</td>
				                    <td>리프로상사 대표</td>
				                </tr>
				                <tr>
				                    <td>신인수</td>
				                    <td>前, 서울신미림초등학교 교장</td>
				                </tr>
				                <tr>
				                    <td>오시형</td>
				                    <td>前, 서울동구로초등학교 교장</td>
				                </tr>
				                <tr>
				                    <td>이용완</td>
				                    <td>㈜신영토건 대표이사</td>
				                </tr>
				                <tr>
				                    <td>최동현</td>
				                    <td>부신산업(주) 대표이사</td>
				                </tr>
				                <tr>
				                    <td>최동희</td>
				                    <td>에이치자산운용 대표이사</td>
				                </tr>
				                <tr>
				                    <td>치프커미셔너</td>
				                    <td>김창경</td>
				                    <td>前, 광남중학교 교사</td>
				                </tr>
				                <tr>
				                    <td rowspan="13">직선이사</td>
				                    <td>강신원</td>
				                    <td>배재중학교 교장</td>
				                </tr>
				                <tr>
				                    <td>김경복</td>
				                    <td>유앤어스코리아 이사</td>
				                </tr>
				                <tr>
				                    <td>김이태</td>
				                    <td>서울북가좌초등학교 교장</td>
				                </tr>
				                <tr>
				                    <td>김태식</td>
				                    <td>한국자원재생업협종조합 이사장</td>
				                </tr>
				                <tr>
				                    <td>남국현</td>
				                    <td>㈜이채 대표이사</td>
				                </tr>
				                <tr>
				                    <td>문종국</td>
				                    <td>前, 강남교육청 교육장</td>
				                </tr>
				                <tr>
				                    <td>변재만</td>
				                    <td>서울신서초등학교 교감</td>
				                </tr>
				                <tr>
				                    <td>안승휘</td>
				                    <td>TEAMUP(팀업) 대표이사</td>
				                </tr>
				                <tr>
				                    <td>이광호</td>
				                    <td>산천엔지니어링 대표</td>
				                </tr>
				                <tr>
				                    <td>이선주</td>
				                    <td>서울신천초등학교 교장</td>
				                </tr>
				                <tr>
				                    <td>장덕실</td>
				                    <td>前, 서울윤중초등학교 교장</td>
				                </tr>
				                <tr>
				                    <td>전준성</td>
				                    <td>리오스튜디오 대표</td>
				                </tr>
				                <tr>
				                    <td>최윤희</td>
				                    <td>아산신문 기자</td>
				                </tr>
				                <tr>
				                    <td>감사</td>
				                    <td>천세인</td>
				                    <td>서울중랑초등학교 교사</td>
				                </tr>
				            </tbody>
				        </table>
				    </div>
				</div>
				<div class="tabInnerSub">
				    <div class="organTableWrapper">
				        <table>
				            <colgroup>
				                <col width="13%" />
				                <col width="13%" />
				                <col width="13%" />
				                <col width="61%" />
				            </colgroup>
				            <thead>
				                <tr>
				                    <th colspan="2">직책</th>
				                    <th>성명</th>
				                    <th>소속</th>
				                </tr>
				            </thead>
				            <tbody>
				                <tr>
				                    <td rowspan="12">커미셔너</td>
				                    <td>치프</td>
				                    <td>김창경</td>
				                    <td>前, 광남중학교 교사</td>
				                </tr>
				                <tr>
				                    <td>프로그램</td>
				                    <td>변태식</td>
				                    <td>서울사당초등학교 교사</td>
				                </tr>
				                <tr>
				                    <td>비버스카우트</td>
				                    <td>김경록</td>
				                    <td>서울신상도초등학교 교사</td>
				                </tr>
				                <tr>
				                    <td>컵스카우트</td>
				                    <td>이강익</td>
				                    <td>서울대영초등학교 </td>
				                </tr>
				                <tr>
				                    <td>스카우트</td>
				                    <td>노본</td>
				                    <td>청숫지역대 대장</td>
				                </tr>
				                <tr>
				                    <td>벤처스카우트</td>
				                    <td>오연주</td>
				                    <td>푸른섬지역대 대장</td>
				                </tr>
				                <tr>
				                    <td>로버스카우트</td>
				                    <td>전우진</td>
				                    <td>블랙야크지역대 대장</td>
				                </tr>
				                <tr>
				                    <td>특별프로그램</td>
				                    <td>김라온</td>
				                    <td>방배YC스카우트 대장</td>
				                </tr>
				                <tr>
				                    <td>조직</td>
				                    <td>신진성</td>
				                    <td>서울난향초등학교 교사</td>
				                </tr>
				                <tr>
				                    <td>홍보</td>
				                    <td>김덕진</td>
				                    <td>서울삼일초등학교 교사</td>
				                </tr>
				                <tr>
				                    <td>국제1</td>
				                    <td>안재용</td>
				                    <td>서울뿌리단 대장</td>
				                </tr>
				                <tr>
				                    <td>국제2</td>
				                    <td>이혜진</td>
				                    <td>서울우암초등학교 교사</td>
				                </tr>
				            </tbody>
				        </table>
				    </div>
				</div>
				<div class="tabInnerSub">
				    <div class="organTableWrapper">
				        <table>
				            <colgroup>
				                <col width="13%" />
				                <col width="13%" />
				                <col width="13%" />
				                <col width="61%" />
				            </colgroup>
				            <thead>
				                <tr>
				                    <th colspan="2">직책</th>
				                    <th>성명</th>
				                    <th>소속</th>
				                </tr>
				            </thead>
				            <tbody>
				                <tr>
				                    <td rowspan="2">강서지구연합회</td>
				                    <td>지구회장</td>
				                    <td>손신룡</td>
				                    <td>㈜퍼플플러스 전략연구소 회장</td>
				                </tr>
				                <tr>
				                    <td>지구사무국장</td>
				                    <td>김광선</td>
				                    <td>서울가곡초등학교 교사</td>
				                </tr>
				                <tr>
				                    <td>강남지구연합회</td>
				                    <td>지구사무국장</td>
				                    <td>천세인</td>
				                    <td>서울중랑초등학교 교사</td>
				                </tr>
				                <tr>
				                    <td rowspan="2">양천지구연합회</td>
				                    <td>지구회장</td>
				                    <td>진만성</td>
				                    <td>서울양목초등학교 교장</td>
				                </tr>
				                <tr>
				                    <td>지구사무국장</td>
				                    <td>박상철</td>
				                    <td>서울갈산초등학교 교사</td>
				                </tr>
								<tr>
				                    <td rowspan="2">강동송파지구연합회</td>
				                    <td>지구회장</td>
				                    <td>이기정</td>
				                    <td>㈜엑스캠프 대표이사</td>
				                </tr>
				                <tr>
				                    <td>지구치프커미셔너</td>
				                    <td>이선주</td>
				                    <td>서울신천초등학교 교장</td>
				                </tr>
				            </tbody>
				        </table>
				    </div>
				</div>
            </div>
            <!-- 조직도E -->
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>