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
            <h2>조직</h2>
            <p>글로벌 청소년 리더를 위한<br>스카우트 조직을 소개합니다.</p>
        </div>
        <div class="subContents">
            <ul class="tabNav organNav">
                <li class="active"><span>스카우트 구성</span></li>
                <li><span>중앙이사</span></li>
                <li><span>중앙커미셔너</span></li>
                <li><span>중앙명예회의</span></li>
                <li><span>중앙본부</span></li>
                <li><span>지방･특수연맹</span></li>
            </ul>
            <!-- 스카우트 구성 -->
            <div class="tabInner organContents active">
                <img src="/user_img/organ.png" alt="스카우트 구성도">
            </div>
            <!-- 중앙이사 -->
            <div class="tabInner">
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
                                <td colspan="2">총재</td>
                                <td>이찬희</td>
                                <td>법무법인 율촌 고문변호사</td>
                            </tr>
                            <tr>
                                <td rowspan="5" colspan="2">부총재</td>
                                <td>곽정현</td>
                                <td>(주)KG스틸 대표이사</td>
                            </tr>
                            <tr>
                                <td>오무현</td>
                                <td>케이버스건설 대표이사</td>
                            </tr>
                            <tr>
                                <td>이수경</td>
                                <td>(주)보고파워 대표이사</td>
                            </tr>
                            <tr>
                                <td>이항복</td>
                                <td>전&#41;건원엔지니어링 부사장</td>
                            </tr>
                            <tr>
                                <td>정준</td>
                                <td>쏠리드 대표이사</td>
                            </tr>
                            <tr>
                                <td colspan="2">중앙치프커미셔너</td>
                                <td>김시범</td>
                                <td>안동대학교 교수</td>
                            </tr>
                            <tr>
                                <td colspan="2">국제커미셔너</td>
                                <td>김근태</td>
                                <td>굿네이버스 글로벌파트너십센터 대외협력개발팀장</td>
                            </tr>
                            <tr>
                                <td colspan="2">중앙훈련원장</td>
                                <td>조동식</td>
                                <td>마누팩토리 대표</td>
                            </tr>
                            <tr>
                                <td colspan="2">사무총장</td>
                                <td>조경식</td>
                                <td>한국스카우트연맹 사무총장</td>
                            </tr>     
                            <tr>
                                <td rowspan="8" colspan="2">직선이사</td>
                                <td>김영미</td>
                                <td>한국여성변호사회 사무총장</td>
                            </tr>
                            <tr>
                                <td>박대권</td>
                                <td>한국학중앙연구원 / 한국학대학원 교수</td>
                            </tr>
                            <tr>
                                <td>신인순</td>
                                <td>수원과학대학교 교수</td>
                            </tr>
                            <tr>
                                <td>양재호</td>
                                <td>김앤장 법률사무소 변호사</td>
                            </tr>
                            <tr>
                                <td>유희수</td>
                                <td>전&#41;훈련교수회장</td>
                            </tr>
                            <tr>
                                <td>한동수</td>
                                <td>한양대학교 구리병원 교수</td>
                            </tr>
                            <tr>
                                <td>황용하</td>
                                <td>보스턴컨설팅그룹</td>
                            </tr>
                            <tr>
                                <td>이주석</td>
                                <td>가인치과원장</td>
                            </tr>
                            <tr>
                                <td rowspan="22">지방대표중앙이사</td>
                                <td>서울북부연맹</td>
                                <td>강형식</td>
                                <td>전&#41;서울노일초등학교 교감</td>
                            </tr>
                            <tr>
                                <td>서울남부연맹</td>
                                <td>문효순</td>
                                <td>서울남부연맹장</td>
                            </tr>
                            <tr>
                                <td>부산연맹</td>
                                <td>김희재</td>
                                <td>이사 / (주)천강 대표이사, 부산광역시 동구의회 의원</td>
                            </tr>
                            <tr>
                                <td>대구연맹</td>
                                <td>김영근</td>
                                <td>부연맹장 / 전&#41;달성교육지원청 교육장</td>
                            </tr>
                            <tr>
                                <td>인천연맹</td>
                                <td>신용우</td>
                                <td>시니어극단 애락</td>
                            </tr>
                            <tr>
                                <td>광주연맹</td>
                                <td>박선주</td>
                                <td>치프커미셔너 / 광주남초등학교 교감</td>
                            </tr>
                            <tr>
                                <td>대전연맹</td>
                                <td>차영환</td>
                                <td>부연맹장 / 전&#41;대전태평초등학교장</td>
                            </tr>
                            <tr>
                                <td>울산연맹</td>
                                <td>이삼희</td>
                                <td>부연맹장 / 전&#41;온남초등학교장</td>
                            </tr>
                            <tr>
                                <td>경기북부연맹</td>
                                <td>김원기</td>
                                <td>연맹장 / 전&#41;경기도의회 부의장</td>
                            </tr>
                            <tr>
                                <td>경기남부연맹</td>
                                <td>엄기영</td>
                                <td>연맹장 / 창대종합건설산업(주) 대표이사</td>
                            </tr>
                            <tr>
                                <td>강원연맹</td>
                                <td>정복현</td>
                                <td>연맹장 / 해성복지재단 대표이사</td>
                            </tr>
                            <tr>
                                <td>충북연맹</td>
                                <td>신성식</td>
                                <td>연맹장 / 덕수산업 이사</td>
                            </tr>
                            <tr>
                                <td>충남세종연맹</td>
                                <td>홍성관</td>
                                <td>부연맹장 / 전&#41;성성중학교 교감</td>
                            </tr>
                            <tr>
                                <td>전북연맹</td>
                                <td>김종학</td>
                                <td>거송로스타 MFG 대표</td>
                            </tr>
                            <tr>
                                <td>전남연맹</td>
                                <td>박정수</td>
                                <td>부연맹장 / 전&#41;작천초등학교 교장</td>
                            </tr>
                            <tr>
                                <td>경북연맹</td>
                                <td>손관수</td>
                                <td>연맹장 / (주)우성이엔씨 대표이사</td>
                            </tr>
                            <tr>
                                <td>경남연맹</td>
                                <td>정영식</td>
                                <td>연맹장 / 범한산업㈜ 대표이사</td>
                            </tr>
                            <tr>
                                <td>제주연맹</td>
                                <td>백남규</td>
                                <td>부연맹장</td>
                            </tr>
                            <tr>
                                <td>가톨릭연맹</td>
                                <td>이철우</td>
                                <td>크레딧팩 대표</td>
                            </tr>
                            <tr>
                                <td>원불교연맹</td>
                                <td>공성용</td>
                                <td>커미셔너 / 원불교 청소년국</td>
                            </tr>
                            <tr>
                                <td>불교연맹</td>
                                <td>성행스님(박철웅)</td>
                                <td>연맹장 / 의왕 청계사 주지</td>
                            </tr>
                            <tr>
                                <td>기독교연맹</td>
                                <td>서은배</td>
                                <td>연맹장 / 새인천교회 원로목사</td>
                            </tr>
                            <tr>
                                <td rowspan="2" colspan="2">감사</td>
                                <td>이은항</td>
                                <td>세무법인 삼환 대표세무사</td>
                            </tr>
                            <tr>
                                <td>정찬수</td>
                                <td>(주)핸리프로젝팅 대표이사</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- 중앙커미셔너 -->
            <div class="tabInner">
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
                                <td>중앙치프커미셔너</td>
                                <td>김시범</td>
                                <td>국립 안동대학교 교수</td>
                            </tr>
                            <tr>
                                <td>프로그램 담당 커미셔너</td>
                                <td>정우식</td>
                                <td>우하장학회 이사장</td>
                            </tr>
                            <tr>
                                <td>비버스카우트 담당 커미셔너</td>
                                <td>김유빛나라</td>
                                <td>KDI 국제정책대학원생</td>
                            </tr>
                            <tr>
                                <td>컵스카우트 담당 커미셔너</td>
                                <td>주덕중</td>
                                <td>대구 남덕초교 부장교사</td>
                            </tr>
                            <tr>
                                <td>스카우트 담당 커미셔너</td>
                                <td>박무성</td>
                                <td>핸즐 대표</td>
                            </tr>
                            <tr>
                                <td>벤처스카우트 담당 커미셔너</td>
                                <td>장형규</td>
                                <td>국립해양과학관 팀장</td>
                            </tr>
                            <tr>
                                <td>로버스카우트 담당 커미셔너</td>
                                <td>예승현</td>
                                <td>케이버스건설 사원</td>
                            </tr>
                            <tr>
                                <td>특별프로그램 담당 커미셔너</td>
                                <td>공석</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>조직1 담당 커미셔너</td>
                                <td>하남칠</td>
                                <td>하동교육지원청 과장</td>
                            </tr>
                            <tr>
                                <td>조직2 담당 커미셔너</td>
                                <td>명수진</td>
                                <td>아시아나항공 차장</td>
                            </tr>
                            <tr>
                                <td>홍보1 담당 커미셔너</td>
                                <td>엄덕기</td>
                                <td>춘천 우석초교 부장교사</td>
                            </tr>
                            <tr>
                                <td>홍보2 담당 커미셔너</td>
                                <td>박지민</td>
                                <td>찰나의 순간 CP</td>
                            </tr>
                            <tr>
                                <td>국제 커미셔너</td>
                                <td>김근태</td>
                                <td>굿네이버스 글로벌 파트너십센터 팀장</td>
                            </tr>
                            <tr>
                                <td rowspan="2">부국제 커미셔너</td>
                                <td>이동욱</td>
                                <td>뉴욕대학교 Stern 경영대학원 처장</td>
                            </tr>
                            <tr>
                                <td>임재연</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td>훈련원장(훈련커미셔너)</td>
                                <td>조동식</td>
                                <td>마누팩토리 대표</td>
                            </tr>
                            <tr>
                                <td rowspan="2">부훈련 커미셔너</td>
                                <td>박혁수</td>
                                <td>벧엘농산 대표</td>
                            </tr>
                            <tr>
                                <td>홍성수</td>
                                <td>자매수산 대표</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- 중앙명예회의 -->
            <div class="tabInner">
                <div class="organTableWrapper">
                    <table>
                        <colgroup>
                          <col width="15%" />
                          <col width="15%" />
                          <col width="70%" />
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
                                <td>의장</td>
                                <td>이항복</td>
                                <td>전&#41;건원엔지니어링 부사장</td>
                            </tr>
                            <tr>
                                <td>부의장</td>
                                <td>김시범</td>
                                <td>국립 안동대학교 교수</td>
                            </tr>
                            <tr>
                                <td rowspan="7">위원</td>
                                <td>조경식</td>
                                <td>한국스카우트연맹 사무총장</td>
                            </tr>
                            <tr>
                                <td>장병노</td>
                                <td>전) 샛별초등학교 교감</td>
                            </tr>
                            <tr>
                                <td>정준교</td>
                                <td>심리상담연구센터 나무 대표</td>
                            </tr>
                            <tr>
                                <td>조용달</td>
                                <td>전) 관양중학교 교사</td>
                            </tr>
                            <tr>
                                <td>최동현</td>
                                <td>부신산업 대표이사</td>
                            </tr>
                            <tr>
                                <td>최종규</td>
                                <td>전) 재경 달성군향우회 회장</td>
                            </tr>
                            <tr>
                                <td>한정녀</td>
                                <td>전) 시흥 시화초등학교 교감</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- 중앙본부 -->
            <div class="tabInner">
                <div class="organTableWrapper center">
                    <table>
                        <colgroup>
                          <col width="10%" />
                          <col width="10%" />
                          <col width="10%" />
                          <col width="10%" />
                          <col width="10%" />
                          <col width="50%" />
                        </colgroup>
                        <thead>
                            <tr>
                                <th colspan="2">소속·부서</th>
                                <th>직책</th>
                                <th>성명</th>
                                <th>사무실번호</th>
                                <th>업무내용</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td rowspan="20">사무총국</td>
                                <td></td>
                                <td>사무총장</td>
                                <td>조경식</td>
                                <td>02-6335-2000</td>
                                <td style="padding-left: 30px;">-</td>
                            </tr>
                            <tr>
                                <td rowspan="8">경영·지원팀</td>
                                <td>팀장</td>
                                <td>임은선</td>
                                <td>02-6335-2010</td>
                                <td rowspan="8" style="padding-left: 30px;">
                                    - 총회 및 이사회에 관한 업무<br>
                                    - 문서, 행정 및 보안, 인장관리에 관한 업무<br>
                                    - 인사 및 노무, 노사에 관한 업무<br>
                                    - 팀별 업무 조정에 관한 업무<br>
                                    - 직원복무(근태, 사무공간 관리, 출장 등)에 관한 업무<br>
                                    - 사무공간 관리에 관한 업무<br>
                                    - 직원복지, 교육 및 전문성 강화에 관한 업무<br>
                                    - 회관 임대 및 관리, 안전에 관한 업무<br>
                                    - 회계, 재정, 출납 및 세무에 관한 업무<br>
                                    - 지방·특수연맹 회계 업무지도 및 관리<br>
                                    - 자금관리 및 예산집행, 관재에 관한 업무<br>
                                    - 재정모금에 관한 업무<br>
                                    - 법인보호(보험)에 관한 업무<br>
                                    - 수련시설 위수탁 및 관리에 관한 업무<br>
                                    - 서삼릉야영장 운영, 관리에 관한 업무<br>
                                    - 소송 및 대외기관 협력에 관한 업무<br>
                                </td>
                            </tr>
                            <tr>
                                <td>국장</td>
                                <td>고대웅</td>
                                <td>031-967-9164</td>
                            </tr>
                            <tr>
                                <td>부장</td>
                                <td>박나영(육아휴직)</td>
                                <td>02-6335-2005</td>
                            </tr>
                            <tr>
                                <td>부장</td>
                                <td>김인철</td>
                                <td>02-6335-2019</td>
                            </tr>
                            <tr>
                                <td>과장</td>
                                <td>정종규</td>
                                <td>02-6335-2006</td>
                            </tr>
                            <tr>
                                <td>대리</td>
                                <td>염은지</td>
                                <td>02-6335-2014</td>
                            </tr>
                            <tr>
                                <td>사원</td>
                                <td>하재헌</td>
                                <td>02-6335-2005</td>
                            </tr>
                            <tr>
                                <td>주임</td>
                                <td>한철희</td>
                                <td>031-967-9164</td>
                            </tr>
                            <tr>
                                <td rowspan="6">조직·훈육팀</td>
                                <td>팀장</td>
                                <td>이종근</td>
                                <td>02-6335-2008</td>
                                <td rowspan="6" style="padding-left: 30px;">
                                    - 멤버십 및 평생회원 관리<br>
                                    - 대내 외 포상업무(장학스카우트 선발)<br>
                                    - 지방·특수연맹 조직 성장 전략<br>
                                    - IT(시스템 및 일반관리)<br>
                                    - 여행사업(사회공헌사업)<br>
                                    - 대내·외 홍보(언론, SNS, 홍보물)<br>
                                    - Youth Hero 선정 및 운영<br>
                                    - 연맹지 SCOUT 발행 및 상표권(SI) 관리<br>
                                    - 청소년(대원) 참여, 육성 프로그램 운영<br>
                                    - 세계연맹 프로그램 및 성인인력 정책 반영 및 적용 연구<br>
                                    - 스카우트 프로그램 연구, 개발, 보급, 운영지원<br>
                                    - 성인지도자 양성(훈련개설, 교범연구 등)<br>
                                    - 자격증(국가, 민간) 운영 및 보급<br>
                                    - 중앙커미셔너회 운영 및 지원<br>
                                    - 범스카우트중앙회 및 훈련교수회 지원<br>
                                    - 스카우트 도서 출판, 보급, 자료실 운영<br>
                                    - 지정연구단 운영
                                </td>
                            </tr>
                            <tr>
                                <td>국장</td>
                                <td>안기혁</td>
                                <td>02-6335-2017</td>
                            </tr>
                            <tr>
                                <td>부장</td>
                                <td>유학준</td>
                                <td>02-6335-2009</td>
                            </tr>
                            <tr>
                                <td>과장</td>
                                <td>서아름</td>
                                <td>02-6335-2012</td>
                            </tr>
                            <tr>
                                <td>대리</td>
                                <td>엄정섭</td>
                                <td>02-6335-2015</td>
                            </tr>
                            <tr>
                                <td>대리</td>
                                <td>김희정</td>
                                <td>02-6335-2018</td>
                            </tr>
                            <tr>
                                <td rowspan="4">국제·비전팀</td>
                                <td>팀장</td>
                                <td>고동일</td>
                                <td>02-6335-2007</td>
                                <td rowspan="4" style="padding-left: 30px;">
                                    - 중·장기 발전전략 수립 업무<br>
                                    - 사업계획 및 예산 수립·분석 업무<br>
                                    - 지방·특수연맹 평가 및 개선에 관한 업무<br>
                                    - 제 규정 제·개정 및 관리 업무<br>
                                    - 세계연맹 및 아·태 연맹에 관한 업무<br>
                                    - 국제교류 사업(파견·초청)업무<br>
                                    - 지방·특수연맹 간 국제 교류 행사 진흥 업무<br>
                                    - 한국잼버리, 아·태잼버리 및 국제페트롤잼버리<br>
                                    - 제25회 세계스카우트잼버리
                                </td>
                            </tr>
                            <tr>
                                <td>국장</td>
                                <td>임형근</td>
                                <td>02-6335-2002</td>
                            </tr>
                            <tr>
                                <td>국장</td>
                                <td>이해문</td>
                                <td>02-6335-2004</td>
                            </tr>
                            <tr>
                                <td>대리</td>
                                <td>남재연</td>
                                <td>02-6335-2016</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- 지방,특수연맹 -->
            <div class="tabInner">
                <div class="organTableWrapper">
                    <table>
                        <colgroup>
                          <col width="25%" />
                          <col width="25%" />
                          <col width="20%" />
                          <col width="30%" />
                        </colgroup>
                        <thead>
                            <tr>
                                <th>연맹</th>
                                <th>직책</th>
                                <th>성명</th>
                                <th>연락처</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td rowspan="2">서울북부</td>
                                <td>사무처장</td>
                                <td>(공 석)</td>
                                <td>02-755-6402</td>
                            </tr>
                            <tr>
                                <td>팀장</td>
                                <td>정경훈</td>
                                <td>02-752-1804</td>
                            </tr>
                            <tr>
                                <td rowspan="2">서울남부</td>
                                <td>사무처장</td>
                                <td>표종호</td>
                                <td>02-785-4716</td>
                            </tr>
                            <tr>
                                <td>과장</td>
                                <td>송석희</td>
                                <td>02-785-4716</td>
                            </tr>
                            <tr>
                                <td>부산</td>
                                <td>사무처장</td>
                                <td>남종우</td>
                                <td>051-467-3661</td>
                            </tr>
                            <tr>
                                <td rowspan="2">대구</td>
                                <td>사무처장</td>
                                <td>이명훈</td>
                                <td>053-743-0900</td>
                            </tr>
                            <tr>
                                <td>부장</td>
                                <td>박효진</td>
                                <td>053-743-0900</td>
                            </tr>
                            <tr>
                                <td>인천</td>
                                <td>사무처장 직무대리</td>
                                <td>최해경</td>
                                <td>032-762-5801</td>
                            </tr>
                            <tr>
                                <td rowspan="3">광주</td>
                                <td>사무처장</td>
                                <td>(공 석)</td>
                                <td>062-385-6500</td>
                            </tr>
                            <tr>
                                <td>부장</td>
                                <td>배수은</td>
                                <td>062-385-6500</td>
                            </tr>
                            <tr>
                                <td>대리</td>
                                <td>유상은</td>
                                <td>062-385-6500</td>
                            </tr>
                            <tr>
                                <td rowspan="2">대전</td>
                                <td>사무처장</td>
                                <td>김정국</td>
                                <td>042-252-3579</td>
                            </tr>
                            <tr>
                                <td>국장</td>
                                <td>김보람</td>
                                <td>042-252-3579</td>
                            </tr>
                            <tr>
                                <td>울산</td>
                                <td>사무처장</td>
                                <td>채정필</td>
                                <td>052-245-6801</td>
                            </tr>
                            <tr>
                                <td>경기북부</td>
                                <td>사무처장</td>
                                <td>이종근</td>
                                <td>031-853-2071</td>
                            </tr>
                            <tr>
                                <td rowspan="3">경기남부</td>
                                <td>사무처장</td>
                                <td>(공 석)</td>
                                <td>031-257-7761</td>
                            </tr>
                            <tr>
                                <td>국장</td>
                                <td>김홍기</td>
                                <td>031-257-7763</td>
                            </tr>
                            <tr>
                                <td>본부장(곤지암)</td>
                                <td>조인섭</td>
                                <td>031-764-1634</td>
                            </tr>
                            <tr>
                                <td>강원</td>
                                <td>사무처장</td>
                                <td>(공 석)</td>
                                <td>033-254-2653</td>
                            </tr>
                            <tr>
                                <td>충북</td>
                                <td>사무처장</td>
                                <td>이나영</td>
                                <td>043-266-4154</td>
                            </tr>
                            <tr>
                                <td rowspan="2">충남/세종</td>
                                <td>사무처장</td>
                                <td>고병현</td>
                                <td>041-635-1340</td>
                            </tr>
                            <tr>
                                <td>과장</td>
                                <td>이세미</td>
                                <td>041-635-1340</td>
                            </tr>
                            <tr>
                                <td rowspan="2">전북</td>
                                <td>사무처장</td>
                                <td>(공 석)</td>
                                <td>063-232-8100</td>
                            </tr>
                            <tr>
                                <td>부장</td>
                                <td>전혁준</td>
                                <td>063-232-8100</td>
                            </tr>
                            <tr>
                                <td rowspan="3">전남</td>
                                <td>사무처장</td>
                                <td>김수용</td>
                                <td>061-287-2727</td>
                            </tr>
                            <tr>
                                <td>과장</td>
                                <td>신성일</td>
                                <td>061-287-2728</td>
                            </tr>
                            <tr>
                                <td>대리</td>
                                <td>김민지</td>
                                <td>061-287-2729</td>
                            </tr>
                            <tr>
                                <td>경북</td>
                                <td>사무처장</td>
                                <td>(공 석)</td>
                                <td>053-941-9017</td>
                            </tr>
                            <tr>
                                <td rowspan="2">경남</td>
                                <td>사무처장</td>
                                <td>(공 석)</td>
                                <td>055-284-1165</td>
                            </tr>
                            <tr>
                                <td>대리</td>
                                <td>김혜림</td>
                                <td>055-284-1165</td>
                            </tr>
                            <tr>
                                <td>제주</td>
                                <td>사무처장</td>
                                <td>김은정</td>
                                <td>064-751-4234</td>
                            </tr>
                            <tr>
                                <td>가톨릭</td>
                                <td>사무처장 직무대리</td>
                                <td>김수연</td>
                                <td>070-4366-4871</td>
                            </tr>
                            <tr>
                                <td>원불교</td>
                                <td>사무처장 직무대리</td>
                                <td>송호연</td>
                                <td>070-7011-6880</td>
                            </tr>
                            <tr>
                                <td rowspan="2">불교</td>
                                <td>사무처장</td>
                                <td>수인스님</td>
                                <td>02-722-9033</td>
                            </tr>
                            <tr>
                                <td>팀장</td>
                                <td>조영아</td>
                                <td>02-722-9033</td>
                            </tr>
                            <tr>
                                <td rowspan="2">기독교</td>
                                <td>사무처장 직무대행</td>
                                <td>이재금</td>
                                <td>031-295-0004</td>
                            </tr>
                            <tr>
                                <td>사원</td>
                                <td>김금자</td>
                                <td>031-295-0004</td>
                            </tr>
                            <tr>
                                <td rowspan="2">국회스카우트의원연맹</td>
                                <td>국장</td>
                                <td>조용탁</td>
                                <td>02-786-4492</td>
                            </tr>
                            <tr>
                                <td>사원</td>
                                <td>하지원</td>
                                <td>02-786-4492</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>