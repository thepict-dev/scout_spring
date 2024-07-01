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
            <h2>시설안내, 예약</h2>
            <p>야영 등 멋진 체험을 할 수 있는<br>스카우트의 시설입니다.</p>
        </div>
        <div class="subContents">
            <ul class="tabNav organNav rules">
                <li class="active"><span>수련시설 안내</span></li>
                <li><span>옥상정원 예약</span></li>
            </ul>
            <!-- 스카우트 구성 -->
            <div class="tabInner ruleContents active">
                <div class="flexContainer">
                    <div class="titleImg">
                        <h3 class="contentTitle">중앙훈련원</h3>
                        <span><img src="/user_img/facility1.png" alt="중앙훈련원"></span>
                        <a href="http://scoutcenter.scout.or.kr/SysApplicationController.do" target="_blank" title="새창이동">중앙훈련원 사이트 바로가기</a>
                    </div>
                    <div class="contentDesc">
                        <div class="textsWrapper rules facility">
                            <p>기본 정보</p>
                            <ul class="textsSub">
                                <li><p>명칭</p><span>중앙훈련원/서삼릉 청소년 야영장</span></li>
                                <li><p>면적</p><span>32,135㎡</span></li>
                                <li><p>주소</p><span>경기도 고양시 원당동 200-5</span></li>
                                <li><p>연락처</p><span>Tel&#41; 031-963-016 Fax&#41; 031-966-1976</span></li>
                                <li><p>이메일</p><span>scoutcenter@scout.or.kr</span></li>
                            </ul>
                        </div>
                        <div class="textsWrapper rules facility">
                            <p>실내시설</p>
                            <ul class="textsSub">
                                <li><p>숙박시설</p><span>5인실 3개, 8인실 6개, 10인실 4개, 12인실 1개</span></li>
                                <li><p>교육시설</p><span>강당(150명), 세미나실 2개(40인실)</span></li>
                                <li><p>부대시설</p><span>식당(100석), 공동화장실(층별), 공동샤워장(남/여)</span></li>
                            </ul>
                        </div>
                        <div class="textsWrapper rules facility">
                            <p>야외시설</p>
                            <ul class="textsSub">
                                <li><p>야영시설</p><span>제1야영장(500명 수용), 제2야영장(120명 수용)</span></li>
                                <li><p>부대시설</p><span>활동장, 운동장, 캠프파이어장, 주차장, 야외 샤워장, 공동 취사대 등</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="flexContainer">
                    <div class="titleImg">
                        <h3 class="contentTitle">곤지암 야영장</h3>
                        <span><img src="/user_img/facility2.png" alt="곤지암 야영장"></span>
                        <a href="https://gongiamscout.itpage.kr/" class="gon" target="_blank" title="새창이동">곤지암 야영장 사이트 바로가기</a>
                    </div>
                    <div class="contentDesc">
                        <div class="textsWrapper rules facility">
                            <p>기본 정보</p>
                            <ul class="textsSub">
                                <li><p>명칭</p><span>곤지암야영장</span></li>
                                <li><p>면적</p><span>29,950㎡</span></li>
                                <li><p>주소</p><span>경기도 광주시 도척면 진우리 884번지</span></li>
                                <li><p>연락처</p><span>Tel&#41; 031-764-1634  Fax&#41; 031-764-1635</span></li>
                                <li><p>이메일</p><span>scoutcamp@scout.or.kr</span></li>
                            </ul>
                        </div>
                        <div class="textsWrapper rules facility">
                            <p>실내시설</p>
                            <ul class="textsSub">
                                <li><p>부대시설</p><span>다목적실, 지도자 회의실, 화장실, 샤워장, 강당 등</span></li>
                            </ul>
                        </div>
                        <div class="textsWrapper rules facility">
                            <p>야외시설</p>
                            <ul class="textsSub">
                                <li><p>야영시설</p><span>천막10인용 30동, 야영장(950명 수용)</span></li>
                                <li><p>체험시설</p><span>모험놀이시설(우주여행 외 9종)</span></li>
                                <li><p>부대시설</p><span>화장실, 샤워장, 취사장, 캠프파이어장, 야외교장 등</span></li>
                            </ul>
                        </div>
                        <div class="textsWrapper rules facility">
                            <p>주요 프로그램</p>
                            <ul class="textsSub">
                                <li><span>우주여행 외 모험활동 9종, 카프라, 협동바운드, 파이프라인 등 자연을 이해하고 체험하는 수련활동 프로그램</span></li>
                            </ul>
                        </div>
                        <div class="textsWrapper rules facility">
                            <p>이용신청</p>
                            <ul class="textsSub">
                                <li><span>이용신청서를 작성하여 제출해주시면, 담당자가 확인 후 연락을 드립니다</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tabInner ruleContents">
                <div class="flexContainer">
                    <h3 class="contentTitle">사용 규정</h3>
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
                <div class="flexContainer">
                    <h3 class="contentTitle">시설사용료</h3>
                    <div class="contentDesc">
                        <div class="textsWrapper rules facility">
                            <p>옥상공원</p>
                            <ul class="textsSub">
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
                <div class="bookingBtn">
                    <button type="button">
                        옥상정원 예약하러 가기
                        <img src="/user_img/linkto.png" alt="예약신청 열기">
                    </button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal">
        <div class="modalWrapper">
            <button type="button"><img src="/user_img/close.png" alt="닫기"></button>
            <div class="modalInner">
                <form action="">
                    <div class="bookingForm">
                        <h4 class="modalTitle">시설 예약 정보를 입력하세요</h4>
                        <div class="inputsContainer">
                            <p class="InputsTitle">예약자 정보</p>
                            <div class="inputContainer">
                                <div class="inputBox">
                                    <p>기관명</p>
                                    <input type="text" name="company" id="company" placeholder="기관명을 입력하세요" class="large">
                                </div>
                                <div class="inputBox">
                                    <p>담당부서</p>
                                    <input type="text" name="depart" id="depart" placeholder="담당부서를 입력하세요" class="large">
                                </div>
                            </div>
                            <div class="inputContainer">
                                <div class="inputBox">
                                    <p>담당자</p>
                                    <input type="text" name="name" id="name" placeholder="담당자를 입력하세요" class="small">
                                </div>
                                <div class="inputBox">
                                    <p>전화번호</p>
                                    <div class="telInput">
                                        <input type="text" name="tel1" id="tel1" value="010">
                                        -
                                        <input type="text" name="tel2" id="tel2" oninput="phoneAutoHyphen(this)" maxlength="9" class="large">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="inputsContainer">
                            <p class="InputsTitle">사용 정보</p>
                            <div class="inputContainer">
                                <div class="inputBox">
                                    <p>사용일시</p>
                                    <input type="date" name="applydate" id="applydate" class="medium">
                                </div>
                            </div>
                            <div class="inputContainer">
                                <div class="inputBox">
                                    <p>사용시간</p>
                                    <div class="checkRadioBox">
                                        <div class="checkRadio">
                                            <input id="time1" type="checkbox" name="time" value="1" data-id="08:00">
                                            <label for="time1">08:00</label>
                                        </div>
                                        <div class="checkRadio">
                                            <input id="time2" type="checkbox" name="time" value="2" data-id="09:00">
                                            <label for="time2">09:00</label>
                                        </div>
                                        <div class="checkRadio">
                                            <input id="time3" type="checkbox" name="time" value="3" data-id="10:00">
                                            <label for="time3">10:00</label>
                                        </div>
                                        <div class="checkRadio">
                                            <input id="time4" type="checkbox" name="time" value="4" data-id="11:00">
                                            <label for="time4">11:00</label>
                                        </div>
                                        <div class="checkRadio">
                                            <input id="time5" type="checkbox" name="time" value="5" data-id="12:00">
                                            <label for="time5">12:00</label>
                                        </div>
                                        <div class="checkRadio">
                                            <input id="time6" type="checkbox" name="time" value="6" data-id="13:00">
                                            <label for="time6">13:00</label>
                                        </div>
                                        <div class="checkRadio">
                                            <input id="time7" type="checkbox" name="time" value="7" data-id="14:00">
                                            <label for="time7">14:00</label>
                                        </div>
                                        <div class="checkRadio">
                                            <input id="time8" type="checkbox" name="time" value="8" data-id="15:00">
                                            <label for="time8">15:00</label>
                                        </div>
                                        <div class="checkRadio">
                                            <input id="time9" type="checkbox" name="time" value="9" data-id="16:00">
                                            <label for="time9">16:00</label>
                                        </div>
                                        <div class="checkRadio">
                                            <input id="time10" type="checkbox" name="time" value="10" data-id="17:00">
                                            <label for="time10">17:00</label>
                                        </div>
                                        <div class="checkRadio">
                                            <input id="time12" type="checkbox" name="time" value="11" data-id="18:00">
                                            <label for="time12">18:00</label>
                                        </div>
                                        <div class="checkRadio">
                                            <input id="time13" type="checkbox" name="time" value="all" data-id="전일">
                                            <label for="time13">전일</label>
                                        </div>
                                        <div class="checkRadio">
                                            <input id="time14" type="checkbox" name="time" value="night" data-id="야간">
                                            <label for="time14">야간</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="inputContainer">
                                <div class="inputBox">
                                    <p>사용인원</p>
                                    <input type="text" name="person" id="person" placeholder="인원수를 입력하세요" class="medium" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                </div>
                                <div class="inputBox">
                                    <p>부가 시설 이용</p>
                                    <div class="checkRadioBox">
                                        <div class="checkRadio">
                                            <input id="setting1" type="radio" name="setting" value="강의 세팅">
                                            <label for="setting1">강의 세팅</label>
                                        </div>
                                        <div class="checkRadio">
                                            <input id="setting2" type="radio" name="setting" value="회의실 세팅">
                                            <label for="setting2">회의실 세팅</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="inputContainer">
                                <div class="inputBox" style="width: 100%;">
                                    <p>사용목적</p>
                                    <input type="text" name="purpose" id="purpose" placeholder="사용 목적을 입력하세요">
                                </div>
                            </div>
                            <div class="inputContainer">
                                <div class="inputBox" style="width: 100%;">
                                    <p>요청사항</p>
                                    <textarea name="BIGO" id="BIGO" placeholder="요청사항을 입력하세요"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bookingInfo">
                        <h4 class="modalTitle">예약정보 확인</h4>
                        <ul class="checkInfo">
                            <li><p>기관명</p><span class="res1">-</span></li>
                            <li><p>담당부서</p><span class="res2">-</span></li>
                            <li><p>담당자</p><span class="res3">-</span></li>
                            <li style="column-gap: 0;"><p style="margin-right: 20px;">전화번호</p><span class="phoneRes">010-</span><span class="res4"></span></li>
                            <li><p>사용일시</p><span class="res5">-</span></li>
                            <li><p>시용시간</p><span class="res6">-</span></li>
                            <li><p>사용인원</p><span class="res7">-</span></li>
                            <li><p>부가시설</p><span class="res8">-</span></li>
                            <li><p>사용목적</p><span class="res9">-</span></li>
                        </ul>
                        <a href="#lnk" class="rulesButton apply" onclick="reservation()">
                            <p>예약하기</p>
                            <span></span>
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
	<script>
		function reservation(){
			var company = $('#company').val();
			var depart = $('#depart').val();
			var name = $('#name').val();
			var tel1 = $('#tel1').val();
			var tel2 = $('#tel2').val();
			var mobile = tel1+"-"+tel2  
			var applydate = $('#applydate').val();
			
			var person = $('#person').val();
			var etc1 = $('#setting1').val();
			var etc2 = $('#setting2').val();
			var purpose = $('#purpose').val();
			var BIGO = $('#BIGO').val();

			
	    	
			var time = ''
			var arr = []
			$('input[name=time]:checked').each(function(){
				var chk = $(this).val();
				arr.push(chk)
			})
			arr.forEach((num, index) => {
				time += num;
	            if (index < arr.length - 1) {
	            	time += ',';
	            }
	        });
			
			if(company == '' || company == null || company == undefined){
				alert("기관명을 입력해주세요.")
				$('#company').focus();
				return false;
			}
			if(depart == '' || depart == null || depart == undefined){
				alert("담당부서를 입력해주세요.")
				$('#alert').focus();
				return false;
			}
			if(name == '' || name == null || name == undefined){
				alert("이름을 입력해주세요.")
				$('#name').focus();
				return false;
			}
			if(mobile == '' || mobile == null || mobile == undefined){
				alert("연락처 입력을 확인해주세요.")
				$('#tel1').focus();
				return false;
			}
			if(applydate == '' || applydate == null || applydate == undefined){
				alert("사용일시를 입력해주세요.")
				$('#applydate').focus();
				return false;
			}
			if(person == '' || person == null || person == undefined){
				alert("인원수를 입력해주세요.")
				$('#person').focus();
				return false;
			}
			if(purpose == '' || purpose == null || purpose == undefined){
				alert("사용목적을 입력해주세요.")
				$('#purpose').focus();
				return false;
			}
			
			if(confirm ("시설 예약을 신청하시겠습니까?")){
				var param = {
					company : company,
					depart : depart,
					name : name,
					mobile : mobile,
					applydate : applydate,
					time : time,
					person : person,
					etc1 : etc1,
					etc2 : etc2,
					purpose : purpose,
					bigo : BIGO
				}
				
				$.ajax({
					url : "facility_reservation"
					, type : "POST"
					, data : JSON.stringify(param)
					, contentType : "application/json"
					, async : true
					, success : function(data, status, xhr) {
						if(data.rst == 'Y'){
							alert("정상적으로 신청되었습니다.")
							location.href="/facility"
						}
						else{
							alert("오류가 발생했습니다.\n관리자에게 문의해주세요.")
						}
					},
					error : function(err){
						console.log(err)
						alert("오류가 발생했습니다.\n관리자에게 문의해주세요")
					}
					
				});
			}
		}
	</script>
</body>
</html>