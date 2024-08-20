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
            <h2>${vo.title}</h2>
            <p>${vo.ASSOCIATIONNAME}</p>
        </div>
        <div class="subContents">
        	<img src="${vo.mainimg}" style="width:100%; margin-bottom:30px"/>
            <p class="federTitle">연맹장 인사말</p>
			<c:if test="${vo.introduce ne '' && vo.introduce ne null && vo.introduce ne undefined}">
	            <div class="greetingContainer feders">
	            	<!-- 연맹소개글 -->
	            	
	                ${vo.introduce}
	                
	                <c:if test="${vo.leaderimg ne '' && vo.leaderimg ne null && vo.leaderimg ne undefined}">
	                	<span class="feders"><img src="${vo.leaderimg}" alt="연맹장사진"></span>
	               	</c:if>
	            </div>
            </c:if>
            <c:if test="${vo.leadername ne '' && vo.leadername ne null && vo.leadername ne undefined}">
	            <div class="sign feders" >
					<p>${vo.ASSOCIATIONNAME} 연맹장 ${vo.leadername}</p>
				</div>
			</c:if>
			<div class="dummy"></div>
            <ul class="tabNav organNav rules">
                <li><a href="/federation_organ?dataid=${vo.dataid}">조직도</a></li>
                <li><a href="/federation_notice?dataid=${vo.dataid}">공지사항</a></li>
                <li><a href="/federation_files?dataid=${vo.dataid}">자료실</a></li>
                <li><a href="/federation_event?dataid=${vo.dataid}">행사안내</a></li>
                <li class="active"><a href="/federation_location?dataid=${vo.dataid}">오시는길</a></li>
            </ul>
            <div class="tabInner ruleContents active">
                <ul class="locationTexts">
                    <li>
                        <p><img src="/user_img/location.png" alt="주소">주소</p>
                        <span>${vo.address}</span>
                    </li>
                    <li>
                        <p><img src="/user_img/call.png" alt="전화번호">전화번호</p>
                        <span>${vo.tel }</span>
                    </li>
                </ul>
                <div class="kakaoMap" id="map">
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0d776bb34a08483e971b1a5e18e0b065&libraries=services"></script>
					<script>
						var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
						mapOption = { 
							center: new kakao.maps.LatLng('${vo.positionx}', '${vo.positiony}'), // 지도의 중심좌표
							level: 3 // 지도의 확대 레벨
						};
						
						var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

						// 마커가 표시될 위치입니다 
						var markerPosition  = new kakao.maps.LatLng('${vo.positionx}', '${vo.positiony}'); 
						// 마커를 생성합니다
						var marker = new kakao.maps.Marker({
						    position: markerPosition
						});
						
						// 마커가 지도 위에 표시되도록 설정합니다
						marker.setMap(map);
						
						var name = '${vo.ASSOCIATIONNAME}'
						var iwContent = '<div style="line-height:30px; width:210px; text-align:center">한국스카우트 ' + name +'</div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다

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
	<script>
		document.addEventListener('DOMContentLoaded', function() {
		    var targetDiv = document.querySelector('.dummy');
		    if (targetDiv) {
		        targetDiv.scrollIntoView({ behavior: 'smooth', block: 'start' });
		    }
		});
	</script>
</body>
</html>