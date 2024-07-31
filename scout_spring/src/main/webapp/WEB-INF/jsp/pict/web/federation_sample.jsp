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
                		<p>홈페이지를 찾아주신 여러분 안녕하십니까?<br>한국스카우트 대구연맹 홈페이지를 찾아 주셔서 감사합니다.<br>연맹장인 저와 모든 임원들이 합심하여 스카우트 목표들이 실천되고, 확산되어 나아갈 수 있도록 헌신 봉사할 것을 다짐합니다.<br>아울러『한국스카우트대구연맹 홈페이지』를 통하여 일선 대원과 지도자, 학부모님들에게 항상 유용한 정보를 알려드리며 스카우트운동에 대한 안내를 하오니, 많이 이용해 주시고 스카우트운동의 발전을 위하여 고견을 주시기 바랍니다.<br>『한국스카우트대구연맹 홈페이지』를 방문하시는 모든 분들의 가정에 평안과 건강과 행운이 늘 함께 하시기를 기원합니다.</p>                		
                		<p>한국스카우트대구연맹장 동 영 훈</p>
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
				                    <td>동영훈</td>
				                    <td>전.초등학교 교장</td>
				                </tr>
				                <tr>
				                <tr>
				                    <td rowspan="3">부연맹장</td>
				                    <td>김영근</td>
				                    <td>전.달성교육지원청 교육장</td>
				                </tr>
				                <tr>
				                    <td>권오철</td>
				                    <td>전.고등학교 교감</td>
				                </tr>
				                <tr>
				                    <td>임선규</td>
				                    <td>전.초등학교 교감</td>
				                </tr>
				                <tr>
				                    <td>치프커미셔너</td>
				                    <td>안경섭</td>
				                    <td>대구노변초등학교 교장</td>
				                </tr>
				                <tr>
				                    <td rowspan="9">직선이사</td>
				                    <td>박융곤</td>
				                    <td>전.초등학교 교감</td>
				                </tr>
				                <tr>
				                    <td>황미자</td>
				                    <td>전.초등학교 교장</td>
				                </tr>
				                <tr>
				                    <td>박순복</td>
				                    <td>전.초등학교 교장</td>
				                </tr>
				                <tr>
				                    <td>이종목</td>
				                    <td>대구교육대학교 교수</td>
				                </tr>
				                <tr>
				                    <td>이원우</td>
				                    <td>전.중학교 교장</td>
				                </tr>
				                <tr>
				                    <td>김장한</td>
				                    <td>전.중학교 교장</td>
				                </tr>
				                <tr>
				                    <td>박성해</td>
				                    <td>대구교동초등학교 교감</td>
				                </tr>
				                <tr>
				                    <td>김성권</td>
				                    <td>브러더커머스 대표</td>
				                </tr>
				                <tr>
				                    <td>임태섭</td>
				                    <td>그린연합신경외과 원장</td>
				                </tr>
				                <tr>
				                    <td rowspan="2">감사</td>
				                    <td>이동화</td>
				                    <td>전.초등학교 교사</td>
				                </tr>
				                <tr>
				                    <td>이기조</td>
				                    <td>전.중학교 교장</td>
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
				                    <td rowspan="15">커미셔너</td>
				                    <td>치프</td>
				                    <td>안경섭</td>
				                    <td>대구노변초등학교 교장</td>
				                </tr>
				                <tr>
				                    <td>프로그램</td>
				                    <td>류진영</td>
				                    <td>대구사월초등학교 교사</td>
				                </tr>
				                <tr>
				                    <td>비버스카우트</td>
				                    <td>양은정</td>
				                    <td>대구율원초등학교 교사</td>
				                </tr>
				                <tr>
				                    <td>컵스카우트</td>
				                    <td>윤성자</td>
				                    <td>직할대 대장</td>
				                </tr>
				                <tr>
				                    <td>스카우트</td>
				                    <td>임문희</td>
				                    <td>침산중학교 교감</td>
				                </tr>
				                <tr>
				                    <td>벤처스카우트</td>
				                    <td>이준구</td>
				                    <td>경북기계공업고등학교 교장</td>
				                </tr>
				                <tr>
				                    <td>로버스카우트</td>
				                    <td>송우일</td>
				                    <td>직할대 대장</td>
				                </tr>
				                <tr>
				                    <td>특별프로그램</td>
				                    <td>류병철</td>
				                    <td>직할대 대장</td>
				                </tr>
				                <tr>
				                    <td>조직1</td>
				                    <td>김응춘</td>
				                    <td>대서중학교 교장</td>
				                </tr>
				                <tr>
				                    <td>조직2</td>
				                    <td>김재한</td>
				                    <td>대구세현초등학교 교사</td>
				                </tr>
				                <tr>
				                    <td>홍보</td>
				                    <td>서희정</td>
				                    <td>대구대실초등학교 교사</td>
				                </tr>
				                <tr>
				                    <td>국제1</td>
				                    <td>김지연</td>
				                    <td>대구남명초등학교 교사</td>
				                </tr>
				                <tr>
				                    <td>국제2</td>
				                    <td>빈윤미</td>
				                    <td>대구소프트웨어마이스터고등학교 교사</td>
				                </tr>
				                <tr>
				                    <td>훈련1</td>
				                    <td>주덕중</td>
				                    <td>대구남덕초등학교 교사</td>
				                </tr>
				                <tr>
				                    <td>훈련2</td>
				                    <td>김지민</td>
				                    <td>대중금속공업고등학교 교사</td>
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
				                    <td rowspan="3">동부지구연합회</td>
				                    <td>지구회장</td>
				                    <td>지승욱</td>
				                    <td>대구율금초등학교 교장</td>
				                </tr>
				                <tr>
				                    <td>지구치프커미셔너</td>
				                    <td>-</td>
				                    <td>-</td>
				                </tr>
				                <tr>
				                    <td>지구사무국장</td>
				                    <td>-</td>
				                    <td>-</td>
				                </tr>
				                <tr>
				                    <td rowspan="3">서부지구연합회</td>
				                    <td>지구회장</td>
				                    <td>구본주</td>
				                    <td>대구칠곡초등학교 교장</td>
				                </tr>
				                <tr>
				                    <td>지구치프커미셔너</td>
				                    <td>-</td>
				                    <td>-</td>
				                </tr>
				                <tr>
				                    <td>지구사무국장</td>
				                    <td>-</td>
				                    <td>-</td>
				                </tr>
				                <tr>
				                    <td rowspan="3">남부지구연합회</td>
				                    <td>지구회장</td>
				                    <td>여환주</td>
				                    <td>대구덕인초등학교 교장</td>
				                </tr>
				                <tr>
				                    <td>지구치프커미셔너</td>
				                    <td>-</td>
				                    <td>-</td>
				                </tr>
				                <tr>
				                    <td>지구사무국장</td>
				                    <td>-</td>
				                    <td>-</td>
				                </tr>
				                <tr>
				                    <td rowspan="3">수성지구연합회</td>
				                    <td>지구회장</td>
				                    <td>황재수</td>
				                    <td>대구고산초등학교 교장</td>
				                </tr>
				                <tr>
				                    <td>지구치프커미셔너</td>
				                    <td>-</td>
				                    <td>-</td>
				                </tr>
				                <tr>
				                    <td>지구사무국장</td>
				                    <td>-</td>
				                    <td>-</td>
				                </tr>
				                <tr>
				                    <td rowspan="3">달성지구연합회</td>
				                    <td>지구회장</td>
				                    <td>정영호</td>
				                    <td>대구죽곡초등학교 교장</td>
				                </tr>
				                <tr>
				                    <td>지구치프커미셔너</td>
				                    <td>-</td>
				                    <td>-</td>
				                </tr>
				                <tr>
				                    <td>지구사무국장</td>
				                    <td>-</td>
				                    <td>-</td>
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