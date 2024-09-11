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
            <h2>찾아오시는 길</h2>
            <p>스카우트는 여러분께<br>항상 열려있습니다.</p>
        </div>
        <div class="subContents">
            <ul class="tabNav organNav rules">
                <li><a href="/location_center">중앙본부</a></li>
                <li class="active"><a href="/location_local">지방/특수연맹</a></li>
            </ul>
            <div class="tabInner active">
                <ul class="localLocations">
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/location1.gif" alt="연맹앰블럼"></span>
                            <div class="localTexts">
                                <h3>서울북부연맹</h3>
                                <ul>
                                    <li><p>주소</p><span>서울 동대문구 제기로 106, 4층 402호</span></li>
                                    <li><p>Fax</p><span>02-774-0753</span></li>
                                </ul>
                                <ul>
                                    <li><p>Tel</p><span>02-755-6402</span></li>
                                    <li><p>E-mail</p><span>seoulscout@scout.or.kr</span></li>
                                </ul>
                            </div>
                        </div>
                        <a href="#lnk" onclick="fn_local('서울북부')"><span>지방연맹 소식<br>바로가기</span></a>
                    </li>
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/location2.gif" alt="연맹앰블럼"></span>
                            <div class="localTexts">
                                <h3>서울남부연맹</h3>
                                <ul>
                                    <li><p>주소</p><span>서울특별시 영등포구 국회대로62길 14, 한국스카우트연맹 10층</span></li>
                                    <li><p>Fax</p><span>02-785-3580</span></li>
                                </ul>
                                <ul>
                                    <li><p>Tel</p><span>02-785-4716~8</span></li>
                                    <li><p>E-mail</p><span>nambu@scout.or.kr</span></li>
                                </ul>
                            </div>
                        </div>
                        <a href="#lnk" onclick="fn_local('서울남부')"><span>지방연맹 소식<br>바로가기</span></a>
                    </li>
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/부산.webp" alt="연맹앰블럼"></span>
                            <div class="localTexts">
                                <h3>부산연맹</h3>
                                <ul>
                                    <li><p>주소</p><span>부산 부산진구 연지로 17(연지동189-5), 지하 1층</span></li>
                                    <li><p>Fax</p><span></span></li>
                                </ul>
                                <ul>
                                    <li><p>Tel</p><span>051-467-3661</span></li>
                                    <li><p>E-mail</p><span>busan@scout.or.kr</span></li>
                                </ul>
                            </div>
                        </div>
                        <a href="#lnk" onclick="fn_local('부산')"><span>지방연맹 소식<br>바로가기</span></a>
                    </li>
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/location4.gif" alt="연맹앰블럼"></span>
                            <div class="localTexts">
                                <h3>대구연맹</h3>
                                <ul>
                                    <li><p>주소</p><span>대구광역시 북구 연암로40 대구시청 산격청사 스카우트회관2층</span></li>
                                    <li><p>Fax</p><span>053-743-0993</span></li>
                                </ul>
                                <ul>
                                    <li><p>Tel</p><span>053-743-0900</span></li>
                                    <li><p>E-mail</p><span>dgscout@scout.or.kr</span></li>
                                </ul>
                            </div>
                        </div>
                        <a href="#lnk" onclick="fn_local('대구')"><span>지방연맹 소식<br>바로가기</span></a>
                    </li>
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/location5.gif" alt="연맹앰블럼"></span>
                            <div class="localTexts">
                                <h3>인천연맹</h3>
                                <ul>
                                    <li><p>주소</p><span>인천 중구 신포로 23번길 62(2층)</span></li>
                                    <li><p>Fax</p><span>032-763-6426</span></li>
                                </ul>
                                <ul>
                                    <li><p>Tel</p><span>032-762-5801</span></li>
                                    <li><p>E-mail</p><span>inchonlc@scout.or.kr</span></li>
                                </ul>
                            </div>
                        </div>
                        <a href="#lnk" onclick="fn_local('인천')"><span>지방연맹 소식<br>바로가기</span></a>
                    </li>
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/location6.gif" alt="연맹앰블럼"></span>
                            <div class="localTexts">
                                <h3>광주연맹</h3>
                                <ul>
                                    <li><p>주소</p><span>광주 서구 상무민주로 86</span></li>
                                    <li><p>Fax</p><span>062-385-6501</span></li>
                                </ul>
                                <ul>
                                    <li><p>Tel</p><span>062-385-6500</span></li>
                                    <li><p>E-mail</p><span>tiger383@scout.or.kr</span></li>
                                </ul>
                            </div>
                        </div>
                        <a href="#lnk" onclick="fn_local('광주')"><span>지방연맹 소식<br>바로가기</span></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/location7.gif" alt="연맹앰블럼"></span>
                            <div class="localTexts">
                                <h3>대전연맹</h3>
                                <ul>
                                    <li><p>주소</p><span>대전광역시 중구 보문산로 30, 4층</span></li>
                                    <li><p>Fax</p><span>042-255-5097</span></li>
                                </ul>
                                <ul>
                                    <li><p>Tel</p><span>042-252-3579</span></li>
                                    <li><p>E-mail</p><span>djs@scout.or.kr</span></li>
                                </ul>
                            </div>
                        </div>
                        <a href="#lnk" onclick="fn_local('대전')"><span>지방연맹 소식<br>바로가기</span></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/location8.gif" alt="연맹앰블럼"></span>
                            <div class="localTexts">
                                <h3>울산연맹</h3>
                                <ul>
                                    <li><p>주소</p><span>울산 남구 신정로 203번길 61 두산위브더제니스 703호</span></li>
                                    <li><p>Fax</p><span>052-245-6802</span></li>
                                </ul>
                                <ul>
                                    <li><p>Tel</p><span>052-245-6801</span></li>
                                    <li><p>E-mail</p><span>us017lc@scout.or.kr</span></li>
                                </ul>
                            </div>
                        </div>
                        <a href="#lnk" onclick="fn_local('울산')"><span>지방연맹 소식<br>바로가기</span></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/location9.gif" alt="연맹앰블럼"></span>
                            <div class="localTexts">
                                <h3>경기북부연맹</h3>
                                <ul>
                                    <li><p>주소</p><span>경기도 고양시 덕양구 서삼릉길 107-62(원당동)</span></li>
                                    <li><p>Fax</p><span>031-853-2073</span></li>
                                </ul>
                                <ul>
                                    <li><p>Tel</p><span>031-853-2072</span></li>
                                    <li><p>E-mail</p><span>scoutnkglc@scout.or.kr</span></li>
                                </ul>
                            </div>
                        </div>
                        <a href="#lnk" onclick="fn_local('경기북부')"><span>지방연맹 소식<br>바로가기</span></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/location10.gif" alt="연맹앰블럼"></span>
                            <div class="localTexts">
                                <h3>경기남부연맹</h3>
                                <ul>
                                    <li><p>주소</p><span>경기도 수원시 장안구 송원로41번길 8 502호</span></li>
                                    <li><p>Fax</p><span>031-257-7757</span></li>
                                </ul>
                                <ul>
                                    <li><p>Tel</p><span>031-257-7763</span></li>
                                    <li><p>E-mail</p><span>scoutkglc@scout.or.kr</span></li>
                                </ul>
                            </div>
                        </div>
                        <a href="#lnk" onclick="fn_local('경기남부')"><span>지방연맹 소식<br>바로가기</span></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/location11.gif" alt="연맹앰블럼"></span>
                            <div class="localTexts">
                                <h3>강원연맹</h3>
                                <ul>
                                    <li><p>주소</p><span>강원 춘천시 신샘밭로 89 (강원도청소년수련관 2층)</span></li>
                                    <li><p>Fax</p><span>033-254-4753</span></li>
                                </ul>
                                <ul>
                                    <li><p>Tel</p><span>033-254-2653</span></li>
                                    <li><p>E-mail</p><span>kwlc@scout.or.kr</span></li>
                                </ul>
                            </div>
                        </div>
                        <a href="#lnk" onclick="fn_local('강원')"><span>지방연맹 소식<br>바로가기</span></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/location12.gif" alt="연맹앰블럼"></span>
                            <div class="localTexts">
                                <h3>충북연맹</h3>
                                <ul>
                                    <li><p>주소</p><span>충북 청주시 흥덕구 청남로 2097번길 28 한국스카우트충북연맹</span></li>
                                    <li><p>Fax</p><span>043-263-9638</span></li>
                                </ul>
                                <ul>
                                    <li><p>Tel</p><span>043-266-4154</span></li>
                                    <li><p>E-mail</p><span>scout130@hanmail.net</span></li>
                                </ul>
                            </div>
                        </div>
                        <a href="#lnk" onclick="fn_local('충북')"><span>지방연맹 소식<br>바로가기</span></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/location13.gif" alt="연맹앰블럼"></span>
                            <div class="localTexts">
                                <h3>충남세종연맹</h3>
                                <ul>
                                    <li><p>주소</p><span>충남 홍성군 청사로150번길 10, 3층 305호</span></li>
                                    <li><p>Fax</p><span>041-635-1342</span></li>
                                </ul>
                                <ul>
                                    <li><p>Tel</p><span>041-635-1340</span></li>
                                    <li><p>E-mail</p><span>cns@scout.or.kr</span></li>
                                </ul>
                            </div>
                        </div>
                        <a href="#lnk" onclick="fn_local('충남세종')"><span>지방연맹 소식<br>바로가기</span></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/location14.gif" alt="연맹앰블럼"></span>
                            <div class="localTexts">
                                <h3>전북연맹</h3>
                                <ul>
                                    <li><p>주소</p><span>전라북도 전주시 완산구 전라감영 5길 20, 4층</span></li>
                                    <li><p>Fax</p><span>063-232-8106</span></li>
                                </ul>
                                <ul>
                                    <li><p>Tel</p><span>063-232-8100</span></li>
                                    <li><p>E-mail</p><span>jeonbukscout@hanmail.net</span></li>
                                </ul>
                            </div>
                        </div>
                        <a href="#lnk" onclick="fn_local('전북')"><span>지방연맹 소식<br>바로가기</span></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/location15.gif" alt="연맹앰블럼"></span>
                            <div class="localTexts">
                                <h3>전남연맹</h3>
                                <ul>
                                    <li><p>주소</p><span>전라남도 무안군 삼향읍 오룡3길 14, 4층</span></li>
                                    <li><p>Fax</p><span>061-287-2730</span></li>
                                </ul>
                                <ul>
                                    <li><p>Tel</p><span>061-287-2727</span></li>
                                    <li><p>E-mail</p><span>jnscout@hanmail.net</span></li>
                                </ul>
                            </div>
                        </div>
                        <a href="#lnk" onclick="fn_local('전남')"><span>지방연맹 소식<br>바로가기</span></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/location16.gif" alt="연맹앰블럼"></span>
                            <div class="localTexts">
                                <h3>경북연맹</h3>
                                <ul>
                                    <li><p>주소</p><span>대구 북구 연암공원로6길 10-1</span></li>
                                    <li><p>Fax</p><span>053-942-4918</span></li>
                                </ul>
                                <ul>
                                    <li><p>Tel</p><span>053-941-9017</span></li>
                                    <li><p>E-mail</p><span>scoutkb@scout.or.kr</span></li>
                                </ul>
                            </div>
                        </div>
                        <a href="#lnk" onclick="fn_local('경북')"><span>지방연맹 소식<br>바로가기</span></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/location17.gif" alt="연맹앰블럼"></span>
                            <div class="localTexts">
                                <h3>경남연맹</h3>
                                <ul>
                                    <li><p>주소</p><span>경남 창원시 성산구 중앙대로 37 경남오피스텔 1008호</span></li>
                                    <li><p>Fax</p><span>055-287-5159</span></li>
                                </ul>
                                <ul>
                                    <li><p>Tel</p><span>055-284-1165</span></li>
                                    <li><p>E-mail</p><span>knamlc@scout.or.kr</span></li>
                                </ul>
                            </div>
                        </div>
                        <a href="#lnk" onclick="fn_local('경남')"><span>지방연맹 소식<br>바로가기</span></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/location18.gif" alt="연맹앰블럼"></span>
                            <div class="localTexts">
                                <h3>제주연맹</h3>
                                <ul>
                                    <li><p>주소</p><span>제주특별자치도 제주시 평전3길 34-1</span></li>
                                    <li><p>Fax</p><span>064-751-4236</span></li>
                                </ul>
                                <ul>
                                    <li><p>Tel</p><span>064-751-4234</span></li>
                                    <li><p>E-mail</p><span>jejulc@scout.or.kr</span></li>
                                </ul>
                            </div>
                        </div>
                        <a href="#lnk" onclick="fn_local('제주')"><span>지방연맹 소식<br>바로가기</span></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/location19.gif" alt="연맹앰블럼"></span>
                            <div class="localTexts">
                                <h3>가톨릭연맹</h3>
                                <ul>
                                    <li><p>주소</p><span>서울 종로구 대학로 156, 가톨릭청소년회관 120호</span></li>
                                    <li><p>Fax</p><span>02-6263-2011</span></li>
                                </ul>
                                <ul>
                                    <li><p>Tel</p><span>02-6263-2010</span></li>
                                    <li><p>E-mail</p><span>seonsoo7@nate.com</span></li>
                                </ul>
                            </div>
                        </div>
                        <a href="#lnk" onclick="fn_local('가톨릭')"><span>지방연맹 소식<br>바로가기</span></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/location20.gif" alt="연맹앰블럼"></span>
                            <div class="localTexts">
                                <h3>원불교연맹</h3>
                                <ul>
                                    <li><p>주소</p><span>전북 익산시 익산대로 501 (신용동) 원불교스카우트</span></li>
                                    <li><p>Fax</p><span>063-851-0428</span></li>
                                </ul>
                                <ul>
                                    <li><p>Tel</p><span>070-7011-6882</span></li>
                                    <li><p>E-mail</p><span>wonbuddhism@scout.or.kr</span></li>
                                </ul>
                            </div>
                        </div>
                        <a href="#lnk" onclick="fn_local('원불교')"><span>지방연맹 소식<br>바로가기</span></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/location21.gif" alt="연맹앰블럼"></span>
                            <div class="localTexts">
                                <h3>불교연맹</h3>
                                <ul>
                                    <li><p>주소</p><span>서울 종로구 우정국로 67 전법회관 403호</span></li>
                                    <li><p>Fax</p><span>02-722-9034</span></li>
                                </ul>
                                <ul>
                                    <li><p>Tel</p><span>02-722-9033</span></li>
                                    <li><p>E-mail</p><span></span></li>
                                </ul>
                            </div>
                        </div>
                        <a href="#lnk" onclick="fn_local('불교')"><span>지방연맹 소식<br>바로가기</span></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/location22.webp" alt="연맹앰블럼"></span>
                            <div class="localTexts">
                                <h3>기독교연맹</h3>
                                <ul>
                                    <li><p>주소</p><span>경기도 수원시 권선구 효탑로16번길 8, 개선문교회</span></li>
                                    <li><p>Fax</p><span>032-423-0292</span></li>
                                </ul>
                                <ul>
                                    <li><p>Tel</p><span>032-434-1832</span></li>
                                    <li><p>E-mail</p><span></span></li>
                                </ul>
                            </div>
                        </div>
                        <a href="#lnk" onclick="fn_local('기독교')"><span>지방연맹 소식<br>바로가기</span></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/location23.gif" alt="연맹앰블럼"></span>
                            <div class="localTexts">
                                <h3>지원재단</h3>
                                <ul>
                                    <li><p>주소</p><span>서울 영등포구 국회대로62길 14, 5층</span></li>
                                    <li><p>Fax</p><span>02-780-5385</span></li>
                                </ul>
                                <ul>
                                    <li><p>Tel</p><span>02-780-5382</span></li>
                                    <li><p>E-mail</p><span>scout@scout.or.kr</span></li>
                                </ul>
                            </div>
                        </div>
                        <a href="https://www.scoutshop.or.kr/kor/main/main.php" target="_blank" title="새창이동"><span>지방연맹 소식<br>바로가기</span></a>
                    </li>
                    
                    <li>
                        <div class="imgTexts">
                            <span><img src="/user_img/location24.gif" alt="연맹앰블럼"></span>
                            <div class="localTexts">
                                <h3>의원연맹</h3>
                                <ul>
                                    <li><p>주소</p><span>서울 영등포구 의사당대로 1, 국회소통관 321호</span></li>
                                    <li><p>Fax</p><span>02-780-1703</span></li>
                                </ul>
                                <ul>
                                    <li><p>Tel</p><span>02-786-4492</span></li>
                                    <li><p>E-mail</p><span>wspu@scout.or.kr</span></li>
                                </ul>
                            </div>
                        </div>
                        <a href="#lnk" onclick="fn_local('의원')"><span>지방연맹 소식<br>바로가기</span></a>
                    </li>                    
                </ul>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
