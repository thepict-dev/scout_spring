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
            <h2>규정,휘장</h2>
            <p>체계적인 규정과 규율이<br>멋진 스카우트를 만듭니다.</p>
        </div>
        <div class="subContents">
            <ul class="tabNav organNav rules">
                <li class="active"><span>규정</span></li>
                <li><span>선서 및 규율</span></li>
                <li><span>휘장 및 로고</span></li>
            </ul>
            <!-- 스카우트 구성 -->
            <div class="tabInner ruleContents active">
                <div class="ruleContainer">
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/1.활동육성에관한법률[2011.5.19.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[기본법] 스카우트활동 육성에 관한 법률</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/29. 청소년활동 안전지도사 자격관리 및 운영규정 [15. 10. 1.] - 제정.pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] 청소년활동 안전지도사 자격관리 및 운영규정</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/15. 평생회원 운영 관리 규정[13. 6. 27.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] 평생회원 운영관리 규정</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/24. 회계규정 시행세칙 [22. 4. 28.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] 회계규정 시행세칙</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/26. 인장관리 규정 [09. 11. 13.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] 인장관리규정</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/27. 위임전결 규정 [09. 11. 13.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] 위임전결 규정</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/28. Youth Hero 운영규정 [23. 12. 18.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] Youth Hero상(자랑스런 청소년대상) 운영규정</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/4. 가맹등록 규정[21.02.04].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] 가맹등록규정</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/5. 지역협의회 규약 [09. 11. 13.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] 지역협의회 규약</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/7. 원로스카우트 규정 [22. 4. 28.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] 원로스카우트 규정</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/30. 임원선거 규정[23. 12. 18.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] 임원선거 규정</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/21. 직제 규정[22.8.23.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] 직제규정</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/10. 제복장구 규정[20. 3. 6.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] 제복장구 규정</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/12. 국제활동에 관한 규정 [09. 11. 13.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] 국제활동에 관한 규정</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/13. 스카우트 종교장 규정[09. 11. 13.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] 스카우트 종교장 규정</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/14. 스카우트 장학기금운영 규정 [18. 10. 31.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] 스카우트 장학기금 운영 규정</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/18. 도서실 관리 규정[89. 2. 28.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] 도서실 관리규정</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/19. 보존 기념물품 관리 규정[09. 11. 13.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] 보존 기념물품 관리 규정</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/20. 기금관리 규정[21.02.04].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] 기금관리 규정</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/23. 회계 규정 [23. 2. 16.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] 회계규정</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/11. 지도자 훈련운영규정 [24. 5. 23.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] 지도자훈련운영규정</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/16. 야영장 운영 관리 규정[96. 2. 28.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] 야영장 운영관리 규정</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/17. 간행물 발간 운영 규정[99. 12. 17.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] 간행물 발간 운영규정</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/2-1. 정관 시행세칙[22.2.22.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[정관] 정관세칙</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/3. 헌장[24. 2. 22.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[헌장] 헌장</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/6. 지도자 규정[22. 4. 28.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] 지도자규정</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/8. 진보과정 규정 [15. 10. 1.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] 진보과정 규정</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/9. 포상규정 [23. 12. 18.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] 포상규정</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/2. 정관[24.4.24.]_2024.4월 승인완료.pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[정관] 정관</p>
                        <span></span>
                    </a>
                    
                    <a href="http://scout.thepict.co.kr/user1/upload_file/scout/rule/25. 문서 규정 [09. 11. 13.].pdf" target="_blank" title="새창열기" class="rulesButton">
                        <p>[규정] 문서 규정</p>
                        <span></span>
                    </a>
                </div>
            </div>
            <div class="tabInner ruleContents">
                <div class="flexContainer">
                    <h3 class="contentTitle">스카우트 선서</h3>
                    <h3 class="contentTitle mbText">스카우트 선서</h3>
                    <div class="contentDesc block">
                        <div class="textsWrapper rules">
                            <p>나는 나의 명예를 걸고 다음의 조목을 굳게 지키겠습니다.</p>
                            <div class="bullets">
                                <p><span>•</span>첫째, 하느님과 나라를 위하여 나의 의무를 다하겠습니다</p>
                                <p><span>•</span>둘째, 항상 다른 사람을 도와주겠습니다.</p>
                                <p><span>•</span>셋째, 스카우트의 규율을 잘 지키겠습니다.</p>
                            </div>
                        </div>
                        <div class="textsWrapper rules">
                            <p>하느님과 나라에 대한 의무</p>
                            <div class="bullets">
                                <p><span>•</span>스카우트는 일상생활에서 종교의 가르침에 따라 신앙생활을 함으로써 인격적으로 성장하고, 국가에 대한 사랑과 국민으로서의 의무를 실천함으로써 하느님과 국가에 대한 의무를 다할 수 있다.</p>
                            </div>
                        </div>
                        <div class="textsWrapper rules">
                            <p>타인에 대한 의무</p>
                            <div class="bullets">
                                <p><span>•</span>우리 주변에는 몸이 불편하거나 허약한 사람, 노인이나 어린이와 같이 남의 도움과 보호를 받아야 할 사람들이 많다. 스카우트는 남의 도움과 보호를 필요로 하는 사람들에게 밝은 미소와 따뜻한 손길을 내밀어야 하며, 날마나 선행을 실천에 옮김으로써 이러한 일을 습관화해야 한다.</p>
                            </div>
                        </div>
                        <div class="textsWrapper rules">
                            <p>자신에 대한 의무</p>
                            <div class="bullets">
                                <p><span>•</span>평소에 자신의 몸을 소중히 생각하고 건강과 위생관리에 힘써야 한다. 또 자기 자신뿐만 아니라 다른 사람에게 도움이 되도록 준비해 두어야 한다. 학문과 기술을 익혀서 자기의 지식을 늘리고, 타고난 소질을 살리며, 지능을 계발해 나가는 것도 자신에 대한 의무이다.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="flexContainer">
                    <h3 class="contentTitle">컵 스카우트 규율</h3>
                    <h3 class="contentTitle mbText">컵 스카우트 규율</h3>
                    <div class="contentDesc block">
                        <div class="textsWrapper rules">
                            <p style="margin-bottom: 0;">대원은 윗사람을 잘 따릅니다.</p>
                        </div>
                        <div class="textsWrapper rules">
                            <p style="margin-bottom: 0;">대원은 남의 힘을 빌지 않습니다.</p>
                        </div>
                        <div class="textsWrapper rules">
                            <p style="margin-bottom: 0;">대원은 날마다 착한 일을 합니다.</p>
                        </div>
                    </div>
                </div>
                <div class="flexContainer">
                    <h3 class="contentTitle">스카우트 규율</h3>
                    <h3 class="contentTitle mbText">스카우트 규율</h3>
                    <div class="contentDesc block">
                        <div class="textsWrapper rules">
                            <p>스카우트는 믿음직하다</p>
                            <div class="bullets nomg">
                                <p>스카우트의 명예는 신임을 받는데 있다.<br>만약 거짓이나 그릇된 행동이 있을 때에는 명예로운 스카우트의 자격을 잃게 된다.</p>
                            </div>
                        </div>
                        <div class="textsWrapper rules">
                            <p>스카우트는 충효 한다</p>
                            <div class="bullets nomg">
                                <p>나라와 가정과 대 지도자등 받들어야 할 모든사람들에게 충성과 효도를 다한다.</p>
                            </div>
                        </div>
                        <div class="textsWrapper rules">
                            <p>스카우트는 도움이 된다</p>
                            <div class="bullets nomg">
                                <p>남을 돕는 일에는 언제나 앞장선다.<br>집안 일을 돕거나, 부상자를 도와주거나, 날마다 적어도 한 가지는 착한 일을 한다.</p>
                            </div>
                        </div>
                        <div class="textsWrapper rules">
                            <p>스카우트는 우애롭다</p>
                            <div class="bullets nomg">
                                <p>전 인류를 동포로 알고, 모든 스카우트를 형제로 여긴다.</p>
                            </div>
                        </div>
                        <div class="textsWrapper rules">
                            <p>스카우트는 예의 바르다</p>
                            <div class="bullets nomg">
                                <p>누구에게나 공손하며, 특히 약하고 불행한 사람을 돌보아주고, 은혜를 입으면 꼭 보답한다.</p>
                            </div>
                        </div>
                        <div class="textsWrapper rules">
                            <p>스카우트는 친절하다</p>
                            <div class="bullets nomg">
                                <p>모든 사람에게 친절히 대하며, 동물을 애호하고, 생물을 함부로 죽이지 않는다.</p>
                            </div>
                        </div>
                        <div class="textsWrapper rules">
                            <p>스카우트는 순종한다</p>
                            <div class="bullets nomg">
                                <p>부모와 대장, 반장과 모든 윗사람의 지시에 잘 따른다.</p>
                            </div>
                        </div>
                        <div class="textsWrapper rules">
                            <p>스카우트는 쾌활하다</p>
                            <div class="bullets nomg">
                                <p>항상 기쁜 낯을 하며, 어려움을 당할 때에 불평하거나 회피하지 않는다.</p>
                            </div>
                        </div>
                        <div class="textsWrapper rules">
                            <p>스카우트는 근검하다</p>
                            <div class="bullets nomg">
                                <p>일을 충실히 하고 물건을 아끼며, 시간을 허비하지 않고, 돈을 절약 저축하되, 선행의 대가는 받지 않는다.</p>
                            </div>
                        </div>
                        <div class="textsWrapper rules">
                            <p>스카우트는 용감하다</p>
                            <div class="bullets nomg">
                                <p>위험을 당하여도 두려워 하지 않고, 옳은 일을 위해서는 유혹과 협박을 물리치고 굳세게 나아간다.</p>
                            </div>
                        </div>
                        <div class="textsWrapper rules">
                            <p>스카우트는 순결하다</p>
                            <div class="bullets nomg">
                                <p>몸과 마음을 깨끗이 가지며, 말과 행실이 단정하다.</p>
                            </div>
                        </div>
                        <div class="textsWrapper rules">
                            <p>스카우트는 경건하다</p>
                            <div class="bullets nomg">
                                <p>하느님을 공경하고 종교의 의무를 충실히 지키며, 다른 사람의 종교를 존중한다.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tabInner ruleContents imgs">
                <div class="flexContainer">
                    <h3 class="contentTitle">스카우트 휘장</h3>
                    <h3 class="contentTitle mbText">스카우트 휘장</h3>
                    <div class="contentDesc rules">
                        <img src="/user_img/rule1.png" alt="휘장">
                    </div>
                </div>
                <div class="flexContainer">
                    <h3 class="contentTitle">스카우트 로고</h3>
                    <h3 class="contentTitle mbText">스카우트 로고</h3>
                    <div class="contentDesc rules">
                        <img src="/user_img/rule2.png" alt="로고">
                    </div>
                </div>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>