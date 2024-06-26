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
                            	<label for="attach_file">
	                                <img src="/front_img/profile.png" alt="프로필 이미지" class="profileImg" id="profile_img">
							    </label>
	                            <input type="file" class="imgUpload" id="attach_file" name="attach_file" accept="image/*" >
                            </div>
                            <div class="stackInputs">
                                <div class="inputsContainer">
                                    <div class="inputBox">
                                        <p class="inputCaption">회원번호</p>
                                        <input type="text" name="MEMBERNO" id="MEMBERNO" readonly placeholder="내용을 입력하세요…" class="lgThinInput">
                                    </div>
                                    <div class="inputBox">
                                        <p class="inputCaption">이름</p>
                                        <input type="text" name="KNAME" id="KNAME" placeholder="내용을 입력하세요…" class="lgThinInput">
                                    </div>
                                    <div class="inputBox">
                                        <p class="inputCaption">연맹</p>
                                        <select name="association" id="association" class="lgThinSelect">
                                        	<option value="">연맹선택</option>
		                             		<c:forEach var="association_list" items="${association_list}" varStatus="status">
			                                	<option value="${association_list.ASSOCIATIONCODE}"> ${association_list.ASSOCIATIONNAME}</option>
			                                </c:forEach>
		                                </select>
                                    </div>
                                </div>
                                <div class="inputsContainer">
                                    <div class="inputBox">
		                                <p class="inputCaption">소속부서</p>
		                                <div class="inputsAlign">
		                                    <select name="sosock" id="sosock" class="lgThinSelect">
		                                    	<option value="">소속부서선택</option>
		                                    	<option value="1">본부</option>
		                                    </select>
		                                    <select name="depart" id="depart" class="lgThinSelect">
		                                    	<option value="">팀선택</option>
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
                                        <select name="ranked" id="ranked" class="lgThinSelect">
                                            <option value="">직급선택</option>
                                            <option value="1">총재</option>
                                            <option value="2">사무총장</option>
                                            <option value="3">중앙훈련원장</option>
                                            <option value="4">사무처장 직무대리</option>
                                            <option value="5">사무처장</option>
                                            <option value="6">본부장</option>
                                            <option value="7">팀장</option>
                                            <option value="8">야영장장</option>
                                            <option value="9">국장</option>
                                            <option value="10">부장</option>
                                            <option value="11">차장</option>
                                            <option value="12">과장</option>
                                            <option value="13">대리</option>
                                            <option value="14">주임</option>
                                            <option value="15">사원</option>
                                            <option value="16">인턴</option>
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
                                <a href="#lnk" class="smButton" onclick="fn_submit()"><img src="/front_img/download.png" alt="">저장</a>
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
                					<tbody id="former_body">
										<c:forEach var="former_list" items="${former_list}" varStatus="status">
											<tr onclick="former_info('${former_list.MEMBERNO}')" id="former_${former_list.MEMBERNO}">
												<td>${status.count}</td>
												<td style="left: 84px;">${former_list.MEMBERNO}</td>
												<td id="name_${former_list.MEMBERNO}">${former_list.KNAME}</td>
												<td id="association_${former_list.MEMBERNO}">${former_list.ASSOCIATIONNAME}</td>
												<td id="sosock_${former_list.MEMBERNO}">
													<c:if test="${former_list.sosock eq '1'}">본부</c:if>
												</td>
												<td id="depart_${former_list.MEMBERNO}">
													<c:if test="${former_list.depart eq '1'}">조직훈육팀</c:if>
													<c:if test="${former_list.depart eq '2'}">국제비전팀</c:if>
													<c:if test="${former_list.depart eq '3'}">경영지원팀</c:if>
													<c:if test="${former_list.depart eq '4'}">총무회계팀</c:if>
													<c:if test="${former_list.depart eq '5'}">관리운영팀</c:if>
													<c:if test="${former_list.depart eq '6'}">조직훈육사업본부</c:if>
													<c:if test="${former_list.depart eq '7'}">관리운영사업본부</c:if>
													<c:if test="${former_list.depart eq '8'}">곤지암야영장</c:if>
													<c:if test="${former_list.depart eq '9'}">경영국제사업본부</c:if>
													<c:if test="${former_list.depart eq '10'}">사회공헌팀</c:if>
													<c:if test="${former_list.depart eq '11'}">토당청소년수련관</c:if>
													<c:if test="${former_list.depart eq '12'}">대외협력팀</c:if>
												</td>
												<td id="ranked_${former_list.MEMBERNO}">
													<c:if test="${former_list.ranked eq ''}">직급선택</c:if>
													<c:if test="${former_list.ranked eq '1'}">총재</c:if>
													<c:if test="${former_list.ranked eq '2'}">사무총장</c:if>
													<c:if test="${former_list.ranked eq '3'}">중앙훈련원장</c:if>
													<c:if test="${former_list.ranked eq '4'}">사무처장 직무대리</c:if>
													<c:if test="${former_list.ranked eq '5'}">사무처장</c:if>
													<c:if test="${former_list.ranked eq '6'}">본부장</c:if>
													<c:if test="${former_list.ranked eq '7'}">팀장</c:if>
													<c:if test="${former_list.ranked eq '8'}">야영장장</c:if>
													<c:if test="${former_list.ranked eq '9'}">국장</c:if>
													<c:if test="${former_list.ranked eq '10'}">부장</c:if>
													<c:if test="${former_list.ranked eq '11'}">차장</c:if>
													<c:if test="${former_list.ranked eq '12'}">과장</c:if>
													<c:if test="${former_list.ranked eq '13'}">대리</c:if>
													<c:if test="${former_list.ranked eq '14'}">주임</c:if>
													<c:if test="${former_list.ranked eq '15'}">사원</c:if>
													<c:if test="${former_list.ranked eq '16'}">인턴</c:if>
												</td>
												<td id="birthday_${former_list.MEMBERNO}">${former_list.BIRTHDAY}</td>
												<td id="mobile_${former_list.MEMBERNO}">${former_list.MOBILE}</td>
												<td id="email_${former_list.MEMBERNO}">${former_list.EMAIL}</td>
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
		function former_info(memberno){
			var param = {
				memberno : memberno,
			}
			$.ajax({
				url : "/former_info"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : false
				, success : function(data, status, xhr) {
					var html ="";
					console.log(data)
					if(data.list){
						var picimg = "http://scout.thepict.co.kr/front_img/profile.png"
						if(data.list[0].picimg != '' && data.list[0].picimg != null && data.list[0].picimg != undefined)
							picimg = data.list[0].picimg
							
						$('#profile_img').attr("src",picimg)
						$('#MEMBERNO').val(data.list[0].memberno)
						$('#KNAME').val(data.list[0].kname)
						$('#association').val(data.list[0].association)
						$('#sosock').val(data.list[0].sosock)
						$('#depart').val(data.list[0].depart)
						$('#ranked').val(data.list[0].ranked)
						
						$('#BIRTHDAY').val(data.list[0].birthday)
						$('#MOBILE').val(data.list[0].mobile)
						$('#EMAIL').val(data.list[0].email)
						
						
						$('.contentsContainer select').niceSelect('update')
					}
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
		}

		function fn_submit(){
			var param = {
				memberno : $('#MEMBERNO').val(),
				kname : $('#KNAME').val(),
				association : $('#association').val(),
				sosock : $('#sosock').val(),
				depart : $('#depart').val(),
				ranked : $('#ranked').val(),
				birthday : $('#BIRTHDAY').val(),
				mobile : $('#MOBILE').val(),
				email : $('#EMAIL').val(),
			}
			
			$.ajax({
				url : "/former_save"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, async : false
				, success : function(data, status, xhr) {
					if(data == 'Y'){
						alert("정상적으로 수정되었습니다.");
						$('#name_'+$('#MEMBERNO').val()).text($('#KNAME').val())
						$('#association'+$('#MEMBERNO').val()).text($('#association').val())
						$('#sosock'+$('#MEMBERNO').val()).text($('#sosock option:checked').text())
						$('#depart_'+$('#MEMBERNO').val()).text($('#depart option:checked').text())
						$('#ranked_'+$('#MEMBERNO').val()).text($('#ranked option:checked').text())
						$('#birthday_'+$('#MEMBERNO').val()).text($('#BIRTHDAY').val())
						$('#mobile_'+$('#MEMBERNO').val()).text($('#MOBILE').val())
						$('#email_'+$('#MEMBERNO').val()).text($('#EMAIL').val())
					}
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
		}
		$("#attach_file").change(function(){
			var memberno = $("#MEMBERNO").val()
			if(memberno == '' || memberno == undefined || memberno == null){
				alert("회원을 선택해주세요.")
				return false;
			}
			else{
				 var requestData = {
			        memberno : $("#MEMBERNO").val(),
			    }
			 
				var form = $('#attach_file')[0].files[0];
				var formData = new FormData();
				formData.append('img', form);
				formData.append("request", new Blob([JSON.stringify(requestData)], {type: "application/json"}));
				
				$.ajax({
					url: '/profile_img',
					processData : false,
					contentType : false,
					data : formData,
					type : 'POST',
					success : function(result){
						console.log(result)
						alert("이미지가 정상적으로 저장되었습니다.");
						
					},
					error : function(err){
						console.log(err)
					}
					
				});
			}
			
		})
		
		document.addEventListener('DOMContentLoaded', function() {
		    // leader_list와 scout_list 테이블에 이벤트 위임 설정
		    document.addEventListener('click', function(event) {
		        // 클릭된 요소가 leader_list 또는 scout_list 내의 tr 요소인지 확인
		        const clickedRow = event.target.closest('#former_body tr');
		        if (clickedRow) {
		            const table = clickedRow.closest('table');
		            const rows = table.querySelectorAll('tr');

		            rows.forEach(tr => {
		                tr.classList.remove('active');
		            });

		            clickedRow.classList.add('active');
		        }
		    });
		});
	</script>
</html>