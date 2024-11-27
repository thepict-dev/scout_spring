<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>	
<html lang="ko">
	<%@ include file="./include/head.jsp" %>
	<script src="/js/script_signup.js" defer></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<body>
		<%@ include file="./include/lnb.jsp" %>
		<c:import url="./include/header.jsp">
			<c:param name="pageParent" value="스카우트 통합 관리"/>
	    	<c:param name="pageTitle" value="평생회원 관리"/>
	    </c:import>
	    <div class="contentsContainer">
	        <div class="formContainer scroller">
	            <div class="joinContainer">
	            	<form action="" id="search_form" name="search_form" method="post" enctype="multipart/form-data">
	            		<input type="hidden" id="type" name="type">
	            		<input type="hidden" id="search_associationcode" name="search_associationcode">
	            		<input type="hidden" id="search_liferank" name="search_liferank">
	            		<input type="hidden" id="search_lifestatus" name="search_lifestatus">
	            	</form>
                    <form action="" id="register" name="register" method="post" enctype="multipart/form-data">
                        <h2 class="subTitles" style="padding: 16px 0 0 24px;">사용자 정보</h2>
                        <div class="basicInfo1 inputsPd">
                            <div class="mainProfile">
                            	<label for="attach_file">
	                                <img src="/front_img/profile.png" alt="프로필 이미지" class="profileImg" id="profile_img">
							    </label>
                            </div>
                            <div class="stackInputs">
                                <div class="inputsContainer">
                                    <div class="inputBox">
                                        <p class="inputCaption">회원번호</p>
                                        <input type="text" name="MEMBERNO" id="MEMBERNO" readonly class="lgThinInput">
                                    </div>
                                    <div class="inputBox">
                                        <p class="inputCaption">이름</p>
                                        <input type="text" name="KNAME" id="KNAME" class="lgThinInput" readonly>
                                    </div>
                                </div>
                                
                                <div class="inputsContainer">
                                    <div class="inputBox">
                                        <p class="inputCaption">생년월일</p>
                                        <input type="date" name="BIRTHDAY" id="BIRTHDAY" class="lgThinInput" required max="9999-12-31" readonly>
                                    </div>
		                            <div class="inputBox">
		                                <p class="inputCaption">휴대전화</p>
		                                <input type="text" name="" id="MOBILE" class="lgThinInput" readonly>
		                            </div>
		                            <div class="inputBox">
		                                <p class="inputCaption">이메일</p>
		                                <input type="text" name="EMAIL" id="EMAIL" class="lgThinInput" readonly>
		                            </div>
                                </div>
                                
                                <div class="inputsContainer">
                                    <div class="inputBox">
                                        <p class="inputCaption">평생회원등급</p>
                                        <input type="text" name="LIFERANK" id="LIFERANK" class="lgThinInput" required readonly>
                                    </div>
		                            <div class="inputBox">
		                                <p class="inputCaption">평생회원번호</p>
		                                <input type="text" name="LIFEMEMBERNO" id="LIFEMEMBERNO" class="lgThinInput" readonly>
		                            </div>
		                            <div class="inputBox">
		                                <p class="inputCaption">평생회원등록일</p>
		                                <input type="date" name="LIFEENTERDATE" id="LIFEENTERDATE" class="lgThinInput" readonly>
		                            </div>
		                            <div class="inputBox">
		                                <p class="inputCaption">평생회원상태</p>
		                                <input type="text" name="LIFESTATUS" id="LIFESTATUS" class="lgThinInput" readonly>
		                            </div>
                                </div>
                                
                                
                            </div>
                        </div>

						<div class="tableContainer">
                               <div class="tableTopButton">
			                    	<h2 class="subTitles">사용자 조회 내용</h2>
			                    	<div>
			                    		<span>골드:<fmt:formatNumber value="${vo.lifeg}" maxFractionDigits="0" />건 </span>
			                    		
			                    		<span>실버:<fmt:formatNumber value="${vo.lifes}" maxFractionDigits="0" />건 </span>
			                    		<span>일반:<fmt:formatNumber value="${vo.lifec}" maxFractionDigits="0" />건</span>
			                    		<span>전체:<fmt:formatNumber value="${vo.lifes + vo.lifes + vo.lifec}" maxFractionDigits="0" />건</span>
			                    		<span style="color : red">최종발급번호 : ${maxvo.MEMBERNO}</span>
			                    		
			                    	</div>
			                    	<div class="topButtonWrapper">
				                    	<select name="search_associationcode_form" id="search_associationcode_form" class="lgThinSelect" style="margin-top:5px">
	                                       	<option value="">전체</option>
		                             		<c:forEach var="association_list" items="${association_list}" varStatus="status">
			                                	<option value="${association_list.ASSOCIATIONCODE}" <c:if test="${pictVO.search_associationcode eq association_list.ASSOCIATIONCODE}">selected</c:if>> ${association_list.ASSOCIATIONNAME}</option>
			                                </c:forEach>
		                                </select>
		                                <select name="search_liferank_form" id="search_liferank_form" class="lgThinSelect" style="margin-top:5px">
	                                       	<option value="" <c:if test="${pictVO.search_liferank eq '' || pictVO.search_liferank eq null || pictVO.search_liferank eq undefined}">selected</c:if>>전체</option>
		                             		<option value="C" <c:if test="${pictVO.search_liferank eq 'C'}">selected</c:if>>일반</option>
		                             		<option value="S" <c:if test="${pictVO.search_liferank eq 'S'}">selected</c:if>>실버</option>
		                             		<option value="G" <c:if test="${pictVO.search_liferank eq 'G'}">selected</c:if>>골드</option>
		                                </select>
		                                <select name="search_lifestatus_form" id="search_lifestatus_form" class="lgThinSelect" style="margin-top:5px">
	                                       	<option value="" <c:if test="${pictVO.search_lifestatus eq '' || pictVO.search_lifestatus eq null || pictVO.search_lifestatus eq undefined}">selected</c:if>>전체</option>
		                             		<option value="1" <c:if test="${pictVO.search_lifestatus eq '1'}">selected</c:if>>유지</option>
		                             		<option value="2" <c:if test="${pictVO.search_lifestatus eq '2'}">selected</c:if>>승계</option>
		                             		<option value="3" <c:if test="${pictVO.search_lifestatus eq '3'}">selected</c:if>>탈퇴</option>
		                             		<option value="4" <c:if test="${pictVO.search_lifestatus eq '4'}">selected</c:if>>사망</option>
		                                </select>
			                    		<a href="#lnk" class="smButton" onclick="fn_order('number')" style="margin-top:5px">회원번호순</a>
			                    		<a href="#lnk" class="smButton" onclick="fn_order('birthday')" style="margin-top:5px">생년월일순</a>
			                    		<a href="#lnk" class="smButton" onclick="fn_order('text')" style="margin-top:5px">가나다순</a>
			                    		<a href="#lnk" class="smButton" onclick="former_excel()" style="margin-top:5px"><img src="/front_img/download.png" alt="">엑셀저장</a>
			                    	</div>
			                    </div>
                               <div class="tableWrapper">
                                   <table style="min-width: 1680px;">
                                       <colgroup>
                                           <col width="5%" />
                                           <col width="5%" />
                                           <col width="5%" />
                                           <col width="5%" />
                                           <col width="10%" />
                                           <col width="5%" />
                                           <col width="10%" />
                                           <col width="8%" />
                                           <col width="10%" />
                                           <col width="7%" />
                                           <col width="8%" />
                                           <col width="7%" />
                                       </colgroup>
                                       <thead>
                                           <tr>
                                               <th>No</th>
                                               <th>회원번호</th>
                                               <th>소속연맹</th>
                                               <th>이름</th>
                                               <th>생년월일</th>
                                               <th>성별</th>
                                               <th>연락처</th>
                                               <th>지도자/대원</th>
                                               <th>평생회원번호</th>
                                               <th>평생회원등급</th>
                                               <th>평생회원상태</th>
                                               <th>평생회원등록일</th>
                                           </tr>
                                       </thead>
                					<tbody id="former_body">
										<c:forEach var="resultList" items="${resultList}" varStatus="status">
											<tr onclick="former_info('${resultList.MEMBERNO}')">
												<td>${status.count}</td>
												<td>${resultList.MEMBERNO}</td>
												<td>${resultList.ASSOCIATIONNAME}</td>
												<td>${resultList.KNAME}</td>
												<td>${resultList.BIRTHDAY}</td>
												<td>
													<c:if test="${resultList.SEX eq 'M'}">남자</c:if>
													<c:if test="${resultList.SEX eq 'W'}">여자</c:if>
												</td>
												<td>${resultList.MOBILE}</td>
												<td>
													<c:if test="${resultList.TROOPSCOUTY eq 'Y'}">대원</c:if>
													<c:if test="${resultList.TROOPLEADERY eq 'Y'}">지도자</c:if>
												</td>
												<td>${resultList.LIFEMEMBERNO}</td>
												<td>
													<c:if test="${resultList.LIFERANK eq 'C'}">일반</c:if>
													<c:if test="${resultList.LIFERANK eq 'S'}">실버</c:if>
													<c:if test="${resultList.LIFERANK eq 'G'}">골드</c:if>
												</td>
												
												<td>
													<c:if test="${resultList.LIFESTATUS eq '1'}">유지</c:if>
													<c:if test="${resultList.LIFESTATUS eq '2'}">승계</c:if>
													<c:if test="${resultList.LIFESTATUS eq '3'}">탈퇴</c:if>
													<c:if test="${resultList.LIFESTATUS eq '4'}">사망</c:if>
												</td>
												<td>${resultList.LIFEENTERDATE}</td>
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
	
		function fn_order(type){
			$('#type').val(type);
			$("#search_form").attr("action", "/admin/front/life_list");
			$("#search_form").submit();

		}
		$("#search_associationcode_form").change(function(){
			$('#search_associationcode').val($('#search_associationcode_form').val())
			$('#search_liferank').val($('#search_liferank_form').val())
			$('#search_lifestatus').val($('#search_lifestatus_form').val())
			$("#search_form").attr("action", "/admin/front/life_list");
			$("#search_form").submit();
		});
		$("#search_liferank_form").change(function(){
			$('#search_associationcode').val($('#search_associationcode_form').val())
			$('#search_liferank').val($('#search_liferank_form').val())
			$('#search_lifestatus').val($('#search_lifestatus_form').val())
			$("#search_form").attr("action", "/admin/front/life_list");
			$("#search_form").submit();
		});
		$("#search_lifestatus_form").change(function(){
			$('#search_associationcode').val($('#search_associationcode_form').val())
			$('#search_liferank').val($('#search_liferank_form').val())
			$('#search_lifestatus').val($('#search_lifestatus_form').val())
			$("#search_form").attr("action", "/admin/front/life_list");
			$("#search_form").submit();
		});
		
		function former_excel(){
			if(confirm("해당 리스트를 엑셀파일로 다운로드 하시겠습니까?")){
				$("#search_form").attr("action", "/admin/life_excel");
				$("#search_form").submit();
			}
		}
		
		function former_info(memberno){
			var param = {
				memberno : memberno,
			}
			$.ajax({
				url : "/admin/life_info"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : false
				, success : function(data, status, xhr) {
					var html ="";
					console.log(data)
					if(data.list){
						var picimg = "/front_img/profile.png"
						if(data.list[0].picimg != '' && data.list[0].picimg != null && data.list[0].picimg != undefined)
							picimg = data.list[0].picimg
							
						$('#profile_img').attr("src",picimg)
						$('#MEMBERNO').val(data.list[0].memberno)
						$('#KNAME').val(data.list[0].kname)
						$('#BIRTHDAY').val(data.list[0].birthday)
						$('#MOBILE').val(data.list[0].mobile)
						$('#EMAIL').val(data.list[0].email)
						
						var liferank = data.list[0].liferank;
						var lifememberno = data.list[0].lifememberno;
						var lifeenterdate = data.list[0].lifeenterdate;
						var lifestatus = data.list[0].lifestatus;
						
						if(liferank == 'C') liferank = '일반';
						if(liferank == 'S') liferank = '실버';
						if(liferank == 'G') liferank = '골드';
						$('#LIFERANK').val(liferank);
						$('#LIFEMEMBERNO').val(lifememberno);
						$('#LIFEENTERDATE').val(lifeenterdate);
						
						if(lifestatus == '1') lifestatus = '유지';
						if(lifestatus == '2') lifestatus = '승계';
						if(lifestatus == '3') lifestatus = '탈퇴';
						if(lifestatus == '4') lifestatus = '사망';
						$('#LIFESTATUS').val(lifestatus);
						
						
						$('.contentsContainer select').niceSelect('update')
					}
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
		}

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