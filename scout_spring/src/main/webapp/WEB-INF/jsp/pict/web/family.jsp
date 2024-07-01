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
            <h2>함께하는 기관, 기업</h2>
            <p>많은 기관과 기업이<br>스카우트와 함께 하고 있습니다.</p>
        </div>
        <div class="subContents">
            <div class="flexContainer">
                <h3 class="contentTitle">함께하는<br>기관 및 기업</h3>
                <ul class="localLocations family">
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/family1.gif" alt="기관기업엠블럼"></span>
                            <div class="localTexts family">
                                <h3>여성가족부</h3>
                                <p>청소년활동을 주관하고 지원하는 소관부처로서 스카우트운동을 포함한 다양한 청소년단체의 사업과 활동을 지원합니다.</p>
                            </div>
                        </div>
                        <a href="http://www.mogef.go.kr" target="_blank" title="새창이동"><img src="/user_img/linkto.png" alt="링크이동"></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/family2.gif" alt="기관기업엠블럼"></span>
                            <div class="localTexts family">
                                <h3>한국청소년단체협의회</h3>
                                <p>국내외 청소년단체 상호간의 협력과 교류를 지원하는 협회입니다. 2013년 현재 73개 단체가 소속되어 있습니다.</p>
                            </div>
                        </div>
                        <a href="http://www.ncyok.or.kr" target="_blank" title="새창이동"><img src="/user_img/linkto.png" alt="링크이동"></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/family3.gif" alt="기관기업엠블럼"></span>
                            <div class="localTexts family">
                                <h3>한국스카우트지원재단</h3>
                                <p>활동용품 개발 및 보급, 장학 등 한국스카우트연맹을 재정적으로 지원하기 위한 고유 목적사업 수행을 위해 설립된 재단입니다.</p>
                            </div>
                        </div>
                        <a href="http://www.scoutshop.or.kr" target="_blank" title="새창이동"><img src="/user_img/linkto.png" alt="링크이동"></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/family4.gif" alt="기관기업엠블럼"></span>
                            <div class="localTexts family">
                                <h3>국회스카우트의원연맹</h3>
                                <p>스카우트 출신 위원들로 구성된 의원조직으로 청소년을 위한 정책개발과 입법활동을 통해 결성된 단체입니다.</p>
                            </div>
                        </div>
                        <a href="http://www.pscout.or.kr" target="_blank" title="새창이동"><img src="/user_img/linkto.png" alt="링크이동"></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/family5.gif" alt="기관기업엠블럼"></span>
                            <div class="localTexts family">
                                <h3>농협</h3>
                                <p>청소년의 올바른 식생활 및 농업의 가치에 대한 이해증진을 위한 식(食)사랑 농(農)사랑 어린이 서포터즈에 대해 공동협력을 추진합니다.</p>
                            </div>
                        </div>
                        <a href="http://www.nonghyup.com" target="_blank" title="새창이동"><img src="/user_img/linkto.png" alt="링크이동"></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/family6.gif" alt="기관기업엠블럼"></span>
                            <div class="localTexts family">
                                <h3>법무부</h3>
                                <p>법률에 대한 이해와 재미를 돕는 법사랑 사이버랜드의 콘텐츠를 한국스카우트연맹에서 추진하는 학교폭력예방 및 근절사업에 제공합니다.</p>
                            </div>
                        </div>
                        <a href="http://www.moj.go.kr" target="_blank" title="새창이동"><img src="/user_img/linkto.png" alt="링크이동"></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/family7.gif" alt="기관기업엠블럼"></span>
                            <div class="localTexts family">
                                <h3>아워홈</h3>
                                <p>청소년의 복지 증진 및 세계잼버리 유치를 포함한 각종 대내외 활동에 음식사업 관련 협력업체로 참여하고 있는 종합요리식품기업입니다.</p>
                            </div>
                        </div>
                        <a href="http://www.ourhome.co.kr" target="_blank" title="새창이동"><img src="/user_img/linkto.png" alt="링크이동"></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/family8.gif" alt="기관기업엠블럼"></span>
                            <div class="localTexts family">
                                <h3>동아오츠카</h3>
                                <p>잼버리, 휴전선 155마일 횡단 등 다양한 스카우트 사업을 지원하는 21세기 식음료 전문업체입니다.</p>
                            </div>
                        </div>
                        <a href="http://www.donga-otsuka.co.kr" target="_blank" title="새창이동"><img src="/user_img/linkto.png" alt="링크이동"></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/family9.gif" alt="기관기업엠블럼"></span>
                            <div class="localTexts family">
                                <h3>메리츠화재</h3>
                                <p>스카우트 활동에 대한 배상책임보험 계약 기업으로서 다양한 분야에서 스카우트운동을 지원하고 있습니다.</p>
                            </div>
                        </div>
                        <a href="http://www.meritzfire.com" target="_blank" title="새창이동"><img src="/user_img/linkto.png" alt="링크이동"></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/family10.gif" alt="기관기업엠블럼"></span>
                            <div class="localTexts family">
                                <h3>미래엔 컬처그룹</h3>
                                <p>(구)대한교과서의 새로운 이름으로서, 스카우트의 교육적 효과 및 다양한 부문에서의 지원을 위해 협약을 체결한 교육출판 전문기업입니다.</p>
                            </div>
                        </div>
                        <a href="http://www.mirae-n.com" target="_blank" title="새창이동"><img src="/user_img/linkto.png" alt="링크이동"></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/family11.gif" alt="기관기업엠블럼"></span>
                            <div class="localTexts family">
                                <h3>YBM시사닷컴 평생교육원</h3>
                                <p>한국스카우트연맹과의 협력을 통해 연맹 회원 대상으로 국가공인 청소년지도자 자격증 온라인 학습과정을 지원하는 학점은행제 원격교육 훈련기관입니다.</p>
                            </div>
                        </div>
                        <a href="http://www.ybmhakjum.com/application/application_process4_2.asp" target="_blank" title="새창이동"><img src="/user_img/linkto.png" alt="링크이동"></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/family12.gif" alt="기관기업엠블럼"></span>
                            <div class="localTexts family">
                                <h3>유한재단</h3>
                                <p>청소년들의 건전한 육성을 위하여 우리 연맹을 지속적으로 후원합니다.</p>
                            </div>
                        </div>
                        <a href="http://www.yuhanfoundation.or.kr/Main/" target="_blank" title="새창이동"><img src="/user_img/linkto.png" alt="링크이동"></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/family13.gif" alt="기관기업엠블럼"></span>
                            <div class="localTexts family">
                                <h3>한국에너지기술연구원</h3>
                                <p>우리나라의 새로운 에너지원 발굴 및 실용화를 위한 연구를 전문분야로 하고 있으며 관련 교육 프로그램을 우리 연맹에 제공하고 있습니다.</p>
                            </div>
                        </div>
                        <a href="http://www.kier.re.kr" target="_blank" title="새창이동"><img src="/user_img/linkto.png" alt="링크이동"></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/family14.gif" alt="기관기업엠블럼"></span>
                            <div class="localTexts family">
                                <h3>안전보건공단</h3>
                                <p>일하는 사람들의 생명과 건강 보호에 앞장서고 있으며 우리 연맹에 청소년 안전을 위한 프로그램을 제공하고 있습니다.</p>
                            </div>
                        </div>
                        <a href="http://www.kosha.or.kr/main.do?chk=1" target="_blank" title="새창이동"><img src="/user_img/linkto.png" alt="링크이동"></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/family15.gif" alt="기관기업엠블럼"></span>
                            <div class="localTexts family">
                                <h3>블랙야크</h3>
                                <p>국내 순수 기술력으로 개발된 세계 정상급의 토종 아웃도어 브랜드로서 국제패트롤잼버리를 지원하고 있습니다.</p>
                            </div>
                        </div>
                        <a href="http://www.blackyak.co.kr" target="_blank" title="새창이동"><img src="/user_img/linkto.png" alt="링크이동"></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/family16.gif" alt="기관기업엠블럼"></span>
                            <div class="localTexts family">
                                <h3>넥스트세이프</h3>
                                <p>응급처치 및 재난대비용품을 전문적으로 제작하며 안전장비를 연맹에 지원합니다.</p>
                            </div>
                        </div>
                        <a href="http://www.nextsafe.com" target="_blank" title="새창이동"><img src="/user_img/linkto.png" alt="링크이동"></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/family17.gif" alt="기관기업엠블럼"></span>
                            <div class="localTexts family">
                                <h3>순토</h3>
                                <p>다양한 스포츠 장비의 기술혁신을 주도하고 있으며 우리 연맹에 장비를 지원하고 있습니다.</p>
                            </div>
                        </div>
                        <a href="http://www.suunto.com/ko-KR/" target="_blank" title="새창이동"><img src="/user_img/linkto.png" alt="링크이동"></a>
                    </li>
                    
                </ul>                
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>