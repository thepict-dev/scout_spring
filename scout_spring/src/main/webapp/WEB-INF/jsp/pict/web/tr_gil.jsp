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
           <p>중앙훈련원은 여러분께<br>항상 열려있습니다.</p>
       </div>
       <div class="subContents">
           <ul class="tabNav organNav rules">
               <li class="active"><span>중앙훈련원</span></li>
               <li><span>예약하기</span></li>
           </ul>
           <div class="tabInner active">
             	<ul class="locationTexts">
	                <li>
	                    <p><img src="/user_img/location.png" alt="주소">주소</p>
	                    <span>서울 영등포구 국회대로62길 14</span>
	                </li>
	                <li>
	                    <p><img src="/user_img/call.png" alt="전화번호">전화번호</p>
	                    <span>02-6335-2000</span>
	                </li>
             	</ul>
             	<div class="kakaoMap">

            	</div>
			</div>
			<div class="tabInner">
                <div class="flexContainer">
                    <h3 class="contentTitle">사용 규정</h3>
                    <h3 class="contentTitle mbText">사용 규정</h3>
                    <div class="contentDesc">
                        <div class="textsWrapper rules">
                            <p>장소 사용 허가 기본 원칙</p>
                            <div class="bullets">
                                <p><span>•</span>공원 이미지에 부합되는 행사에 한하여 선별 승인</p>
                                <p><span>•</span>건전한 문화행사 및 공원이용 활성화에 기여할 수 있는 행사</p>
                                <p><span>•</span>기타 불특정 다수의 이용객들이 거부감 없이 참여하고 즐길 수 있는 행사</p>
                            </div>
                        </div>
                        <div class="textsWrapper rules">
                            <p>사용승인 취소</p>
                            <div class="bullets">
                                <p><span>•</span>승인 목적 이외의 용도로 사용하거나 조건을 위반하여 사용하는 경우</p>
                                <p><span>•</span>시설 훼손이 발생하거나 안전 관리상 현저한 위해가 발생한 경우</p>
                                <p><span>•</span>건물 내 질서 유지가 심히 어려울 때</p>
                            </div>
                        </div>
                        <div class="textsWrapper rules">
                            <p style="margin-bottom: 0;">건물 밖으로 물건을 던지면 사고위험이 있으므로 자제하여 주시기 바랍니다.</p>
                        </div>
                        <div class="textsWrapper rules">
                            <p style="margin-bottom: 0;">휴지 및 담배꽁초 등은 지정된 휴지통에 버려주시기 바랍니다.</p>
                        </div>
                        <div class="textsWrapper rules">
                            <p style="margin-bottom: 0;">이용 중 시설물이 훼손될 경우 원상복구 하여야 합니다.</p>
                        </div>
                        <div class="textsWrapper rules">
                            <p style="margin-bottom: 0;">음주, 소란, 불미스러운 행동 및 야영행위는 절대 금합니다.</p>
                        </div>
                        <div class="textsWrapper rules">
                            <p style="margin-bottom: 0;">쾌적한 휴식공간이 될 수 있도록, 공중질서를 지켜 주시기 바랍니다.</p>
                        </div>
                        <div class="textsWrapper rules">
                            <p>사용승인 취소</p>
                            <span>※ 확성기 사용시 생활소음·규제 기준</span>
                            <div class="bullets">
                                <p><span>•</span>05:00 ~ 08:00, 18:00 ~ 22:00 에는 70dB 이하</p>
                                <p><span>•</span>08:00 ~ 18:00 에는 80dB 이하</p>
                                <p><span>•</span>22:00 ~ 05:00 에는 60dB 이하</p>
                            </div>
                        </div>
                        <div class="textsWrapper rules">
                            <p style="margin-bottom: 0;">사용 후, 청소와 주변 정리정돈 및 발생된 쓰레기는 쓰레기봉투에 수거하여 지정된 장소에 버려주세요.</p>
                        </div>
                        <div class="textsWrapper rules">
                            <p>사용료는 사전에 완납하여 주시기 바랍니다.</p>
                            <span>(계좌번호 : 신한 은행 140 - 005 - 945980 | 예금주 : 한국스카우트연맹)</span>
                        </div>
                        <div class="textsWrapper rules">
                            <p style="margin-bottom: 0;">1시간 이내 사용 시는 시간당 대관료로 정산합니다.</p>
                        </div>
                        <div class="textsWrapper rules">
                            <p style="margin-bottom: 0;">예약은 행사 5일 전 까지 신청입니다. 선착순 접수를 원칙으로 하며, 일부 장소 선점을 목적으로 신청된 행사는 제외됩니다.</p>
                        </div>
                        <div class="textsWrapper rules">
                            <p>예약취소는 사용 예정일 5일 전까지 가능하며, 대관료는 이용 전에 완납 합니다.</p>
                            <span>(4일~1일전 : 70% 환불, 행사당일 취소 : 환불 불가)</span>
                        </div>
                        <div class="textsWrapper rules">
                            <p>기타 장비 대여 가능합니다.</p>
                            <div class="bullets">
                                <p><span>•</span>음향 장비 : 1회 5만원 (유선 마이크 2EA, 스피커 2EA 기본 제공)</p>
                                <p><span>•</span>빔 스크린 : 1회 5만원 (노트북 및 영상 스크린 포함)</p>
                            </div>
                        </div>
                        <div class="textsWrapper rules">
                            <p>무료주차는 옥상공원 사용 시 1대로 합니다.</p>
                            <span>(기타 다른 차량은 규정에 의한 주차료로 정산합니다)</span>
                        </div>
                        <div class="textsWrapper rules">
                            <p style="margin-bottom: 0;">사용 시에는 정숙하고 질서를 지켜야 하며, 사용도중 발생하는 모든 민·형사상 사고는 사용자가 책임집니다.</p>
                        </div>
                    </div>
                </div>
                <div class="flexContainer gon">
                    <h3 class="contentTitle">시설사용료</h3>
                    <h3 class="contentTitle mbText">시설사용료</h3>
                    <div class="contentDesc">
                        <div class="textsWrapper rules facility">
                            <p>옥상공원</p>
                            <ul class="textsSub gon">
                                <li><p>8시~12시</p><span>50,000원</span></li>
                                <li><p>13시~19시</p><span>100,000원</span></li>
                                <li><p>전일</p><span>130,000원(8시~19시)</span></li>
                                <li><p>야간</p><span>50,000원(19시~22시)</span></li>
                                <li><p>초과시간비용</p><span>20,000원</span></li>
                            </ul>
                        </div>
                        <div class="facilityCaption">
                            <p>※ 스카우트연맹 회관 입주사 : 30% 할인, 주말 및 공휴일 : 30% 가산</p>
                        </div>
                    </div>
                </div>
                <div class="trBookingBtn">
                    <button type="button">
                        중앙훈련원 예약하러 가기
                        <img src="/user_img/linkto.png" alt="예약신청 열기">
                    </button>
                </div>
            </div>
		</div>
	</div>
	<%@ include file="./include/tr_apply_modal.jsp" %>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>