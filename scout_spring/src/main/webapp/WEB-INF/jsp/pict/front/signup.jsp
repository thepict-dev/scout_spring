<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>	
<html lang="ko">
	<%@ include file="./include/head.jsp" %>
	<script src="/js/script_signup.js" defer></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<body>
		<%@ include file="./include/lnb.jsp" %>
		<c:import url="./include/header.jsp">
			<c:param name="pageParent" value="스카우트 통합 관리"/>
	    	<c:param name="pageTitle" value="신규 회원등록"/>
	    </c:import>
	    <div class="contentsContainer">
	        <div class="formContainer">
	            <div class="joinContainer">
	                <div class="fomrTabContent signContainer">
	                    <form action="" id="register" name="register" method="post" enctype="multipart/form-data">
	                        <h2 class="subTitles" style="padding: 16px 0 0 24px;">가입정보</h2>
	                        <div class="basicInfo1 inputsPd">
	                            <div class="mainProfile sign">
	                            	<img src="/front_img/users.png" alt="">
	                                <p>프로필 사진은 회원 등록 후<br>회원 통합창에서 설정 가능합니다.</p>
	                            </div>
	                            <div class="stackInputs">
	                                <div class="inputsContainer">
	                                    <div class="inputBox">
	                                        <p class="inputCaption">회원번호</p>
	                                        <input type="text" name="MEMBERNO" id="MEMBERNO" readonly placeholder="내용을 입력하세요…" class="lgThinInput">
	                                    </div>
	                                    <div class="inputBox">
	                                        <p class="inputCaption">회원구분</p>
	                                        <select name="MEMCLSCODE" id="MEMCLSCODE" class="smThinSelect">
	                                            <option value="">선택하세요.</option>
	                                            <option value="1">개인</option>
	                                            <option value="2">법인</option>
	                                            <option value="3">단체</option>
	                                        </select>
	                                    </div>
	                                    <div class="inputBox">
	                                        <p class="inputCaption">회원등급</p>
	                                        <select name="MEMGRADECODE" id="MEMGRADECODE" class="lgThinSelect">
	                                            <option value="0">대원/지도자</option>
	                                            <option value="1">후원회원</option>
	                                            <option value="2">행사회원</option>
	                                        </select>
	                                    </div>
	                                </div>
	                                <div class="inputsContainer">
	                                    <div class="inputBox">
	                                        <p class="inputCaption">생년월일</p>
	                                        <input type="date" name="BIRTHDAY" id="BIRTHDAY" class="lgThinInput" required max="9999-12-31">
	                                    </div>
	                                    <div class="inputBox">
	                                        <p class="inputCaption">전종여부</p>
	                                        <select name="EMPLOYEEY" id="EMPLOYEEY" class="smThinSelect">
	                                            <option value="N">-</option>
	                                            <option value="Y">전종</option>
	                                        </select>
	                                    </div>
	                                </div>
	                                <div class="inputsContainer">
	                                    <div class="inputBox">
	                                        <p class="inputCaption">성명(한글)</p>
	                                        <input type="text" name="KNAME" id="KNAME" placeholder="내용을 입력하세요…" class="lgThinInput">
	                                    </div>
	                                    <div class="inputBox">
	                                        <p class="inputCaption">성명(영문)</p>
	                                        <input type="text" name="ENAME" id="ENAME" placeholder="내용을 입력하세요…" class="lgThinInput">
	                                    </div>
	                                    <div class="inputBox genderContainer">
	                                        <div class="gender">
	                                            <input type="radio" name="SEX" value="M" id="SEX_M" checked>
	                                            <label for="SEX_M">남</label>
	                                        </div>
	                                        <div class="gender">
	                                            <input type="radio" name="SEX" value="W" id="SEX_W">
	                                            <label for="SEX_W">여</label>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="inputsContainer inputsPd_">
	                            <div class="inputBox">
	                                <p class="inputCaption">집전화</p>
	                                <input type="text" name="" id="HTELNO" placeholder="내용을 입력하세요…" class="lgThinInput">
	                            </div>
	                            <div class="inputBox">
	                                <p class="inputCaption">휴대전화</p>
	                                <input type="text" name="" id="MOBILE" placeholder="내용을 입력하세요…" class="lgThinInput">
	                            </div>
	                            <div class="inputBox">
	                                <p class="inputCaption">이메일</p>
	                                <input type="text" name="EMAIL" id="EMAIL" placeholder="내용을 입력하세요…" class="lgThinInput">
	                            </div>
	                            <div class="inputBox">
	                                <p class="inputCaption">수신여부</p>
	                                <div class="recive">
	                                    <input type="checkbox" name="SMSYN" id="SMSYN"><label for="SMSYN">SMS</label>
	                                    <input type="checkbox" name="EMAILYN" id="EMAILYN"><label for="EMAILYN">EMAIL</label>
	                                </div>
	                            </div>
	                            <div class="inputBox">
	                                <p class="inputCaption">직업</p>
	                                <select name="JOBCODE" id="JOBCODE" class="lgThinSelect">
	                                	<option value="">선택하세요.</option>
										<c:forEach var="job_list" items="${job_list}" varStatus="status">
	                                    	<option value="${job_list.JOBCODE}">${job_list.JOBNAME}</option>	
	                                   	</c:forEach>
	                                </select>
	                            </div>
	                        </div>
	                        <div class="inputsContainer inputsPd_">
	                            <div class="inputBox">
	                                <p class="inputCaption">집주소</p>
	                                <div class="zip">
	                                    <input type="text" name="HPOSTCODE" id="HPOSTCODE" readonly class="lgThinInput">
	                                    <a href="#lnk" class="normalButton white" id="searchZip">우편번호 검색</a>
	                                </div>
	                                <input type="text" name="HADDR" id="HADDR" class="lgThinInput post">
	                            </div>
	                        </div>
	                        <div class="tableButtons inputsPd bottomBd" style="justify-content: flex-end;">
	                            <div class="buttons">
	                                <a href="#lnk" onclick="fn_submit()" class="smButton"><img src="/front_img/sign.png" alt="">등록하기</a>
	                            </div>
	                        </div>
	                    </form>
	                </div>
	            </div>
	        </div>
	    </div>
	</body>
	<script>
		function fn_submit(){
			var text = "등록하시겠습니까?";
			var memcls = $('#MEMCLSCODE').val();
			var kname = $('#KNAME').val();
			var ename = $('#ENAME').val();
			var birth = $('#BIRTHDAY').val();
			var mobile = $('#MOBILE').val();
			var gender = "M"
			if($('input:radio[id=SEX_W]').is(':checked')){
				gender = "W"
			}
			$('#SEX').val(gender)
			
			var job = $('#JOBCODE').val();
			var SMSYN = "N"
			if($('input:checkbox[id=SMSYN]').is(':checked')) SMSYN = "Y"
			
			$('#SMSYN').val(SMSYN)
			
			var EMAILYN = "N"
			if($('input:checkbox[id=EMAILYN]').is(':checked')) EMAILYN = "Y"
			$('#EMAILYN').val(EMAILYN)
			
			
			if (memcls == undefined || memcls == ''){
				alert("회원구분을 선택해주세요.");
				$('#MEMCLSCODE').focus();
				return false;
			}
			
			if (birth == undefined || birth == ''){
				alert("생년월일을 선택해주세요.");
				return false;
			}

			if (kname == null || kname == undefined || kname == ''){
				alert("국문 성명을 입력해주세요.");
				$("#KNAME").focus();
				return false;
			}
			
			if (ename == null || ename == undefined || ename == ''){
				alert("영문 성명을 입력해주세요.");
				$("#ENAME").focus();
				return false;
			}
			
			if (mobile == "" || mobile == undefined || mobile == '') {
				alert("휴대전화 번호를 입력해주세요.");
				$('#MOBILE').focus();
				return false;
			}
			

			if (job == "" || job == undefined) {
				window.alert("직업을 선택해주세요.");
				$("#JOBCODE").focus();
				return false;
			}
			
			if (confirm(text)) {
				$("#register").attr("action", "/admin/new_person");
				$("#register").submit();
			}
		}
		
		window.onload = function(){
		    document.getElementById("searchZip").addEventListener("click", function(){ //주소입력칸을 클릭하면
		        //카카오 지도 발생
		        new daum.Postcode({
		            oncomplete: function(data) { //선택시 입력값 세팅
		                document.getElementById("HPOSTCODE").value = data.zonecode;
		                document.getElementById("HADDR").value = data.address; // 주소 넣기
		                document.getElementById("HADDR").focus();
		            }
		        }).open();
		    });
		}
	
	</script>
</html>