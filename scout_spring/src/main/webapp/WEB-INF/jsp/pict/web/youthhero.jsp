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
            <h2>YOUTH HERO</h2>
            <p>국내·외 재능과 잠재력을 가진<br>대한민국 청소년을 발굴해 미래의 인재로 육성합니다.</p>
            <span>한국스카우트연맹에서는 국내·외 재능과 잠재력을 가진 대한민국 청소년을 발굴하여 미래의 인재로 육성하고자 2007년부터 Youth Hero상(자랑스러운 청소년 대상)을 제정 및 시행하고 있습니다.</span>
        </div>
        <div class="subContents">
            <div class="flexContainer">
                <h3 class="contentTitle">시상부문</h3>
                <div class="contentDesc">
                    <img src="/user_img/yourh1.png" alt="시상부문">
                </div>
            </div>
            <div class="blockContainer">
                <h3 class="contentTitle">역대 수상자</h3>
                <div class="flexTab jamFlexTab youth">
                    <ul class="tabNav jamTab youth">
                        <li class="active"><a href="#2007">2007년</a></li>
                        <li><a href="#2008">2008년</a></li>
                        <li><a href="#2009">2009년</a></li>
                        <li><a href="#2010">2010년</a></li>
                        <li><a href="#2011">2011년</a></li>
                        <li><a href="#2012">2012년</a></li>
                        <li><a href="#2013">2013년</a></li>
                        <li><a href="#2014">2014년</a></li>
                        <li><a href="#2015">2015년</a></li>
                        <li><a href="#2016">2016년</a></li>
                        <li><a href="#2017">2017년</a></li>
                        <li><a href="#2018">2018년</a></li>
                        <li><a href="#2019">2019년</a></li>
                        <li><a href="#2020">2020년</a></li>
                        <li><a href="#2021">2021년</a></li>
                        <li><a href="#2022">2022년</a></li>
                        <li><a href="#2023">2023년</a></li>
                    </ul>
                    <div class="tabInner active youth">
                        <ul class="contentDesc youth">
                            <li>
                                <img src="/user_img/youth/1.김연아.webp" alt="역대 수상자">
                                <div class="texts">
                                    <p>김연아</p>
                                    <span>2007</span>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>