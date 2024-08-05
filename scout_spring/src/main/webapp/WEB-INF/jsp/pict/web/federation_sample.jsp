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
                		<p>한국스카우트연맹은 세계적으로 검증된 청소년 육성방법인 스카우트 방법에 의한 교육과 훈련을 통해 자립정신과, 생활력 향상, 민주시민으로서의 자질을 기르고 육성하는 것을 목적으로 하고 있습니다.</p>
                		<p>우리연맹은 스카우트 활동을 통하여 청소년들이 더욱 건강하고 밝게 성장 할 수 있도록 노력하고 있습니다.</p>
                		<p>변함없는 관심과 애정으로 우리 연맹이 발전하는 모습을 지켜봐주십시오.</p>
                		<p>사랑하는 스카우트 가족 여러분의 가정에 행복이 가득하시길 기원합니다.</p>
                		<p>한국스카우트충북연맹 연맹장 신 성 식</p>
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
				                    <td rowspan="2">고문</td>
				                    <td>박근하</td>
				                    <td>충북연맹</td>
				                </tr>
				                <tr>
				                <tr>
				                    <td>최좌석</td>
				                    <td>델코 중부영업소 대표</td>
				                </tr>
				                <tr>
				                	<td>연맹장</td>
				                    <td>신성식</td>
				                    <td>덕수산업(주) 이사</td>
				                </tr>
				                <tr>
				                	<td rowspan="3">부연맹장</td>
				                    <td>장병노</td>
				                    <td>충북연맹</td>
				                </tr>
				                <tr>
				                    <td>김낙중</td>
				                    <td>충북연맹</td>
				                </tr>
				                <tr>
				                    <td>최인락</td>
				                    <td>충북연맹</td>
				                </tr>
				                <tr>
				                	<td>치프커미셔너</td>
				                    <td>안성표</td>
				                    <td>오송고등학교 교장</td>
				                </tr>
				                <tr>
				                    <td rowspan="14">직선이사</td>
				                    <td>강규석</td>
				                    <td>충북공업고등학교 교감</td>
				                </tr>
				                <tr>
				                    <td>김용규</td>
				                    <td>진천청소년수련원</td>
				                </tr>
				                <tr>
				                    <td>김일환</td>
				                    <td>충북연맹</td>
				                </tr>
				                <tr>
				                    <td>김재용</td>
				                    <td>인코리아금융서비스(주) 지점장</td>
				                </tr>
				                <tr>
				                    <td>김현주</td>
				                    <td>충북연맹</td>
				                </tr>
				                <tr>
				                    <td>박길홍</td>
				                    <td>충북연맹</td>
				                </tr>
				                <tr>
				                    <td>이은진</td>
				                    <td>충북 보은교육지원청 교육장</td>
				                </tr>
				                <tr>
				                    <td>이재완</td>
				                    <td>Cleantek 대표</td>
				                </tr>
				                <tr>
				                    <td>이중용</td>
				                    <td>충북연맹</td>
				                </tr>
				                <tr>
				                    <td>이현우</td>
				                    <td>Klc SD산업개발 대표</td>
				                </tr>
				                <tr>
				                    <td>한정수</td>
				                    <td>용암중학교 교사</td>
				                </tr>
				                <tr>
				                    <td>우영필</td>
				                    <td>25시 해장국(청대점) 대표</td>
				                </tr>
				                <tr>
				                    <td>조학근</td>
				                    <td>옥천군보건소</td>
				                </tr>
				                <tr>
				                    <td>이영호</td>
				                    <td>아세아시멘트(주)</td>
				                </tr>
				                <tr>
				                    <td>감사</td>
				                    <td>나경흠</td>
				                    <td>충북연맹</td>
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
				                    <td rowspan="16">커미셔너</td>
				                    <td>치프</td>
				                    <td>안성표</td>
				                    <td>오송고등학교 교장</td>
				                </tr>
				                <tr>
				                    <td>프로그램</td>
				                    <td>전승진</td>
				                    <td>코레일 오송</td>
				                </tr>
				                <tr>
				                    <td>비버스카우트</td>
				                    <td>김경옥</td>
				                    <td>정현테크 이사</td>
				                </tr>
				                <tr>
				                    <td>컵스카우트</td>
				                    <td>최형옥</td>
				                    <td>충청북도교육청</td>
				                </tr>
				                <tr>
				                    <td>스카우트</td>
				                    <td>조상범</td>
				                    <td>동성초등학교 교사</td>
				                </tr>
				                <tr>
				                    <td>벤처스카우트</td>
				                    <td>정태영</td>
				                    <td>제천시청</td>
				                </tr>
				                <tr>
				                    <td>로버스카우트</td>
				                    <td>전소자</td>
				                    <td>충북보건과학대학교</td>
				                </tr>
				                <tr>
				                    <td>특별프로그램</td>
				                    <td>이상만</td>
				                    <td>챌린져 대표</td>
				                </tr>
				                <tr>
				                    <td>조직1</td>
				                    <td>조준우</td>
				                    <td>충북연맹</td>
				                </tr>
				                 <tr>
				                    <td>조직2</td>
				                    <td>윤원근</td>
				                    <td>충북연맹</td>
				                </tr>
				                <tr>
				                    <td>홍보1</td>
				                    <td>곽재분</td>
				                    <td>충북연맹</td>
				                </tr>
				                <tr>
				                    <td>홍보2</td>
				                    <td>오일환</td>
				                    <td>충북연맹</td>
				                </tr>
				                <tr>
				                    <td>국제1</td>
				                    <td>김선웅</td>
				                    <td>충북대학교</td>
				                </tr>
				                <tr>
				                    <td>국제2</td>
				                    <td>김정연</td>
				                    <td>제천시청소년센터</td>
				                </tr>
				                <tr>
				                    <td>훈련1</td>
				                    <td>이익노</td>
				                    <td>충북연맹</td>
				                </tr>
				                <tr>
				                    <td>훈련2</td>
				                    <td>김상현</td>
				                    <td>비와이케미칼 대표</td>
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
				                    <td rowspan="4" colspan="2">명예회의 위원</td>
				                    <td>김기춘</td>
				                    <td>충북연맹</td>
				                </tr>
				                <tr>
				                    <td>민인기</td>
				                    <td>충북연맹</td>
				                </tr>
				                <tr>
				                    <td>오명옥</td>
				                    <td>충북연맹</td>
				                </tr>
								<tr>
				                    <td>정한영</td>
				                    <td>충북연맹</td>
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