<script>
	function fn_local(target){
		if(target == '강원') location.href="/federation_organ?dataid=gangwon";
		else if(target == '광주') location.href="/federation_organ?dataid=gwangju";
		else if(target == '대구') location.href="/federation_organ?dataid=daegu";
		else if(target == '대전') location.href="/federation_organ?dataid=daejeon";
		else if(target == '서울남부') location.href="/federation_organ?dataid=seoulnambu";
		else if(target == '제주') location.href="/federation_organ?dataid=jeju";
		
		else if(target == '서울북부') location.href="/federation_organ?dataid=seoulbukbu";
		else if(target == '부산') location.href="/federation_organ?dataid=busan";
		else if(target == '인천') location.href="/federation_organ?dataid=incheon";
		else if(target == '울산') location.href="/federation_organ?dataid=ulsan";
		else if(target == '경기북부') location.href="/federation_organ?dataid=gyeonggibukbu";
		else if(target == '경기남부') location.href="/federation_organ?dataid=gyeongginambu";
		else if(target == '충북') location.href="/federation_organ?dataid=chungbuk";
		else if(target == '충남세종') location.href="/federation_organ?dataid=chungnamsejong";
		else if(target == '전북') location.href="/federation_organ?dataid=jeonbuk";
		else if(target == '전남') location.href="/federation_organ?dataid=jeonnam";
		else if(target == '경북') location.href="/federation_organ?dataid=gyeongbuk";
		else if(target == '경남') location.href="/federation_organ?dataid=gyeongnam";
		else if(target == '가톨릭') location.href="/federation_organ?dataid=catholic";
		else if(target == '원불교') location.href="/federation_organ?dataid=wonbuddhism";
		else if(target == '불교') location.href="/federation_organ?dataid=buddhism";
		else if(target == '기독교') location.href="/federation_organ?dataid=christian";
		
		
		else{
			alert("해당 연맹 데이터는 준비중입니다.")
			return false;
		}
		
	}
</script>
</html>