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
	    	<c:param name="pageTitle" value="전종리스트"/>
	    </c:import>
	    <div class="contentsContainer">
	        <div class="formContainer scroller">
	            <div class="joinContainer">
                    <form action="" id="register" name="register" method="post" enctype="multipart/form-data">
                        <h2 class="subTitles" style="padding: 16px 0 0 24px;">사용자 정보</h2>
                        <div class="basicInfo1 inputsPd">
                            <div class="mainProfile">
                            	<img src="/front_img/profile.png" alt="">
                            </div>
                            <div class="stackInputs">
                                <div class="inputsContainer">
                                    <div class="inputBox">
                                        <p class="inputCaption">회원번호</p>
                                        <input type="text" name="MEMBERNO" id="MEMBERNO" readonly placeholder="내용을 입력하세요…" class="lgThinInput">
                                    </div>
                                    <div class="inputBox">
                                        <p class="inputCaption">이름</p>
                                        <input type="text" name="KNAME" id="KNAME" readonly placeholder="내용을 입력하세요…" class="lgThinInput">
                                    </div>
                                    <div class="inputBox">
                                        <p class="inputCaption">연맹</p>
                                        <input type="text" name="" id="" readonly placeholder="내용을 입력하세요…" class="lgThinInput">
                                    </div>
                                </div>
                                <div class="inputsContainer">
                                    <div class="inputBox">
		                                <p class="inputCaption">소속부서</p>
		                                <div class="inputsAlign">
		                                    <select name="" id="" onchange="fn_get_unitylist_org()" class="lgThinSelect">
		                                    	<option value="1">본부</option>
		                                    </select>
		                                    <select name="" id="" class="lgThinSelect">
		                                        <option value="1">조직훈육팀</option>
		                                        <option value="2">국제비전팀</option>
		                                        <option value="3">경영지원팀</option>
		                                        <option value="4">총무회계팀</option>
		                                        <option value="5">관리운영팀</option>
		                                        <option value="6">조직훈육사업본부</option>
		                                        <option value="7">관리운영사업본부</option>
		                                        <option value="8">곤지암야영장</option>
		                                        <option value="9">경영국제사업본부</option>
		                                        <option value="10">사회공헌팀</option>
		                                        <option value="11">토당청소년수련관</option>
		                                        <option value="12">대외협력팀</option>
		                                    </select>
		                                </div>
	                                </div>
                                    <div class="inputBox">
                                        <p class="inputCaption">직급</p>
                                        <select name="" id="" class="lgThinSelect">
                                            <option value="">선택하세요.</option>
                                            <option value="1">개인</option>
                                            <option value="2">법인</option>
                                            <option value="3">단체</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="inputsContainer">
                                    <div class="inputBox">
                                        <p class="inputCaption">생년월일</p>
                                        <input type="date" name="BIRTHDAY" id="BIRTHDAY" class="lgThinInput" required>
                                    </div>
		                            <div class="inputBox">
		                                <p class="inputCaption">휴대전화</p>
		                                <input type="text" name="" id="MOBILE" placeholder="내용을 입력하세요…" class="lgThinInput">
		                            </div>
		                            <div class="inputBox">
		                                <p class="inputCaption">이메일</p>
		                                <input type="text" name="EMAIL" id="EMAIL" placeholder="내용을 입력하세요…" class="lgThinInput">
		                            </div>
                                </div>
                            </div>
                        </div>
                        <div class="tableButtons inputsPd bottomBd" style="justify-content: flex-end;">
                            <div class="buttons">
                                <a href="#lnk" class="smButton"><img src="/front_img/download.png" alt="">저장</a>
                            </div>
                        </div>
                           <div class="tableContainer">
                               <h2 class="subTitles">사용자 조회 내용</h2>
                               <div class="tableWrapper">
                                   <table style="min-width: 1680px;">
                                       <colgroup>
                                           <col width="5%" />
                                           <col width="5%" />
                                           <col width="5%" />
                                           <col width="10%" />
                                           <col width="15%" />
                                           <col width="15%" />
                                           <col width="15%" />
                                           <col width="10%" />
                                           <col width="10%" />
                                           <col width="10%" />
                                       </colgroup>
                                       <thead>
                                           <tr>
                                               <th>No</th>
                                               <th style="left: 84px;">회원번호</th>
                                               <th>이름</th>
                                               <th>연맹</th>
                                               <th>소속부서1</th>
                                               <th>소속부서2</th>
                                               <th>직급</th>
                                               <th>생년월일</th>
                                               <th>휴대전화</th>
                                               <th>이메일</th>
                                           </tr>
                                       </thead>
                					<tbody>
										<c:forEach var="former_list" items="${former_list}" varStatus="status">
											<tr>
												<td>${status.count}</td>
												<td style="left: 84px;">${former_list.MEMBERNO}</td>
												<td>${former_list.KNAME}</td>
												<td>${former_list.ASSOCIATIONNAME}</td>
												<td>${former_list.sosock}</td>
												<td>${former_list.depart}</td>
												<td>${former_list.rank}</td>
												<td>${former_list.BIRTHDAY}</td>
												<td>${former_list.MOBILE}</td>
												<td>${former_list.EMAIL}</td>
                                           </tr>
										</c:forEach>
                					</tbody>
                                   </table>
                               </div>
                           </div>
                    </form>
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
				$("#register").attr("action", "/new_person");
				$("#register").submit();
			}
		}
		
	
	</script>
</html>