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
                    <h4 class="modalTitle">지역가입 안내</h4>
                    <div class="localDesc">
                        <p>* 지방특수연맹 현황</p>
                        <span>한국스카우트연맹은 지역과 종교를 기준으로 21개 지방특수연맹으로 구분됩니다.<br>모든 대원과 지도자는 이러한 21개의 연맹에 소속되어 활동할 수 있습니다.</span>
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
                                <input type="text" name="email" id="email" placeholder="담당부서를 입력하세요" class="large">
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
                                        <input id="age1" type="checkbox" name="age">
                                        <label for="age1">비버스카우트(유치원생, 4~6세)</label>
                                    </div>
                                    <div class="checkRadio">
                                        <input id="age2" type="checkbox" name="age">
                                        <label for="age2">컵스카우트(초틍학생, 만6~12세)</label>
                                    </div>
                                    <div class="checkRadio">
                                        <input id="age3" type="checkbox" name="age">
                                        <label for="age3">스카우트(중학생, 만13~15세)</label>
                                    </div>
                                    <div class="checkRadio">
                                        <input id="age4" type="checkbox" name="age">
                                        <label for="age4">벤처스카우트(고등학생, 만16~18세)</label>
                                    </div>
                                    <div class="checkRadio">
                                        <input id="age5" type="checkbox" name="age">
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
                                        <input id="relation1" type="radio" name="relation" value="강의 세팅">
                                        <label for="relation1">본인</label>
                                    </div>
                                    <div class="checkRadio">
                                        <input id="relation2" type="radio" name="relation" value="회의실 세팅">
                                        <label for="relation2">부모(또는 보호자)</label>
                                    </div>
                                    <div class="checkRadio">
                                        <input id="relation3" type="radio" name="relation" value="회의실 세팅">
                                        <label for="relation3">스카우트 지도자</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="inputContainer">
                            <div class="inputBox" style="width: 100%;">
                                <p>*상담 희망 연맹</p>
                                <select name="BRDNO" id="BRDNO">
                                    <option value="">dd</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <a href="#lnk" class="rulesButton apply active">
                        <p>신청하기</p>
                        <span></span>
                    </a>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
	function reservation(){
		var name = $('#name').val();
		var email = $('#email').val();
		var phone1 = $('#phone1').val();
		var phone2 = $('#phone2').val();
		var phone = phone1+"-"+phone2  
		
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
		if(phone == '' || phone == null || phone == undefined){
			alert("연락처 입력을 확인해주세요.")
			$('#tel1').focus();
			return false;
		}
	}
</script>