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
	<%
		pageContext.setAttribute("session", session.getAttribute("associationcode"));

	%>
		<%@ include file="./include/lnb.jsp" %>
		<c:import url="./include/header.jsp">
			<c:param name="pageParent" value="회원등록"/>
	    	<c:param name="pageTitle" value="대승인"/>
	    </c:import>
    <div class="contentsContainer">
        <div class="formContainer scroller">
            <div class="joinContainer">
                <div class="fomrTabContent signContainer" style="border-top: 0;">
                    <form action="" id="register" name="register" method="post" enctype="multipart/form-data">
                    <!-- 
                    	<h2 class="subTitles" style="padding: 16px 24px; background: var(--grey-50);">조회</h2>
                        <div class="regiSearch" style="padding-bottom: 16px; background: var(--grey-50);">
                            <div class="searchContainer">
                                <p class="inputCaption">연맹/지구</p>
                                <div class="inputsAlign">
                                    <select name="ASSOCIATIONCODE" id="ASSOCIATIONCODE" onchange="fn_get_unitylist_org()" class="lgThinSelect">
                                        <c:forEach var="association_list" items="${association_list}" varStatus="status">
                                            <option value="${association_list.ASSOCIATIONCODE}"> ${association_list.ASSOCIATIONNAME}</option>
                                        </c:forEach>
                                    </select>
                                    <select name="PARENTTROOPNO" id="PARENTTROOPNO" class="smThinSelect">
                                        <option value="">지구 선택</option>
                                        <c:forEach var="unity_list" items="${unity_list}" varStatus="status">
                                            <option value="${unity_list.TROOPNO}">${unity_list.TROOPNAME}</option>
                                        </c:forEach>
                                    </select>
                                    <select name="search_type" id="search_type" class="smThinSelect">
			                            <option value="text">단위대명</option>
			                            <option value="number">대번호</option>
			                        </select>
			                        <input type="text" name="search_text" id="search_text" class="lgThinInput" placeholder="내용을 입력해주세요..." onkeypress="if(event.keyCode == 13){organ_search('number');}">
                                </div>
                            </div>
                            <div class="btnContainer organ" style="justify-content: flex-start; margin-top: 5px;">
                                <a href="#regiSearchPopup" onclick="troop_search()" class="smButton searches purple regiSearch"><img src="/front_img/search2.png" alt="">조회</a>
                            </div>
                        </div>
                         -->
                        <div class="registrationWrap">
                            <div class="doubleTable">
	                            <div class="tableContainer">
	                                <div class="tableWrapper" style="height: 300px;">
	                                    <table style="min-width: unset;">
	                                        <colgroup>
	                                            <col width="10%" />
	                                            <col width="10%" />
	                                            <col width="10%" />
	                                            <col width="10%" />
	                                            <col width="10%" />
	                                            <col width="10%" />
	                                            <col width="10%" />
	                                            <col width="20%" />
	                                        </colgroup>
	                                        <thead>
	                                            <tr>
	                                                <th rowspan="2">연맹</th>
	                                                <th rowspan="2">단위대</th>
	                                                <th rowspan="2">일괄승인</th>
	                                                <th colspan="5" style="text-align:center">승인 신청 현황</th>
	                                                <th rowspan="2" style="text-align:center">최종승인일</th>
	                                            </tr>
	                                            <tr>
	                                                <th style="top: 44px; text-align:center">지도자</th>
	                                                <th style="top: 44px; text-align:center">대원</th>
	                                                <th style="top: 44px; text-align:center">연맹지</th>
	                                                <th style="top: 44px; text-align:center">금액</th>
	                                                <th style="top: 44px; text-align:center">신청일</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody id="leader_target_list">
	                                            <c:forEach var="mergedList" items="${mergedList}" varStatus="status">
		                                            <tr onclick="fn_troop_person_list('${mergedList.TROOPNO}')">
			                                            <td>${mergedList.ASSOCIATIONNAME}</td>
			                                            <td>${mergedList.TROOPNAME}</td>
			                                            <td><input type="checkbox" class="check" name="troop_check" title="단위대선택" id="troop_chk_${mergedList.TROOPNO}" data-id="${mergedList.TROOPNO}"><label for="troop_chk_${mergedList.TROOPNO}" class="lableOnly"></label></td>
			                                            <td style="text-align:center"><fmt:formatNumber value="${mergedList.LEADERCNT}" maxFractionDigits="0" /></td>
			                                            <td style="text-align:center"><fmt:formatNumber value="${mergedList.SCOUTCNT}" maxFractionDigits="0" /></td>
			                                            <td style="text-align:center"><fmt:formatNumber value="${mergedList.SCOUTMAGACNT + mergedList.LEADERMAGACNT}" maxFractionDigits="0" /></td>
			                                            <td style="text-align:center"><fmt:formatNumber value="${mergedList.SCOUTPRICE + mergedList.LEADERPRICE}" maxFractionDigits="0" /></td>
			                                            <td style="text-align:center">${fn:substring(mergedList.ENTERDATE,0,11)}</td>
			                                            <td style="text-align:center">${fn:substring(mergedList.CONFIRMDATE,0,11)}</td>
		                                            </tr>
		                                        </c:forEach>
	                                        </tbody>
	                                    </table>
	                                </div>
	                            </div>
	                            <div class="tableButtons inputsPd topBd" style="justify-content: flex-end;">
		                            <div class="btnContainer organ">
		                                <a href="#regiConfirmPopup" class="normalButton purple" onclick="whole_confirm()">승인</a>
		                            </div>
		                        </div>
	                            
	                            <div class="tableContainer">
	                            	<h2 class="subTitles">상세리스트</h2>
	                                <div class="tableWrapper" style="height: 300px;">
	                                    <table style="min-width: unset;">
	                                        <colgroup>
	                                            <col width="10%" />
	                                            <col width="8%" />
	                                            <col width="8%" />
	                                            <col width="10%" />
	                                            <col width="10%" />
	                                            <col width="10%" />
	                                            <col width="8%" />
	                                            <col width="10%" />
	                                            <col width="10%" />
	                                            <col width="8%" />
	                                            <col width="8%" />
	                                            <col width="8%" />
	                                        </colgroup>
	                                        <thead>
	                                            <tr>
	                                               	<th>단위대</th>
	                                               	<th>개별체크</th>
	                                               	<th>구분</th>
	                                               	<th>회원번호</th>
	                                               	<th>성명</th>
	                                               	<th>생년월일</th>
	                                               	<th>성별</th>
	                                               	<th>직책1</th>
	                                               	<th>직책2</th>
	                                               	<th>등록비</th>
	                                               	<th>연맹지</th>
	                                               	<th>계</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody id="scout_target_list">

	                                        </tbody>
	                                    </table>
	                                </div>
	                            </div>
                            </div>
                        </div>
                        <div class="tableButtons inputsPd topBd" style="justify-content: flex-end;">
                            <div class="btnContainer organ">
                            	<a href="#lnk" class="normalButton purple" onclick="fn_cancel()">등록취소</a>
								<a href="#lnk" class="normalButton purple" onclick="fn_confirm()">승인</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- 최종팝업 -->
    <div id="regiConfirmPopup" class="modalContainer">
        <div class="modalInner lg">
            <button type="button"><img src="/front_img/close.png" alt=""></button>
            <div class="modalTit">
                <p>대승인 리스트 확인</p>
            </div>
            <form action="">
                <div class="regiConTop">
                    <p id="final_sosok"></p>
                </div>
                <div class="tableContainer">
                    <h2 class="subTitles">대등록 리스트</h2>
                    <div class="tableWrapper" style="height: 500px;">
                        <table style="min-width: unset;">
                            <colgroup>
                                <col width="15%" />
                                <col width="15%" />
                                <col width="15%" />
                                <col width="15%" />
                                <col width="15%" />
                                <col width="15%" />
                                <col width="10%" />
                            </colgroup>
                            <thead>
                            	<tr>
                            		<th>지도자/대원</th>
                            		<th>평생회원</th>
                            		<th>직책/스카우트</th>
                            		<th>직책</th>
                            		<th>등록비</th>
                            		<th>이름</th>
                            		<th>연맹지구독</th>
                            	</tr>
                            </thead>
                            <tbody id="final_list">
                                
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="regiConBottom">
                    <p id="price_text"></p>
                </div>
                <div class="tableButtons" style="justify-content: flex-end; padding: 0 24px 60px 0;">
                    <div class="buttons">
                        <a href="#lnk" class="white normalButton" onclick="final_submit()">제출</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- 단위대팝업 -->
    <div id="regiSearchPopup" class="modalContainer">
        <div class="modalInner lg">
            <button type="button"><img src="/front_img/close.png" alt=""></button>
            <div class="modalTit">
                <p>단위대 리스트 조회</p>
            </div>
            <form action="">
                <div class="tableContainer">
                    <h2 class="subTitles">단위대 리스트</h2>
                    <div class="tableWrapper" style="height: 500px;">
                        <table style="min-width: unset;">
                            <colgroup>
                                <col width="16%" />
                                <col width="21%" />
                                <col width="21%" />
                                <col width="21%" />
                                <col width="21%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th style="white-space: nowrap;">선택</th>
                                    <th style="position: sticky; left: unset;">연맹</th>
                                    <th>지구연합회</th>
                                    <th>단위대번호</th>
                                    <th>단위대명</th>
                                </tr>
                            </thead>
                            <tbody id="search_troop_list">
                                
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tableButtons" style="justify-content: flex-end; padding: 0 24px 60px 0;">
                    <div class="buttons">
                        <a href="#lnk" class="white normalButton" onclick="choose_troop()">선택</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <%@ include file="./include/loading.jsp" %>
	<%@ include file="./include/error_page.jsp" %>
	</body>
	<script>
		$(document).ready(function() {
		    
		    var login_associationcode = '${session}'
			if(login_associationcode != '200'){
				var code = '${pictVO.ASSOCIATIONCODE}';
				
				$('#ASSOCIATIONCODE').val(code)
				$("select[name=ASSOCIATIONCODE]").attr("disabled", true);
				fn_get_unitylist_org()
				$('.contentsContainer select').niceSelect('update')	
			}
		});
		
		function whole_confirm(){
			var check_list = []
			$("input[name='troop_check']:checked").each(function (e){
				var troopno = $(this).data("id");
				console.log(troopno)
			})
		}
		
		
		function fn_troop_person_list(troopno){
			var param = {
					troopno : troopno,
				}
			
			$.ajax({
				url : "/admin/current_troop_info"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : true
				, success : function(data, status, xhr) {
					console.log(data)
					$('#scout_target_list').children().remove();
					var leader_html = ""
					var scout_html = ""
					var leader_list = data.leader_list
					var scout_list = data.scout_list
					if(data.leader_list && data.leader_list.length > 0){
						for(var i=0; i<leader_list.length; i++){
							var total_price = 0;
							total_price = Number(leader_list[i].entryfee) + (Number(leader_list[i].scoutmagacnt) * 10000)
							total_price = total_price +''
							var sex = "";
							if(leader_list[i].sex == 'W') sex = '여'
							if(leader_list[i].sex == 'M') sex = '남'
							var maga = "N"
							if(leader_list[i].scoutmagacnt >= '1') maga = ""
							leader_html +=
								'<tr>'+
								'<td>'+leader_list[i].troopname+ '</td>' +
		                    	'<td style="position: unset;">'+
		                        '<input type="checkbox" class="check" title="사람선택" id="person_chk_'+leader_list[i].memberno+'"><label for="person_chk_'+leader_list[i].memberno+'" class="lableOnly"></label>'+
		                    	'</td>'+
		                    	'<td>지도자</td>'+
		                    	'<td>'+leader_list[i].memberno+'</td>'+
		                    	'<td>'+leader_list[i].kname+'</td>'+
		                    	'<td>'+leader_list[i].birthday+'</td>'+
		                    	'<td>'+sex+'</td>'+
		                    	'<td>'+leader_list[i].leaderposition+'</td>'+
		                    	'<td>'+leader_list[i].leaderpositionname+'</td>'+
		                    	'<td>'+leader_list[i].entryfee.replace(/\B(?=(\d{3})+(?!\d))/g, ",")+'</td>'+
		                    	'<td>'+leader_list[i].scoutmagacnt+'</td>'+
		                    	'<td>'+total_price.replace(/\B(?=(\d{3})+(?!\d))/g, ",")+'</td>'+
		                		'</tr>'
						}
						$('#scout_target_list').append(leader_html)
						$('.contentsContainer select').niceSelect('update')
					}
					if(data.scout_list && data.scout_list.length > 0){
						for(var i=0; i<scout_list.length; i++){
							var total_price = 0;
							total_price = Number(scout_list[i].entryfee) + (Number(scout_list[i].scoutmagacnt) * 10000)
							var sex = "";
							if(scout_list[i].sex == 'W') sex = '여'
							if(scout_list[i].sex == 'M') sex = '남'
							total_price = total_price +''
							var maga = "N"
							if(scout_list[i].scoutmagacnt >= '1') maga = "Y"
							scout_html +=
								'<tr>'+
								'<td>'+scout_list[i].troopname+ '</td>' +
		                    	'<td style="position: unset;">'+
		                        '<input type="checkbox" class="check" title="사람선택" id="person_chk_'+scout_list[i].memberno+'"><label for="person_chk_'+scout_list[i].memberno+'" class="lableOnly"></label>'+
		                    	'</td>'+
		                    	'<td>대원</td>'+
		                    	'<td>'+scout_list[i].memberno+'</td>'+
		                    	'<td>'+scout_list[i].kname+'</td>'+
		                    	'<td>'+scout_list[i].birthday+'</td>'+
		                    	'<td>'+sex+'</td>'+
		                    	'<td>'+scout_list[i].scoutclsname+'</td>'+
		                    	'<td>'+scout_list[i].scoutpositionname+'</td>'+
		                    	'<td>'+scout_list[i].entryfee.replace(/\B(?=(\d{3})+(?!\d))/g, ",")+'</td>'+
		                    	'<td>'+scout_list[i].scoutmagacnt+'</td>'+
		                    	'<td>'+total_price.replace(/\B(?=(\d{3})+(?!\d))/g, ",")+'</td>'+
		                		'</tr>'
						}
						
						$('#scout_target_list').append(scout_html)
						
						
						$('.contentsContainer select').niceSelect('update')
					}
				}
				
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
					alert("오류가 발생하였습니다.")
				}
			});
		}
	
		//지도자 좌측
		function allCheck_left_leader(target) {
			var $id = $(target).data('check');
		
			var $check = $('.js-check_left_leader[data-check="'+$id+'"]');
		
			if($(target).prop('checked'))
				$check.prop('checked', true);
			else
				$check.prop('checked', false);
		}
		//대원좌측
		function allCheck_left_scout(target) {
			var $id = $(target).data('check');
			
			var $check = $('.js-check_left_scout[data-check="'+$id+'"]');
		
			if($(target).prop('checked'))
				$check.prop('checked', true);
			else
				$check.prop('checked', false);
		}
		
		function fn_submit(){
			var check_list = []
			$("input[name='leader_check']:checked").each(function (e){
				var idx = $(this).data("id");
				var json ={}
				json.type = "leader"
				json.idx = idx
				check_list.push(json);
			});
			
			$("input[name='scout_check']:checked").each(function (e){
				var idx = $(this).data("id");
				var json ={}
				json.type = "scout"
				json.idx = idx
				check_list.push(json);
			});
			
			if(confirm("선택한 회원들의 연공을 승인처리하시겠습니까?")){
				$.ajax({
					url : "/admin/whole_register_confirm"
					, type : "POST"
					, data : JSON.stringify(check_list)
					, contentType : "application/json"
					, dataType : "json"
					, async : true
					, success : function(data, status, xhr) {
						if(data){
							if(data.result == 'Y'){
								alert("정상적으로 연공이 승인되었습니다.")
							}
						}
					}
					, error : function(xhr, status, error) {
						console.log(xhr)
						console.log("에러")
						alert("오류가 발생하였습니다.")
					}
				});
			}
			
		}
		/*
		function choose_troop(){
			var listVar = $('input[name=selection_list]:checked').val();
			$('#troop_no').val(listVar);
			var param = {
				troopno : listVar,
			}
			$('#initial-loading').css('display', 'flex')
			$.ajax({
				url : "/admin/current_troop_info"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : true
				, success : function(data, status, xhr) {
					$('#leader_target_list').children().remove();
					$('#scout_target_list').children().remove();
					var leader_html = ""
					var scout_html = ""
					var leader_list = data.leader_list
					var scout_list = data.scout_list
					if(data.leader_list && data.leader_list.length > 0){
						for(var i=0; i<leader_list.length; i++){
							var maga = "N"
							if(leader_list[i].scoutmagacnt >= '1') maga = ""
							leader_html +=
								'<tr id="cur_leader_'+leader_list[i].memberno+'">'+
		                    	'<td style="position: unset;">'+
		                        '<input type="checkbox" data-check="left_leader_list" class="check js-check_left_leader" name="leader_check" id="selection_act_leader_'+leader_list[i].idx+'" data-id="'+leader_list[i].idx+'"><label for="selection_act_leader_'+leader_list[i].idx+'" class="lableOnly"></label>'+
		                    	'</td>'+
		                    	'<td style="position: unset;">'+leader_list[i].adminy+'</td>'+
		                    	'<td>'+leader_list[i].kname+'</td>'+
		                    	'<td>'+leader_list[i].lifemembery+'</td>'+
		                    	'<td>'+leader_list[i].leaderposition+'</td>'+
		                    	'<td>'+leader_list[i].leaderpositionname+'</td>'+
		                    	'<td>'+maga+'</td>'+
		                		'</tr>'
							
						}
						$('#leader_target_list').append(leader_html)
						$('.contentsContainer select').niceSelect('update')
						$("#regiSearchPopup").removeClass("active");
					}
					if(data.scout_list && data.scout_list.length > 0){
						for(var i=0; i<scout_list.length; i++){
							var maga = "N"
							if(scout_list[i].scoutmagacnt >= '1') maga = "Y"
							scout_html +=
								'<tr id="cur_scout_'+scout_list[i].memberno+'">'+
		                    	'<td style="position: unset;">'+
		                        '<input type="checkbox" data-check="left_scout_list" class="check js-check_left_scout" name="scout_check" id="selection_act_scout_'+scout_list[i].idx+'" data-id="'+scout_list[i].idx+'"><label for="selection_act_scout_'+scout_list[i].idx+'" class="lableOnly"></label>'+
		                    	'</td>'+
		                    	'<td style="position: unset;">'+scout_list[i].kname+'</td>'+
		                    	'<td>'+scout_list[i].lifemembery+'</td>'+
		                    	'<td>'+scout_list[i].scoutclsname+'</td>'+
		                    	'<td>'+scout_list[i].scoutpositionname+'</td>'+
		                    	'<td>'+maga+'</td>'+
		                		'</tr>'
						}
						
						$('#scout_target_list').append(scout_html)
						
						
						$('.contentsContainer select').niceSelect('update')
						$("#regiSearchPopup").removeClass("active");
					}
					if(data.scout_list == undefined && data.leader_list == undefined){
						console.log(data)
						alert("해당 단위대의 신청정보가 없습니다.")
					}
					$('#initial-loading').css('display', 'none')
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
					$('#initial-loading').css('display', 'none')
					$('#error').css('display', 'block')
				}
			});
			
		}
		*/
		function fn_get_unitylist_org(){
			var param = {
					associationcode : $('#ASSOCIATIONCODE').val(),
			}
			$.ajax({
				url : "/admin/get_unity_list"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : false
				, success : function(data, status, xhr) {
					var html ="<option value=''>전체</option>";
					if(data.list){
						var arr = data.list;
						$('#PARENTTROOPNO').children().remove();
						for(var i=0; i<arr.length; i++){
							html += '<option value="'+ arr[i].troopno +'">'+ arr[i].troopname +'</option>'
						}
						$('#PARENTTROOPNO').append(html)
						$('.contentsContainer select').niceSelect('update')
					}
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
		}
		function troop_search(){
			var param = {
				associationcode : $('#ASSOCIATIONCODE').val(),
				parenttroopno : $('#PARENTTROOPNO').val(),
				//troopclscode1 : $('#TROOPCLSCODE1').val(), 
				//troopclscode2 : $('#TROOPCLSCODE2').val(),
				//troopname : $('#TROOPNAME').val()
				search_type : $('#search_type').val(),
				search_text : $('#search_text').val()
			}
			$('#search_troop_list').children().remove();
			$('.contentsContainer select').niceSelect('update')
			$.ajax({
				url : "/admin/troop_search"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : true
				, success : function(data, status, xhr) {
					if(data && data.list.length > 0){
						var html = ""
						for(var i=0; i<data.list.length; i++){
	                    	html += '<tr>'+
								'<td style="position: unset;">' +
								'<input type="radio" name="selection_list" id="selection_list_'+ data.list[i].troopno+'" value="'+data.list[i].troopno+'"><label for="selection_list_'+ data.list[i].troopno+'" class="lableOnly"></label>'+
								'</td>'+
								'<td style="position: unset;">'+data.list[i].associationname+'</td>'+
								'<td>'+data.list[i].parenttroopname+'</td>'+
								'<td>'+data.list[i].disptroopno+'</td>'+
								'<td>'+data.list[i].troopname+'</td>'+
								'</tr>'
							;	
						}
						$('#search_troop_list').append(html)
						$('.contentsContainer select').niceSelect('update')
					}	
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
		}
	
		function fn_troopclscode_search(){
			var param = {
				troopclscode1 : $('#TROOPCLSCODE1').val(),
			}
			$.ajax({
				url : "/admin/troopclscode1_search"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : true
				, success : function(data, status, xhr) {
					var html ='<option value="">-----</option>';
					if(data.list){
						var arr = data.list;
						$('#TROOPCLSCODE2').children().remove();
						var vo_value = '${pictVO.search_troopcls2}'
						var select = ""
						
						for(var i=0; i<arr.length; i++){
							if(vo_value == arr[i].troopclscode2) select = "selected"
							else select = ""
							html += '<option value="'+ arr[i].troopclscode2 +'" '+select+'>'+ arr[i].troopclsname +'</option>'
						}
						$('#TROOPCLSCODE2').append(html)
						$('.contentsContainer select').niceSelect('update')
					}
					
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
		}
		
		// 팝업닫기
		$("#regiSearchPopup button").click(function(){
		    $("#regiSearchPopup").removeClass("active");
		});
		// 팝업닫기
		$("#regiConfirmPopup button").click(function(){
		    $("#regiConfirmPopup").removeClass("active");
		});
	</script>
</html>