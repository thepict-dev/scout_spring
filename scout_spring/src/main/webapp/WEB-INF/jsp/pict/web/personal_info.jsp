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
        <div class="noticeTop">
            <h2>개인정보취급방침</h2>
        </div>
        <div class="subContents">
            <div class="etcSubText">
                <span><span style="color: var(--purple-500);">한국스카우트연맹(이하 "연맹"이라 함)</span> 이 취급하는 모든 개인정보는 관련법령에 근거하거나 정보주체의 동의에 의하여 수집 보유 및 처리되고 있습니다.</span>
                <span>[공공기관의 개인정보보호에 관한 법률]은 이러한 개인정보의 취급에 대한 일반적 규범을 제시하고 있으며, 연맹은 이러한 법령의 규정에 따라 수집·보유 및 처리하는 개인정보를 공공업무의 적절한 수행과 국민의 권익을 보호하기 위해 적법하고 적정하게 취급할 것입니다. 또한, 연맹은 관련 법령에서 규정한 바에 따라 연맹에서 보유하고 있는 개인정보에 대한 열람청구권 및 정정청구권 등 여러분의 권익을 존중합니다.</span>
            </div>
            <div class="tabInner ruleContents active">
                <div class="blockContainer">
                    <h3 class="contentTitle personal"><한국스카우트연맹> 홈페이지에서의 개인정보보호</h3>
                    <div class="contentDesc personal">
                        <div class="textsWrapper rules personal">
                            <p><span>개인정보보호방침은 현행 [공공기관의개인정보보호에관한법률] 및 [공공기관의 개인정보보호를 위한 기본지침]에 근거를 두고 있습니다. 연맹에서 운영하고 있는 웹사이트는 다음과 같으며, 이 방침은 별도의 설명이 없는 한 연맹에서 운용하는 모든 웹사이트에 적용됨을 알려드립니다. 다만, 정보통신망이용촉진및개인정보보호에관한법률 등의 관계법령에 의한 소관업무를 위하여 연맹내 담당조직에서 별도의 개인정보보호방침을 제정·시행하는 경우 이에 따르고, 이를 해당조직이 운영하는 웹사이트에 게시함을 알려드립니다.</span></p>
                            <div class="bullets">
                                <p><span>•</span>www.scout.or.kr(한국스카우트연맹)<br>OOO.scout.or.kr (서브 도메인을 사용하는 한국스카우트 지방연맹 및 수련시설)</p>
                            </div>
                        </div>
                        <div class="textsWrapper rules personal">
                            <p>수집하는 개인정보의 항목 및 수집방법</p>
                            <p><span>우리연맹은 회원가입, 훈련 및 행사 참가신청, 각종 서비스의 제공을 위해 연맹에서 필요한 최소한의 개인정보를 수집하며, 이에 대한 동의를 얻고 있습니다. 수집하는 개인정보 항목은 다음과 같습니다.</span></p>
                            <div class="bullets">
                                <p><span>•</span>필수 항목 : 이름, 법정 생년월일, 성별, 스카우트회원번호, 홈페이지아이디, 비밀번호, 스카우트 활동 구분, 소속, 이메일 주소, 외국인/내국인 여부</p>
                                <p><span>•</span>선택 항목 : 직업, 주소, 네이버 아이디</p>
                            </div>
                        </div>
                        <div class="textsWrapper rules personal">
                            <p>자동으로 수집·저장되는 개인정보</p>
                            <p><span>여러분이 연맹 홈페이지를 이용할 경우 다음의 정보는 자동적으로 수집·저장됩니다.</span></p>
                            <div class="bullets">
                                <p><span>•</span>이용자의 인터넷서버 도메인과 홈페이지를 방문할 때 거친 웹사이트의 주소</p>
                                <p><span>•</span>이용자의 브라우저 종류 및 OS</p>
                                <p><span>•</span>방문일시 등</p>
                            </div>
                            <p><span>위와 같이 자동 수집·저장되는 정보는 이용자 여러분에게 보다 나은 서비스를 제공하기 위해 홈페이지의 개선과 보완을 위한 통계분석, 이용자와 웹사이트간의 원활한 의사소통 등을 위해 이용되어질 것입니다. 다만, 법령의 규정에 따라 이러한 정보를 제출하게 될 경우도 있다는 것을 유념하시기 바랍니다.</span></p>
                        </div>
                        <div class="textsWrapper rules personal">
                            <p>개인정보의 보유 및 이용 기간</p>
                            <p><span>원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.</span></p>
                            <div class="bullets">
                                <p><span>•</span>등록 및 대활동 운영, 행사 참가자 관리</p>
                                <p><span>•</span>과거 활동기록 및 당해연도 활동기록 간의 동일자 식별(등록, 행사참가, 포상, 보험청구 등)</p>
                                <p><span>•</span>추후 회원 본인이 활동기록을 필요로 할 경우에 대한 준비</p>
                                <p><span>•</span>(재)해피빈과의 협력 프로젝트 '유스필란트로피 클럽' 운영(네이버 메일)</p>
                                <p><span>•</span>2년주기 마다 개인정보 제공 재동의를 하지 않은 회원과, 홈페이지내 회원 탈퇴를 진행한 경우 회원삭제 및 회원탈퇴와 동시에 개인정보도 파기 됩니다.</p>
                            </div>
                        </div>
                        <div class="textsWrapper rules personal">
                            <p>링크 사이트 웹 페이지</p>
                            <p><span>연맹이 운영하는 웹사이트에 포함된 링크 또는 배너를 클릭하여 다른 사이트로 옮겨갈 경우 개인정보보호방침은 그 사이트 운영기관이 게시한 방침이 적용됨으로 새로 방문한 사이트의 방침을 확인하시기 바랍니다.</span></p>
                        </div>
                        <div class="textsWrapper rules personal">
                            <p>웹사이트 이용 중 다른 사람의 개인정보 취득</p>
                            <p><span>연맹이 운영하는 웹사이트에서 이메일 주소 등 식별할 수 있는 개인정보를 취득하여서는 아니 됩니다.</span></p>
                            <p><span>• 기타 부정한 방법으로 이러한 개인정보를 열람 또는 제공받은 자는 [공공기관의 개인정보보호에 관한법률] 제23조의 규정에 의하여 처벌을 받을 수 있습니다.</span></p>
                        </div>
                        <div class="textsWrapper rules personal">
                            <p>연맹 웹사이트 이용중 개인정보 침해사항의 신고</p>
                            <p><span>연맹의 웹사이트 이용 중 개인정보의 유출 가능성 등 정보주체의 권익이 침해될 우려가 있는 사실을 발견하였을 경우는 다음의 연락처로 알려주시기 바랍니다.</span></p>
                            <div class="bullets">
                                <p><span>•</span>개인정보침해신고센터<br>전화번호 : 1336<br>홈페이지 : http://www.cyberprivacy.or.kr</p>
                                <p><span>•</span>대검찰청 인터넷범죄수사센터<br>전화번호 : 02-3480-3600<br>홈페이지 : http://icic.sppo.go.kr</p>
                                <p><span>•</span>경찰청 사이버테러대응센터<br>전화번호 : 02-392-0330<br>홈페이지 : http://www.ctrc.go.kr</p>
                            </div>
                            <div class="bullets">
                                <p><span>•</span>한국스카우트연맹 개인정보보호책임관<br>이메일 : scoutshq@scout.or.kr<br>전화번호 : 02-6335-2000<br>팩스 : 02-6335-2020<br>주소 : 서울시 영등포구 여의도동 18-3 한국스카우트연맹 10층</p>
                            </div>
                        </div>
                        <div class="textsWrapper rules personal">
                            <p>개인정보의 이용 및 제공의 제한</p>
                            <p><span>연맹은 수집·보유하고 있는 개인정보의 이용 및 제공을 엄격히 제한하고 있습니다. [공공기관의개인정보보호에관한법률] 제10조(이용 및 제공의 제한)에 의해 개인정보를 보유목적 외의 목적으로 이용하거나 다른 기관에 제공하는 경우는 다음과 같습니다.</span></p>
                            <div class="bullets">
                                <p><span>•</span>법률에 의해 보유기관 내부에서 이용하거나 보유기관 이외의 자에게 제공하는 경우</p>
                                <p><span>•</span>정보주체의 동의가 있거나 또는 정보주체에게 제공하는 경우</p>
                                <p><span>•</span>법률에서 정하는 소관업무를 수행하기 위해 당해 처리정보를 이용할 상당한 이유가 있는 경우</p>
                                <p><span>•</span>조약 기타 국제협정의 이행을 위해 외국정부 또는 국제기구에 제공하는 경우</p>
                                <p><span>•</span>통계작성 및 학술연구 등의 목적을 위해 특정개인을 식별할 수 없는 형태로 제공하는 경우</p>
                                <p><span>•</span>정보주체 또는 그 법정대리인이 의사표시를 할 수 없는 상태로 놓여 있거나 주소불명 등으로 동의를 할 수 없는 경우로써 정보 주체 외의 자에게 제공하는 것이 명백히 정보주체에게 이익이 된다고 인정되는 경우</p>
                                <p><span>•</span>범죄의 수사와 공소의 제기 및 유지에 필요한 경우</p>
                                <p><span>•</span>법원의 재판업무수행을 위하여 필요한 경우</p>
                                <p><span>•</span>기타 법령에 정하는 특별한 사유가 있는 경우</p>
                            </div>
                            <p><span>연맹은 개인정보의 이용 및 제공에 있어 관계법령을 엄수하여 부당하게 이용되지 않도록 노력하겠습니다.</span></p>
                        </div>
                        <div class="textsWrapper rules personal">
                            <p>개인정보보호책임자의 이메일 등 연락처</p>
                            <p><span>연맹은 개인정보의 적법성 및 절차의 적정성을 확보하여 국민의 권익보호 및 공공업무의 적정한 수행을 도모하기 위해 개인정보보호책임자를 다음과 같이 지정·운영하고 있습니다. 연맹이 보유하고 있는 개인정보화일과 연맹의 개인정보보호방침 등에 관한 문의·확인 등은 다음의 연락처로 하여 주시기 바랍니다.</span></p>
                            <div class="bullets">
                                <p><span>•</span>한국스카우트연맹 개인정보보호책임관<br>이메일 : scoutshq@scout.or.kr<br>전화번호 : 02-6335-2000<br>팩스 : 02-6335-2020<br>주소 : 서울시 영등포구 여의도동 18-3 한국스카우트연맹 10층</p>
                            </div>
                            <p><span>법령의 규정 등에 의하여 수집한 개인정보가 수집 및 처리목적에 맞게 이용될 수 있도록 항시 지도·감독하겠습니다.</span></p>
                        </div>
                        <div class="textsWrapper rules personal">
                            <p>개인정보 제3자 취급위탁 동의</p>
                            <p><span>원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다.</span></p>
                            <div class="bullets">
                                <p><span>•</span>위탁업체 : (주)지투이정보기술<br>위탁업무 : 시스템운영</p>
                            </div>
                        </div>
                        <div class="textsWrapper rules personal">
                            <p>기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.</p>
                            <p><span>1. 개인분쟁조정위원회 (www.1336.or.kr/1336)</span></p>
                            <p><span>2. 정보보호마크인증위원회 (www.eprivacy.or.kr/02-580-0533~4)</span></p>
                            <p><span>3. 대검찰청 인터넷범죄수사센터 (http://icic.sppo.go.kr/02-3480-3600)</span></p>
                            <p><span>4. 경찰청 사이버테러대응센터 (www.ctrc.go.kr/02-392-0330)</span></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>