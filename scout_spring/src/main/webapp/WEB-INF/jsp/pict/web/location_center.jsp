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
                <li class="active"><a href="/location_center">중앙본부</a></li>
                <li><a href="/location_local">지방/특수연맹</a></li>
            </ul>
            <!-- 스카우트 구성 -->
            <div class="tabInner active">
                <ul class="locationTexts">
                    <li>
                        <p><img src="/user_img/location.png" alt="주소">주소</p>
                        <span>서울 영등포구 국회대로62길 14, 10층</span>
                    </li>
                    <li>
                        <p><img src="/user_img/call.png" alt="전화번호">전화번호</p>
                        <span>02-6335-2000</span>
                    </li>
                </ul>
                <div class="kakaoMap" id="map">
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0d776bb34a08483e971b1a5e18e0b065&libraries=services"></script>
					<script>
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						mapOption = { 
							center: new kakao.maps.LatLng('37.526702140168055', '126.9164705322456'), // 지도의 중심좌표
							level: 3 // 지도의 확대 레벨
						};
						var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

						// 마커가 표시될 위치입니다 
						var markerPosition  = new kakao.maps.LatLng('37.526702140168055', '126.9164705322456'); 
						// 마커를 생성합니다
						var marker = new kakao.maps.Marker({
						    position: markerPosition
						});
						
						// 마커가 지도 위에 표시되도록 설정합니다
						marker.setMap(map);
						
						var iwContent = '<div style="line-height:30px; width:230px; text-align:center">' + '한국스카우트연맹 중앙본부' +'</div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다

						// 인포윈도우를 생성합니다
						var infowindow = new kakao.maps.InfoWindow({
						    content : iwContent
						});
						kakao.maps.event.addListener(marker, 'mouseover', function() {
						  // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
						    infowindow.open(map, marker);
						});
					</script>
				</div>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>