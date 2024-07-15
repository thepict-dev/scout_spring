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
            <div class="flexContainer">
                <h3 class="contentTitle">역대 수상자</h3>
                <ul class="contentDesc youth">
					<li>
				    <img src="/user_img/youth/1.김연아.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>김연아</p>
				        <span>2007</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/2.김선욱.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>김선욱</p>
				        <span>2007</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/3.전대원.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>전대원</p>
				        <span>2007</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/4.윤진희.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>윤진희</p>
				        <span>2008</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/5.김은강.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>김은강</p>
				        <span>2008</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/6.이승환.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>이승환</p>
				        <span>2008</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/7.곽예지.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>곽예지</p>
				        <span>2009</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/8.김기민.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>김기민</p>
				        <span>2009</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/9.김세진.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>김세진</p>
				        <span>2009</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/10.주계현.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>주계현</p>
				        <span>2009</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/11.조성진.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>조성진</p>
				        <span>2010</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/12.박성훈.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>박성훈</p>
				        <span>2010</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/13.김윤성.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>김윤성</p>
				        <span>2011</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/14.조원우.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>조원우</p>
				        <span>2011</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/15.남형종.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>남형종</p>
				        <span>2011</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/16.강캐시.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>강캐시</p>
				        <span>2011</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/17.황세현.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>황세현</p>
				        <span>2012</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/18.나누리.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>나누리</p>
				        <span>2012</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/19.이요한.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>이요한</p>
				        <span>2012</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/20.김영준.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>김영준</p>
				        <span>2012</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/21.김효준.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>김효준</p>
				        <span>2012</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/22.이시우.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>이시우</p>
				        <span>2013</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/23.강예주.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>강예주</p>
				        <span>2013</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/24.성지혜.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>성지혜</p>
				        <span>2013</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/25.유건희.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>유건희</p>
				        <span>2013</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/26.이은경.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>이은경</p>
				        <span>2013</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/27.김태욱.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>김태욱</p>
				        <span>2014</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/28.구본찬.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>구본찬</p>
				        <span>2014</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/29.김주리.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>김주리</p>
				        <span>2014</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/30.양나겸.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>양나겸</p>
				        <span>2014</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/31.김소희.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>김소희</p>
				        <span>2014</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/32.김강산.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>김강산</p>
				        <span>2015</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/33.한수아.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>한수아</p>
				        <span>2015</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/34.김의영.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>김의영</p>
				        <span>2015</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/35.정의재.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>정의재</p>
				        <span>2015</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/36.조청호.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>조청호</p>
				        <span>2016</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/37.양재훈.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>양재훈</p>
				        <span>2016</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/38.이수빈.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>이수빈</p>
				        <span>2016</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/39.정재원.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>정재원</p>
				        <span>2016</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/40.김종민.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>김종민</p>
				        <span>2016</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/41.이정현.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>이정현</p>
				        <span>2017</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/42.신진서.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>신진서</p>
				        <span>2017</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/43.백진원.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>백진원</p>
				        <span>2017</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/44.양소희.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>양소희</p>
				        <span>2017</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/45.강병민.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>강병민</p>
				        <span>2017</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/46.주명준.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>주명준</p>
				        <span>2018</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/47.안세영.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>안세영</p>
				        <span>2018</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/48.이소현.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>이소현</p>
				        <span>2018</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/49.오유빈.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>오유빈</p>
				        <span>2018</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/50.김유빛나라.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>김유빛나라</p>
				        <span>2018</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/51.양태환.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>양태환</p>
				        <span>2019</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/52.이제우.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>이제우</p>
				        <span>2019</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/53.이재현.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>이재현</p>
				        <span>2019</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/54.양예빈.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>양예빈</p>
				        <span>2019</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/55.이승석.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>이승석</p>
				        <span>2019</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/56.강태원.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>강태원</p>
				        <span>2020</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/57.이현우.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>이현우</p>
				        <span>2020</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/58.최서연.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>최서연</p>
				        <span>2020</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/59.김동연.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>김동연</p>
				        <span>2020</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/60.예승현.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>예승현</p>
				        <span>2020</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/61.김민재.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>김민재</p>
				        <span>2021</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/62.전민석.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>전민석</p>
				        <span>2021</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/63.공희준.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>공희준</p>
				        <span>2021</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/64.오서현.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>오서현</p>
				        <span>2021</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/65.우상혁.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>우상혁</p>
				        <span>2021</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/66.박종빈.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>박종빈</p>
				        <span>2022</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/67.이준서.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>이준서</p>
				        <span>2022</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/68.김수혁.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>김수혁</p>
				        <span>2022</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/69.전가람.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>전가람</p>
				        <span>2022</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/70.진유림.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>진유림</p>
				        <span>2023</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/71.신수민.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>신수민</p>
				        <span>2023</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/72.오지은.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>오지은</p>
				        <span>2023</span>
				    </div>
				</li>
				<li>
				    <img src="/user_img/youth/73.변홍준.webp" alt="역대 수상자">
				    <div class="texts">
				        <p>변홍준</p>
				        <span>2023</span>
				    </div>
				</li>
                </ul>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>