<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="localAppModal">
    <div class="modalWrapper">
        <button type="button"><img src="/user_img/close.png" alt="닫기"></button>
        <div class="modalInner">
            <form action="">
                <div class="bookingForm">
                    <h4 class="modalTitle">스카우트 가입하기</h4>
                    <div class="localDesc">
                        <p>* 지방특수연맹 현황</p>
                        <span>한국스카우트연맹은 지역과 종교를 기준으로 22개 지방특수연맹으로 구분됩니다.<br>모든 대원과 지도자는 이러한 22개의 연맹에 소속되어 활동할 수 있습니다.</span>
                        <span>원활한 상담을 위해 연맹 구분을 참고해주세요.</span>
                    </div>
                    <div class="inputsContainer">
                        <div class="inputContainer">
                            <div class="inputBox">
                                <p>*성명</p>
                                <input type="text" name="name" id="name" placeholder="성명을 입력하세요" class="large">
                            </div>
                            <div class="inputBox">
                                <p>*이메일 주소</p>
                                <input type="text" name="EMAIL" id="EMAIL" placeholder="이메일을 입력하세요" class="large">
                            </div>
                        </div>
                        <div class="inputContainer">
                            <div class="inputBox">
                                <p>*연락처</p>
                                <div class="telInput">
                                    <input type="text" name="phone1" id="phone1" value="010">
                                    -
                                    <input type="text" name="phone2" id="phone2" oninput="phoneAutoHyphen(this)" maxlength="9" class="large">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="inputsContainer">
                        <div class="inputContainer">
                            <div class="inputBox">
                                <p>*가입희망자 연령<span>가입을 희망하시는 대상의 연령을 선택해주세요.</span></p>
                                <div class="checkRadioBox">
                                    <div class="checkRadio">
                                        <input id="age1" type="radio" name="age" value="1">
                                        <label for="age1">비버스카우트(유치원생, 4~6세)</label>
                                    </div>
                                    <div class="checkRadio">
                                        <input id="age2" type="radio" name="age" value="2">
                                        <label for="age2">컵스카우트(초틍학생, 만6~12세)</label>
                                    </div>
                                    <div class="checkRadio">
                                        <input id="age3" type="radio" name="age" value="3">
                                        <label for="age3">스카우트(중학생, 만13~15세)</label>
                                    </div>
                                    <div class="checkRadio">
                                        <input id="age4" type="radio" name="age" value="4">
                                        <label for="age4">벤처스카우트(고등학생, 만16~18세)</label>
                                    </div>
                                    <div class="checkRadio">
                                        <input id="age5" type="radio" name="age" value="5">
                                        <label for="age5">지도자(성인, 만19세 이상)</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="inputContainer">
                            <div class="inputBox">
                                <p>*가입희망자와 관계<span>가입을 희망하시는 대상과 상담 신청하시는 본인의 관계는 어떻게 되시나요?</span></p>
                                <div class="checkRadioBox">
                                    <div class="checkRadio">
                                        <input id="relation1" type="radio" name="relation" value="1">
                                        <label for="relation1">본인</label>
                                    </div>
                                    <div class="checkRadio">
                                        <input id="relation2" type="radio" name="relation" value="2">
                                        <label for="relation2">부모(또는 보호자)</label>
                                    </div>
                                    <div class="checkRadio">
                                        <input id="relation3" type="radio" name="relation" value="3">
                                        <label for="relation3">스카우트 지도자</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="inputContainer">
                            <div class="inputBox" style="width: 100%;">
                                <p>*상담 희망 연맹</p>
                                <select name="association" id="association">
									<option value="011"> 서울북부</option>
									<option value="012"> 서울남부</option>
									<option value="020"> 부산</option>
									<option value="030"> 대구</option>
									<option value="040"> 인천</option>
									<option value="050"> 광주</option>
									<option value="060"> 대전</option>
									<option value="070"> 울산</option>
									<option value="100"> 경기북부</option>
									<option value="110"> 경기남부</option>
									<option value="120"> 강원</option>
									<option value="130"> 충북</option>
									<option value="140"> 충남세종</option>
									<option value="150"> 전북</option>
									<option value="160"> 전남</option>
									<option value="170"> 경북</option>
									<option value="180"> 경남</option>
									<option value="190"> 제주</option>
									<option value="210"> 가톨릭</option>
									<option value="220"> 원불교</option>
									<option value="230"> 불교</option>
									<option value="240"> 기독교</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <a href="#lnk" class="rulesButton apply active" onclick="apply()">
                        <p>신청하기</p>
                        <span></span>
                    </a>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
	function apply(){
		var name = $('#name').val();
		var email = $('#EMAIL').val();
		
		var tel1 = $('#phone1').val();
		var tel2 = $('#phone2').val();
		var mobile = tel1+"-"+tel2  
		var age = ""
		var relation = ""
		$('input[name=age]:checked').each(function(){
			var chk = $(this).val();
			age = chk
		})
		
		$('input[name=relation]:checked').each(function(){
			var chk = $(this).val();
			relation = chk
		})
		
		var association = $('#association').val()
		
		if(name == '' || name == null || name == undefined){
			alert("성명을 입력해주세요.")
			$('#name').focus();
			return false;
		}
		if(email == '' || email == null || email == undefined){
			alert("이메일을 입력해주세요.")
			$('#email').focus();
			return false;
		}
		if(tel2 == '' || tel2 == null || tel2 == undefined){
			alert("연락처 입력을 확인해주세요.")
			$('#phone2').focus();
			return false;
		}
		if(age == '' || age == null || age == undefined){
			alert("가입희망자 연령을 선택해주세요.")
			$('#age').focus();
			return false;
		}
		if(relation == '' || relation == null || relation == undefined){
			alert("가입희망자와의 관계를 선택해주세요.")
			$('#relation').focus();
			return false;
		}
		if(association == '' || association == null || association == undefined){
			alert("상담 희망 연맹을 선택해주세요.")
			$('#association').focus();
			return false;
		}
		if(confirm ("상담 예약을 신청하시겠습니까?")){
			var param = {
				name : name,
				email : email,
				mobile : mobile,
				age : age,
				relation : relation,
				association : association
			}
			
			$.ajax({
				url : "local_apply"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				
				, success : function(data, status, xhr) {
					if(data.rst == 'Y'){
						alert("정상적으로 신청되었습니다.")
						location.href="/"
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