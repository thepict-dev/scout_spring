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
            <h2>서울북부연맹</h2>
            <p>스카우트 연맹장 인사말</p>
        </div>
        <div class="subContents">
            <div class="greetingContainer">
                <div class="greetingTexts feders">
                    <p>새로운 100주년을 준비하는 한국스카우트연맹은 다양한 의견을 경청하겠습니다. 긴밀한 소통을 통하여 새로운 변화에 능동적으로 대응하면서 당면한 문제들을 해결해 나가겠습니다. 청소년 단체 활동의 중심에서 그 역할과 책임에 최선을 다 하겠습니다.</p>
                    <p>스카우트 활동의 혁신을 위하여 새로운 전략과 시스템을 구축하여 한국스카우트연맹과 각 지방 연맹이 더욱 효율적으로 활동할 수 있도록 노력하겠습니다.</p>
                    <p>현재 스카우트 활동은 대내외적으로 어려운 환경에 놓여있습니다. 이를 극복하기 위하여 안정적으로 재원을 조달하고, 우리 사회가 더욱 번영하고 지속 가능한 방향으로 발전할 수 있도록 만들겠습니다.</p>
                    <p>세상을 발전시키는 의미 있는 일에 동참하여 주신 한국스카우트 가족 여러분께 다시 한번 진심으로 감사드리며, 앞으로도 더욱 큰 관심과 애정을 부탁드립니다. 감사합니다.</p>
                    <div class="sign">
                        <p>총재</p>
                        <img src="/user_img/sign.png" alt="서명">
                    </div>
                </div>
                <span class="feders"><img src="/user_img/greeting.png" alt="총재 이찬희"></span>
            </div>
            <div class="noticeWrapper">
                <div class="noticeTop">
                    <h2>공지사항</h2>
                </div>
                <ul class="notice">
                    <li>
                        <a href="#lnk"><span>중요</span>공지사항 내용이 이곳에 들어갑니다</a>
                        <p>2024-01-16</p>
                    </li>
                    <li>
                        <a href="#lnk"><p>01</p>공지사항 내용이 이곳에 들어갑니다</a>
                        <p>
                            <span><img src="/user_img/file.png" alt="첨부파일"></span>
                            2024-01-16
                        </p>
                    </li>
                </ul>
            </div>
            <div class="pagination">
                <a href="#lnk"><img src="/user_img/first.png" alt="처음으로"></a>
                <a href="#lnk"><img src="/user_img/prev.png" alt="이전으로"></a>
                <a href="#lnk" class="active">1</a>
                <a href="#lnk">2</a>
                <a href="#lnk">3</a>
                <p>...</p>
                <a href="#lnk">10</a>
                <a href="#lnk"><img src="/user_img/next.png" alt="다음으로"></a>
                <a href="#lnk"><img src="/user_img/last.png" alt="처음으로"></a>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>