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
            <h2>연령별 단계</h2>
            <p>한국스카우트연맹 연령별 단계를 확인해보세요.</p>
        </div>
        <div class="subContents">
            <div class="flexContainer">
                <div class="ageImgContainer">
                    <h3 class="contentTitle ages">비버스카우트</h3>
                    <div class="ageImg">
                        <img src="/user_img/bieber.png" alt="">
                        <div class="cardTop"></div>
                    </div>
                </div>
                <div class="contentDesc">
                    <div class="textsWrapper ages">
                        <div class="bullets">
                            <p>
                                활발하고 쾌활한 야생동물 비버의 이름을 딴 비버스카우트는 4~6세까지의 연령층이 대상입니다. 비버스카우트는 자연과 친한아이, 협동심이 강한 아이로 성장하게 합니다.<br>
                                부모와 함께 야외활동과 협동게임을 즐기며 자연에 대해 배우고, 아이들 스스로 협동심과 자의식을 깨칠 수 있도록 도와줍니다.
                            </p>
                        </div>
                    </div>
                    <div class="textsWrapper ages">
                        <p>비버스카우트 활동의 목적</p>
                        <div class="bullets">
                            <p>비버스카우트 활동에 참여하는 모든 대원들은 다음과 같은 비버스카우트 운동의 목적을 성취하고자 노력한다.</p>
                            <p><span>1.</span>재미 : 즐거운 활동에 참여하여 재미있게 논다.</p>
                            <p><span>2.</span>협동 : 서로 돕고 양보하며 나누는 정신을 배운다.</p>
                            <p><span>3.</span>개성 : 새롭게 보고 생각하고 느끼며 만들고 활동한다.</p>
                            <p><span>4.</span>창의 : 새롭게 보고 생각하고 느끼며 만들고 활동한다.</p>
                            <p><span>5.</span>자율 : 스스로 적극 참여한다.</p>
                            <p><span>6.</span>환경보전 : 자연을 사랑하고 아끼며, 대원 자신이 자연의 일부임을 안다.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="flexContainer">
                <div class="ageImgContainer">
                    <h3 class="contentTitle ages">컵스카우트</h3>
                    <div class="ageImg">
                        <img src="/user_img/cup.jpeg" alt="">
                        <div class="cardTop"></div>
                    </div>
                </div>
                <div class="contentDesc">
                    <div class="textsWrapper ages">
                        <div class="bullets">
                            <p>
                                컵 스카우트는 6~12세까지의 연령층의 대상입니다. 단체 생활을 통해 협동심을 기르는 한편 다양한 프로그램을 통해 모험심을 일깨우게 됩니다. 연령별 진급제도와 취미장 취득 등 단계별로 마련된 풍부한 프로그램은 대원들의 관심과 흥미를 유발해, 재미있고 보람있는 스카우트 활동을 약속합니다.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="flexContainer">
                <div class="ageImgContainer">
                    <h3 class="contentTitle ages">스카우트 /<br>벤처스카우트</h3>
                    <div class="ageImg">
                        <img src="/user_img/venture.jpeg" alt="">
                        <div class="cardTop"></div>
                    </div>
                </div>
                <div class="contentDesc">
                    <div class="textsWrapper ages">
                        <div class="bullets">
                            <p>
                                스카우트는 12세~15세까지의 연령층의 대상입니다. 청소년들이 중심이 되는 스카우트는 사회의 발전을 위해 사회봉사 등에 참여하는 소중한 성취감을 얻을 수 있습니다. 또한 개개인의 개성을 충분히 활용하는 프로그램을 통해 스스로의 개성을 자연스럽게 유도합니다. 
                            </p>
                        </div>
                    </div>
                    <div class="textsWrapper ages">
                        <div class="bullets">
                            <p>
                                벤처스카우트는 15~18세까지의 연령층의 대상입니다. 대원들이 자신의 목적과 기호에 따라 융통성 있게 프로그램을 선택할 수 있습니다. 자신의 성향과 삶의 지향점을 돌아보며 프로그램을 직접 구상하는 벤처 대원들은 자연스럽게 성숙함과 책임감이 갖춰집니다.
                            </p>
                        </div>
                    </div>
                    <div class="textsWrapper ages">
                        <div class="bullets">
                            <p>
                                지도자는 성인 대상의 스카우트인 지도자가 소정의 지도자 훈련을 이수하고, 우리 연맹의 프로그램을 대원들에게 지도하는 훈육지도자(Youth Programme Leaders)로 구분이 됩니다. 로버스카우트(Rover Scouts)는 특히 18세에서 24세까지의 지도자로, 이들의 활동은 다양하고 적극적인 방법으로 국가사회에 봉사할 수 있는 프로그램 중심으로 이루어집니다. 로버스카우트의 역점분야는 사회에 대한 봉사와 각종 어려움을 스스로 극복하고 진취적인 삶을 준비할 수 있는 챌린지 및 탐험활동 등입니다.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="flexContainer">
                <div class="ageImgContainer" style="max-width:332px">
                    <h3 class="contentTitle ages">지도자 구분</h3>
                    <div class="ageImg">
                        <img src="/user_img/leader2.jpg" alt="">
                        <div class="cardTop"></div>
                    </div>
                </div>
                <div class="contentDesc">
                    <div class="textsWrapper ages">
                        <div class="bullets">
                            <p>
                                스카우트 지도자는 본연의 역할에 따라 대원의 훈육을 담당하는 훈육지도자, 단위대의 육성을 지원하는 협조지도자 그리고 스카우트 발전에 필요한 제반 행정을 담당하는 전종지도자로 구분됩니다.
                            </p>
                        </div>
                    </div>
                    <div class="textsWrapper ages">
                        <p>훈육지도자</p>
                        <div class="bullets">
                            <p><span>•</span>한국스카우트연맹의 훈육 프로그램을 지도하는 남녀 지도자로서 소정의 훈련을 필하여 훈육 지도자 자격증을 소지한 자를 말합니다.</p>
                            <p><span>•</span>단위대의 대장과 부대장, 단의 단대장, 중앙본부나 지방 연맹 및 지구연합회의 훈육위원과 중앙 및 지방 훈련팀 등을 훈육지도자라고 하며 훈육지도자 자격증은 대지도자 훈련 중급과정을 이수한 지도자에게 발급됩니다.</p>
                        </div>
                    </div>
                    <div class="textsWrapper ages">
                        <p>협조지도자</p>
                        <div class="bullets">
                            <p><span>•</span>스카우트 운동에 참여하는 단위대의 대표자, 대(단) 위원과 지구연합회나 지방연맹 및 중앙본부의 훈육위원을 제외한 임원과 각종 위원회의 위원으로 스카우팅에 참여하는 지도자를 말합니다.</p>
                        </div>
                    </div>
                    <div class="textsWrapper ages">
                        <p>전종지도자</p>
                        <div class="bullets">
                            <p><span>•</span>스카우트 운동에 필요한 제반 행정을 담당하는 지도자로 중앙본부 및 지방·특수연맹 근무하는 직원을 말합니다.</p>
                            <p><span>•</span>전종지도자는 원활한 업무 수행을 위하여 지도자 상급 훈련과 별도의 전종지도자 행정교육을 이수합니다.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>