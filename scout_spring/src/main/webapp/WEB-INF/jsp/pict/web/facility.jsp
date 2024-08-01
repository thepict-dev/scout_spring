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
                <li><span>스카우트 홀 예약</span></li>
            </ul>
            <!-- 스카우트 구성 -->
            <div class="tabInner ruleContents active">
                <div class="flexContainer">
                    <div class="titleImg center">
                        <h3 class="contentTitle">중앙훈련원</h3>
                        <h3 class="contentTitle mbText">중앙훈련원</h3>
                        <span><img src="/user_img/facility1.png" alt="중앙훈련원"></span>
                        <div class="bookingButtons">
                        	<a href="http://scoutcenter.scout.or.kr/SysApplicationController.do" target="_blank" title="새창이동">중앙훈련원 사이트 바로가기</a>
                        	<a href="https://search.naver.com/search.naver?where=nexearch&sm=top_sug.pre&fbm=0&acr=1&acq=%EC%84%9C%EC%82%BC%EB%A6%89%EC%B2%AD%EC%86%8C%EB%85%84&qdt=0&ie=utf8&query=%EC%84%9C%EC%82%BC%EB%A6%89%EC%B2%AD%EC%86%8C%EB%85%84%EC%95%BC%EC%98%81%EC%9E%A5" target="_blank" title="새창이동">서삼릉청소년야영장 예약하기</a>
                       	</div>
                    </div>
                    <div class="contentDesc">
                        <div class="textsWrapper rules facility">
                            <p>기본 정보</p>
                            <ul class="textsSub">
                                <li><p>명칭</p><span>중앙훈련원/서삼릉 청소년 야영장</span></li>
                                <li><p>면적</p><span>32,135㎡</span></li>
                                <li><p>주소</p><span>경기도 고양시 원당동 200-5</span></li>
                                <li><p>연락처</p><span>Tel&#41; 031-967-9164</span></li>
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
                <div class="flexContainer gon">
                    <div class="titleImg">
                        <h3 class="contentTitle">곤지암 야영장</h3>
                        <h3 class="contentTitle mbText">곤지암 야영장</h3>
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
                    <h3 class="contentTitle mbText">사용 규정</h3>
                    <div class="contentDesc">
                        <div class="textsWrapper rules">
                            <p>스카우트 홀 사용 수칙</p>
                            <div class="bullets">
                                <p><span>•</span>회의실 사용 후 집기는 본래의 위치대로 정돈하며, 쓰레기와 오물 처리 등 주변 청소를 하여야 합니다. </p>
                                <p><span>•</span>다과, 음료, 음식물의 반입, 음주, 흡연은 절대 불허합니다.<br>※ 코로나19로 인한 음식물 반입이 금지되오니 협조부탁드립니다.</p>
                                <p><span>•</span>탁자/의자 배치 및 정리는 사용자가 시행하며 필요시 관리자와 협의합니다.</p>
                                <p><span>•</span>사용료는 사전에 완납하여 주시기 바랍니다.<br><p style="font-weight:700">&nbsp;&nbsp;&nbsp;&nbsp;(계좌번호 : 신한은행 140-005-945980  예금주 한국스카우트연맹)</p></p>
                                <p><span>•</span>1시간 이내 사용 시는 시간당 대관료로 정산합니다.</p>
                                <p><span>•</span>예약취소는 사용 예정일 5일 전까지 가능하며, 대관료는 이용 전에 완납 합니다<br>(취소 시 25%의 환불수수료가 부과됩니다)</p>
                                <p><span>•</span>무료주차는 회의실 사용 시 1대로 합니다.<br>(기타 다른 차량은 규정에 의한 주차료로 정산합니다.)</p>
                                <p><span>•</span>사용 시에는 정숙하고 질서를 지켜야 하며, 사용도중 발생하는 모든 민. 형사상 사고는 사용자가 책임집니다.</p>
                                <p><span>•</span>사용 후 책상 및 의자는 원상태로 정리합니다.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="flexContainer gon">
                    <h3 class="contentTitle">시설사용료</h3>
                    <h3 class="contentTitle mbText">시설사용료</h3>
                    <div class="contentDesc">
                        <div class="textsWrapper rules facility">
                            <p>스카우트 홀</p>
                            <ul class="textsSub gon">
                                <li><p>09시~12시(오전)</p><span>210,000원</span></li>
                                <li><p>13시~18시(오후)</p><span>350,000원</span></li>
                                <li><p>09시~18시(전일)</p><span>500,000원</span></li>
                                <li><p>18시~21시(야간)</p><span>300,000원(18시~21시)</span></li>
                                <li><p>초과시간비용</p><span>주간 : 80,000원 / 야간 : 120,000원</span></li>
                            </ul>
                        </div>
                        <div class="facilityCaption">
                            <p>※ 입주사, 장애인, 청소년 단체 및 장기계약 시 : 20%할인</p>
                            <p>※ 문의 전화번호 : 02-6335-2005</p>
                        </div>
                    </div>
                </div>
                <div class="bookingBtn">
                    <button type="button">
                        스카우트 홀 예약하러 가기
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
                                            <input id="morning" type="checkbox" name="time" value="1" data-id="오전">
                                            <label for="morning">오전</label>
                                        </div>
                                        <div class="checkRadio">
                                            <input id="aftnoon" type="checkbox" name="time" value="2" data-id="오후">
                                            <label for="aftnoon">오후</label>
                                        </div>
                                        <div class="checkRadio">
                                            <input id="night" type="checkbox" name="time" value="3" data-id="야간">
                                            <label for="night">야간</label>
                                        </div>
                                        <div class="checkRadio">
                                            <input id="all" type="checkbox" name="time" value="" data-id="">
                                            <label for="all">전일</label>
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
                                            <input id="setting1" type="checkbox" name="setting" value="강의 세팅" data-id="강의 세팅">
                                            <label for="setting1">강의 세팅</label>
                                        </div>
                                        <div class="checkRadio">
                                            <input id="setting2" type="checkbox" name="setting" value="회의실 세팅" data-id="회의실 세팅">
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
	                    <a href="#lnk" class="rulesButton apply mbApply" onclick="reservation()">
	                        <p>예약하기</p>
	                        <span></span>
	                    </a>
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
				if(chk != '') arr.push(chk)
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