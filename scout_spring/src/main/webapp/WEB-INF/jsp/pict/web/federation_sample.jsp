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
        	<img src="https://scout.thepict.co.kr${vo.mainimg}" style="width:100%; margin-bottom:30px"/>
            <div class="greetingContainer">
            	<!-- 연맹소개글 -->
            	<div class="greetingText feders">
                	<div class="greetingTexts feders">
                		<p>새로운 100주년을 준비하는 한국스카우트연맹은 다양한 의견을 경청하겠습니다. 긴밀한 소통을 통하여 새로운 변화에 능동적으로 대응하면서 당면한 문제들을 해결해 나가겠습니다. 청소년 단체 활동의 중심에서 그 역할과 책임에 최선을 다 하겠습니다.</p>
                		<p>스카우트 활동의 혁신을 위하여 새로운 전략과 시스템을 구축하여 한국스카우트연맹과 각 지방 연맹이 더욱 효율적으로 활동할 수 있도록 노력하겠습니다.</p>
                		<p>현재 스카우트 활동은 대내외적으로 어려운 환경에 놓여있습니다. 이를 극복하기 위하여 안정적으로 재원을 조달하고, 우리 사회가 더욱 번영하고 지속 가능한 방향으로 발전할 수 있도록 만들겠습니다.</p>
                		<p>세상을 발전시키는 의미 있는 일에 동참하여 주신 한국스카우트 가족 여러분께 다시 한번 진심으로 감사드리며, 앞으로도 더욱 큰 관심과 애정을 부탁드립니다. 감사합니다.</p>
               		</div>
                </div>
                <span class="feders"><img src="https://scout.thepict.co.kr${vo.leaderimg}" alt="연맹장사진"></span>
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
				                    <td>정복현</td>
				                    <td>강원연맹 연맹장</td>
				                </tr>
				                <tr>
				                <tr>
				                    <td rowspan="3">부연맹장</td>
				                    <td>동석범</td>
				                    <td>강원연맹</td>
				                </tr>
				                <tr>
				                    <td>김종찬</td>
				                    <td>강원연맹</td>
				                </tr>
				                <tr>
				                    <td>최인순</td>
				                    <td>강원연맹</td>
				                </tr>
				                <tr>
				                    <td>치프커미셔너</td>
				                    <td>이청학</td>
				                    <td>강원연맹</td>
				                </tr>
				                <tr>
				                    <td rowspan="19">직선이사</td>
				                    <td>김영조</td>
				                    <td>호반지역대 대장</td>
				                </tr>
				                <tr>
				                    <td>김기덕</td>
				                    <td>강원특별자치도 세계잼버리수련장 장</td>
				                </tr>
				                <tr>
				                    <td>홍의재</td>
				                    <td>강원연맹</td>
				                </tr>
				                <tr>
				                    <td>이옥균</td>
				                    <td>강원연맹</td>
				                </tr>
				                <tr>
				                    <td>윤선희</td>
				                    <td>강원연맹</td>
				                </tr>
				                <tr>
				                    <td>권기준</td>
				                    <td>강원연맹</td>
				                </tr>
				                <tr>
				                    <td>김동계</td>
				                    <td>경포대지역대 대장</td>
				                </tr>
				                <tr>
				                    <td>심락현</td>
				                    <td>한밝지역대 대장</td>
				                </tr>
				                <tr>
				                    <td>김진규</td>
				                    <td>호반지역대 대장</td>
				                </tr>
				                <tr>
				                    <td>김영권</td>
				                    <td>설악지역대 대장</td>
				                </tr>
				                <tr>
				                    <td>이점동</td>
				                    <td>한밝지역대 대장</td>
				                </tr>
				                <tr>
				                    <td>엄덕기</td>
				                    <td>호반지역대 대장</td>
				                </tr>
				                <tr>
				                    <td>오미영</td>
				                    <td>마루지역대 대장</td>
				                </tr>
				                <tr>
				                    <td>황재익</td>
				                    <td>강원연맹</td>
				                </tr>
				                <tr>
				                    <td>유호종</td>
				                    <td>강원연맹</td>
				                </tr>
				                <tr>
				                    <td>김학현</td>
				                    <td>성수고등학교 교장</td>
				                </tr>
				                <tr>
				                    <td>한우석</td>
				                    <td>주영초등학교 교감</td>
				                </tr>
				                <tr>
				                    <td>권순조</td>
				                    <td>설악지역대 대장</td>
				                </tr>
				                <tr>
				                    <td>변홍준</td>
				                    <td>호반지역대 대장</td>
				                </tr>
				                <tr>
				                    <td rowspan="2">감사</td>
				                    <td>이은정</td>
				                    <td>강원연맹</td>
				                </tr>
				                <tr>
				                    <td>조한나</td>
				                    <td>강원연맹</td>
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
				                    <td rowspan="18">커미셔너</td>
				                    <td>치프</td>
				                    <td>이청학</td>
				                    <td>강원연맹</td>
				                </tr>
				                <tr>
				                    <td>프로그램</td>
				                    <td>양승덕</td>
				                    <td>강원연맹</td>
				                </tr>
				                <tr>
				                    <td>비버스카우트</td>
				                    <td>이윤중</td>
				                    <td>길웰지역대 대장</td>
				                </tr>
				                <tr>
				                    <td>컵스카우트</td>
				                    <td>최길승</td>
				                    <td>장호초등학교 교장</td>
				                </tr>
				                <tr>
				                    <td>스카우트</td>
				                    <td>김상윤</td>
				                    <td>동해광희중학교 교장</td>
				                </tr>
				                <tr>
				                    <td>벤처스카우트</td>
				                    <td>김응식</td>
				                    <td>곡운구곡대 대장</td>
				                </tr>
				                <tr>
				                    <td>로버스카우트</td>
				                    <td>주명림</td>
				                    <td>호반지역대 대장</td>
				                </tr>
				                <tr>
				                    <td>특별프로그램</td>
				                    <td>김동수</td>
				                    <td>양양초등학교 교장</td>
				                </tr>
				                <tr>
				                    <td>조직1</td>
				                    <td>김삼진</td>
				                    <td>경포대지역대 대장</td>
				                </tr>
				                <tr>
				                    <td>조직2</td>
				                    <td>김원기</td>
				                    <td>한밝지역대 대장</td>
				                </tr>
				                <tr>
				                    <td>홍보1</td>
				                    <td>김장회</td>
				                    <td>강원연맹</td>
				                </tr>
				                <tr>
				                    <td>홍보2</td>
				                    <td>최영희</td>
				                    <td>경포대지역대 대장</td>
				                </tr>
				                <tr>
				                    <td>홍보3</td>
				                    <td>김대선</td>
				                    <td>한밝지역대 대장</td>
				                </tr>
				                <tr>
				                    <td>국제1</td>
				                    <td>김광호</td>
				                    <td>대관령지역대 대장</td>
				                </tr>
				                <tr>
				                    <td>국제2</td>
				                    <td>임종민</td>
				                    <td>한밝지역대 대장</td>
				                </tr>
				                <tr>
				                    <td>훈련1</td>
				                    <td>김상종</td>
				                    <td>강원연맹</td>
				                </tr>
				                <tr>
				                    <td>훈련2</td>
				                    <td>권기훈</td>
				                    <td>한밝지역대 대장</td>
				                </tr>
				            </tbody>
				        </table>
				    </div>
				</div>
				<div class="tabInnerSub">
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
				                    <th>소속</th>
				                </tr>
				            </thead>
				            <tbody>
				                <tr>
				                    <td>지방명예회의위원</td>
				                    <td>금연희</td>
				                    <td>경포대지역대 대장</td>
				                </tr>
				            </tbody>
				        </table>
				    </div>
				</div>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>