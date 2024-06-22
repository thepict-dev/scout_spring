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
		<c:param name="pageParent" value="스카우트 통합관리"/>
    	<c:param name="pageTitle" value="대원 일괄등록"/>
    </c:import>
    <div class="contentsContainer">
        <div class="formContainer">
            <div class="joinContainer">
                <div class="fomrTabContent signContainer">
                    <form action="" id="register" name="register" method="post" enctype="multipart/form-data">
                        <h2 class="subTitles" style="padding: 16px 24px;">조회</h2>
                        <div class="regiSearch">
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
                                </div>
                            </div>
                            <div class="searchContainer">
                                <p class="inputCaption">단위대 구분</p>
                                <div class="inputsAlign">
                                    <select name="TROOPCLSCODE1" id="TROOPCLSCODE1" onchange="fn_troopclscode_search()" class="lgThinSelect">
                                        <option value="">-----</option>
                                        <option value="01">학교대</option>
                                        <option value="02">지역대</option>
                                        <option value="03">동우대</option>
                                        <option value="04">특수대</option>
                                    </select>
                                    <select name="TROOPCLSCODE2" id="TROOPCLSCODE2" class="lgThinSelect">
                                        <option value="">-----</option>
                                    </select>
                                </div>
                            </div>
                            <div class="searchContainer">
                                <p class="inputCaption">단위대명</p>
                                <div class="inputsAlign">
                                    <input type="text"  name="TROOPNAME" id="TROOPNAME" placeholder="내용을 입력하세요…" class="lgThinInput">
                                </div>
                            </div>
                            <div class="btnContainer organ" style="justify-content: flex-start; margin-top: 5px;">
                                <a href="#regiSearchPopup" onclick="troop_search()" class="smButton searches purple regiSearch"><img src="/front_img/search2.png" alt="">조회</a>
                            </div>
                        </div>
                        <!-- 리스트 -->
                        <div class="registrationWrap">
                        	<!-- 좌측 -->
                        	<div class="doubleTable">
	                            <div class="tableContainer">
	                                <h2 class="subTitles">작년도</h2>
	                                <div class="tableWrapper" style="height: 300px;">
	                                    <table style="min-width: unset;">
	                                        <colgroup>
	                                            <col width="8%" />
	                                            <col width="16%" />
	                                            <col width="11%" />
	                                            <col width="15%" />
	                                            <col width="15%" />
	                                            <col width="15%" />
	                                            <col width="20%" />
	                                        </colgroup>
	                                        <thead>
	                                            <tr>
	                                                <th style="white-space: nowrap;">선택</th>
	                                                <th style="left: unset;">관리지도자여부</th>
	                                                <th>이름</th>
	                                                <th>평생회원여부</th>
	                                                <th>지도자직책1</th>
	                                                <th>지도자직책2</th>
	                                                <th>연맹지구독여부</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody id="search_prev_leader_list">
	                                            
	                                        </tbody>
	                                    </table>
	                                </div>
	                                <div class="tableButtons" style="justify-content: flex-end;">
	                                    <div class="buttons">
	                                        <a href="#lnk" onclick="fn_submit()" class="smButton"><img src="/front_img/download.png" alt="">엑셀 내려받기</a>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="tableContainer">
	                                <div class="tableWrapper" style="height: 300px;">
	                                    <table style="min-width: unset;">
	                                        <colgroup>
	                                            <col width="8%" />
	                                            <col width="15%" />
	                                            <col width="15%" />
	                                            <col width="15%" />
	                                            <col width="15%" />
	                                            <col width="22%" />
	                                        </colgroup>
	                                        <thead>
	                                            <tr>
	                                                <th style="white-space: nowrap;">선택</th>
	                                                <th style="left: unset;">이름</th>
	                                                <th>평생회원여부</th>
	                                                <th>스카우트구분</th>
	                                                <th>스카우트직책</th>
	                                                <th>연맹지구독여부</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody id="search_prev_scout_list">
	                                            
	                                        </tbody>
	                                    </table>
	                                </div>
	                                <div class="tableButtons" style="justify-content: flex-end;">
	                                    <div class="buttons">
	                                        <a href="#lnk" onclick="fn_submit()" class="smButton"><img src="/front_img/download.png" alt="">엑셀 내려받기</a>
	                                    </div>
	                                </div>
	                            </div>
                            </div>
                            <div class="buttonWrapper">
                                <a href="#lnk"><img src="/front_img/right-arr.png" alt="" onclick="list_act()"></a>
                                <a href="#lnk"><img src="/front_img/left-arr.png" alt="" onclick="list_react()"></a>
                            </div>
                            <!-- 우측 -->
                            <div class="doubleTable">
	                            <div class="tableContainer">
	                                <h2 class="subTitles">당해년도</h2>
	                                <div class="tableWrapper" style="height: 300px;">
	                                    <table style="min-width: unset;">
	                                        <colgroup>
	                                            <col width="8%" />
	                                            <col width="16%" />
	                                            <col width="11%" />
	                                            <col width="15%" />
	                                            <col width="15%" />
	                                            <col width="15%" />
	                                            <col width="20%" />
	                                        </colgroup>
	                                        <thead>
	                                            <tr>
	                                                <th style="white-space: nowrap;">선택</th>
	                                                <th style="left: unset;">관리지도자여부</th>
	                                                <th>이름</th>
	                                                <th>평생회원여부</th>
	                                                <th>지도자직책1</th>
	                                                <th>지도자직책2</th>
	                                                <th>연맹지구독여부</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody id="leader_target_list">
	                                            
	                                        </tbody>
	                                    </table>
	                                </div>
	                                <div class="tableButtons" style="justify-content: flex-end;">
	                                    <div class="buttons">
	                                        <a href="#lnk" onclick="fn_submit()" class="smButton"><img src="/front_img/download.png" alt="">엑셀 업로드</a>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="tableContainer">
	                                <div class="tableWrapper" style="height: 300px;">
	                                    <table style="min-width: unset;">
	                                        <colgroup>
	                                            <col width="8%" />
	                                            <col width="15%" />
	                                            <col width="15%" />
	                                            <col width="15%" />
	                                            <col width="15%" />
	                                            <col width="22%" />
	                                        </colgroup>
	                                        <thead>
	                                            <tr>
	                                                <th style="white-space: nowrap;">선택</th>
	                                                <th style="left: unset;">이름</th>
	                                                <th>평생회원여부</th>
	                                                <th>스카우트구분</th>
	                                                <th>스카우트직책</th>
	                                                <th>연맹지구독여부</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody id="scout_target_list">
	                                            
	                                        </tbody>
	                                    </table>
	                                </div>
	                                <div class="tableButtons" style="justify-content: flex-end;">
	                                    <div class="buttons">
	                                        <a href="#lnk" onclick="fn_submit()" class="smButton"><img src="/front_img/download.png" alt="">엑셀 업로드</a>
	                                    </div>
	                                </div>
	                            </div>
                            </div>
                        </div>
                        <div class="tableButtons inputsPd topBd" style="justify-content: flex-end;">
                            <div class="btnContainer organ">
                                <a href="#regiConfirmPopup" class="normalButton purple regiButton" onclick="reflect()">등록</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
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
                                    <th style="position: unset;">연맹</th>
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
    <!-- 최종팝업 -->
    <div id="regiConfirmPopup" class="modalContainer">
        <div class="modalInner lg">
            <button type="button"><img src="/front_img/close.png" alt=""></button>
            <div class="modalTit">
                <p>대등록 리스트 확인</p>
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
                    <p>2025년도 대등록 가입비 : 700,000원</p>
                </div>
                <div class="tableButtons" style="justify-content: flex-end; padding: 0 24px 60px 0;">
                    <div class="buttons">
                        <a href="#lnk" class="white normalButton">제출</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
	<textarea id="hiddenTextarea" style="display:none;"></textarea>
	<input type="hidden" id="troop_name" >
	</body>
	<script>

		
		function fn_get_unitylist_org(){
			var param = {
					associationcode : $('#ASSOCIATIONCODE').val(),
			}
			$.ajax({
				url : "/get_unity_list"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : false
				, success : function(data, status, xhr) {
					var html ="";
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
				troopclscode1 : $('#TROOPCLSCODE1').val(), 
				troopclscode2 : $('#TROOPCLSCODE2').val(),
				troopname : $('#TROOPNAME').val()
			}
			$('#search_troop_list').children().remove();
			$('.contentsContainer select').niceSelect('update')
			$.ajax({
				url : "/troop_search"
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
				url : "/troopclscode1_search"
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
		function choose_troop(){
			var listVar = $('input[name=selection_list]:checked').val();
			var param = {
				troopno : listVar,
			}
			$.ajax({
				url : "/prev_troop_info"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : true
				, success : function(data, status, xhr) {
					if(data){
						
						//지도자 테이블
						var leader_html = ""
						for(var i=0; i<data.leader_list.length; i++){
							$('#troop_name').val(data.leader_list[i].troopname)
							var adminy = ''
							var adminn = ''
							if(data.leader_list[i].adminy == 'Y') adminy = 'selected'
							if(data.leader_list[i].adminy != 'Y') adminn = 'selected'
							
							var life =''
							if(data.leader_list[i].lifemembery == 'Y') life ='평생회원'
							
							var leaderpositioncode1_1 =''
							var leaderpositioncode1_2 =''
							var leaderpositioncode1_3 =''
							if(data.leader_list[i].leaderpositioncode1 == '01') leaderpositioncode1_1 ='selected'
							if(data.leader_list[i].leaderpositioncode1 == '02') leaderpositioncode1_2 ='selected'
							if(data.leader_list[i].leaderpositioncode1 == '03') leaderpositioncode1_3 ='selected'
							
							var leaderpositioncode2_1 =''	
							var leaderpositioncode2_2 =''
							var leaderpositioncode2_9 =''
							var leaderpositioncode2_3 =''
							var leaderpositioncode2_4 ='';
							var leaderpositioncode2_5 ='';
							var leaderpositioncode2_6 ='';
							var leaderpositioncode2_7 ='';
							var leaderpositioncode2_8 ='';
							
							var leaderpositioncode2_9_2 ='';
							var leaderpositioncode2_10 ='';
							var leaderpositioncode2_10 ='';
							var leaderpositioncode2_11 ='';
							var leaderpositioncode2_12 ='';
							
							var leaderpositioncode2_13 ='';
							var leaderpositioncode2_99 ='';
							
							if(data.leader_list[i].leaderpositioncode2 == '01') leaderpositioncode2_1 ='selected';
							if(data.leader_list[i].leaderpositioncode2 == '02') leaderpositioncode2_2 ='selected';
							if(data.leader_list[i].leaderpositioncode2 == '09' && data.leader_list[i].leaderpositioncode1 == '01') leaderpositioncode2_9 ='selected';
							if(data.leader_list[i].leaderpositioncode2 == '03') leaderpositioncode2_3 ='selected';
							if(data.leader_list[i].leaderpositioncode2 == '04') leaderpositioncode2_4 ='selected';
							if(data.leader_list[i].leaderpositioncode2 == '05') leaderpositioncode2_5 ='selected';
							if(data.leader_list[i].leaderpositioncode2 == '06') leaderpositioncode2_6 ='selected';
							if(data.leader_list[i].leaderpositioncode2 == '07') leaderpositioncode2_7 ='selected';
							if(data.leader_list[i].leaderpositioncode2 == '08') leaderpositioncode2_8 ='selected';
							if(data.leader_list[i].leaderpositioncode2 == '09' && data.leader_list[i].leaderpositioncode1 == '01') leaderpositioncode2_9_2 ='selected';
							if(data.leader_list[i].leaderpositioncode2 == '10') leaderpositioncode2_10 ='selected';
							if(data.leader_list[i].leaderpositioncode2 == '11') leaderpositioncode2_11 ='selected';
							if(data.leader_list[i].leaderpositioncode2 == '12') leaderpositioncode2_12 ='selected';
							if(data.leader_list[i].leaderpositioncode2 == '13') leaderpositioncode2_13 ='selected';
							if(data.leader_list[i].leaderpositioncode2 == '99') leaderpositioncode2_99 ='selected';
							
							var scoutmagacnt = ''
							if(data.leader_list[i].scoutmagacnt != '0') scoutmagacnt ='checked';
							
							leader_html +='<tr>'+
							'<td style="position: unset; vertical-align: middle;">' +
                        	'<input type="checkbox" name="leader_check" id="selection_leader_'+data.leader_list[i].memberno+'" data-id="'+data.leader_list[i].memberno+'")"><label for="selection_leader_'+data.leader_list[i].memberno+'" class="lableOnly"></label></td>'+
                        	'<td style="position: unset; vertical-align: middle;">'+    
                            '<select name="leader_adminy" id="leader_adminy_'+data.leader_list[i].memberno+'" class="tableSelect" style="width: 100%; height: 100%;">'+
                            '<option value="Y" '+ adminy +'>Y</option>'+
                            '<option value="N" '+ adminn +'>N</option>'+
                            '</select>'+
                        	'</td>'+
                        	'<td style="vertical-align: middle;" id="leader_name_'+data.leader_list[i].memberno+'">'+data.leader_list[i].kname+'</td>'+
                        	'<td style="left:unset; vertical-align: middle;" id="leader_life_'+data.leader_list[i].memberno+'">'+life+'</td>'+
                        	'<td>'+
                            '<select name="" id="leaderpositioncode1_'+data.leader_list[i].memberno+'" class="tableSelect" style="width: 100%; height: 100%;">'+
                            '<option value="01" '+leaderpositioncode1_1+'>협조</option>'+
                            '<option value="02" '+leaderpositioncode1_2+'>훈육</option>'+
                            '<option value="03" '+leaderpositioncode1_3+'>전종</option>'+
                            '</select>'+
                        	'</td>'+
                        	'<td>'+
                            '<select name="" id="leaderpositioncode2_'+data.leader_list[i].memberno+'" class="tableSelect" style="width: 100%; height: 100%;">'+
                            '<option value="01" '+leaderpositioncode2_1+'>육성단체대표</option>'+
                            '<option value="02" '+leaderpositioncode2_1+'>육성단체부대표</option>'+
                            '<option value="09" '+leaderpositioncode2_9+'>단위원장</option>'+
                            '<option value="03" '+leaderpositioncode2_3+'>단대위원</option>'+
                            '<option value="04" '+leaderpositioncode2_4+'>단위원</option>'+
                            '<option value="05" '+leaderpositioncode2_5+'>대위원장</option>'+
                            '<option value="06" '+leaderpositioncode2_6+'>대위원</option>'+
                            '<option value="07" '+leaderpositioncode2_7+'>육성회장</option>'+
                            '<option value="08" '+leaderpositioncode2_8+'>협조지도자</option>'+
                            
                            '<option value="09" '+leaderpositioncode2_9_2+'>단대장</option>'+
                            '<option value="10" '+leaderpositioncode2_10+'>대장</option>'+
                            '<option value="11" '+leaderpositioncode2_11+'>부대장</option>'+
                            '<option value="12" '+leaderpositioncode2_12+'>로버</option>'+
                           
                            '<option value="13" '+leaderpositioncode2_13+'>전종지도자</option>'+
                            '<option value="99" '+leaderpositioncode2_99+'>기타</option>'+
                            
                            '</select>'+
                        	'</td>'+
                        	'<td style="vertical-align: middle;">'+
                        	'<input type="checkbox" id="leader_magacnt_'+data.leader_list[i].memberno+'" '+scoutmagacnt+' value="Y"><label for="leader_magacnt_'+data.leader_list[i].memberno+'" class="lableOnly"></label>'+
                        	'</td>'+
                    		'</tr>'
						}
						$('#search_prev_leader_list').append(leader_html)
						
						//대원 테이블
						var scout_html = ""
						for(var i=0; i<data.scout_list.length; i++){
							$('#troop_name').val(data.scout_list[i].troopname)
							var life_scout =''
							if(data.scout_list[i].lifemembery == 'Y') life_scout ='평생회원'
							
							var scoutclscode1 = '';
							var scoutclscode2 = '';
							var scoutclscode3 = '';
							var scoutclscode4 = '';
							var scoutclscode5 = '';
							var scoutclscode6 = '';
							var scoutclscode7 = '';
							if(data.scout_list[i].scoutclscode == '01') scoutclscode1 ='selected'
							if(data.scout_list[i].scoutclscode == '02') scoutclscode2 ='selected'
							if(data.scout_list[i].scoutclscode == '03') scoutclscode3 ='selected'
							if(data.scout_list[i].scoutclscode == '04') scoutclscode4 ='selected'
							if(data.scout_list[i].scoutclscode == '05') scoutclscode5 ='selected'
							if(data.scout_list[i].scoutclscode == '06') scoutclscode6 ='selected'
							if(data.scout_list[i].scoutclscode == '99') scoutclscode7 ='selected'
							
							var scoutpositioncode2_23 = '';
							var scoutpositioncode2_21 = '';
							var scoutpositioncode2_22 = '';
							var scoutpositioncode2_31 = '';
							var scoutpositioncode2_32 = '';
							var scoutpositioncode2_33 = '';
							var scoutpositioncode2_34 = '';
							var scoutpositioncode2_41 = '';
							var scoutpositioncode2_42 = '';
							var scoutpositioncode2_43 = '';
							var scoutpositioncode2_44 = '';
							
							if(data.scout_list[i].scoutpositioncode == '23') scoutpositioncode2_23 ='selected'
							if(data.scout_list[i].scoutpositioncode == '21') scoutpositioncode2_21 ='selected'
							if(data.scout_list[i].scoutpositioncode == '22') scoutpositioncode2_22 ='selected'
							if(data.scout_list[i].scoutpositioncode == '31') scoutpositioncode2_31 ='selected'
							if(data.scout_list[i].scoutpositioncode == '32') scoutpositioncode2_32 ='selected'
							if(data.scout_list[i].scoutpositioncode == '33') scoutpositioncode2_33 ='selected'
							if(data.scout_list[i].scoutpositioncode == '34') scoutpositioncode2_34 ='selected'
							if(data.scout_list[i].scoutpositioncode == '41') scoutpositioncode2_41 ='selected'
							if(data.scout_list[i].scoutpositioncode == '42') scoutpositioncode2_42 ='selected'
							if(data.scout_list[i].scoutpositioncode == '43') scoutpositioncode2_43 ='selected'
							if(data.scout_list[i].scoutpositioncode == '44') scoutpositioncode2_44 ='selected'
							
							var scoutmagacnt_scout = ''
								if(data.scout_list[i].scoutmagacnt != '0') scoutmagacnt_scout ='checked';
							
							scout_html +='<tr>'+
                            '<td style="position: unset; vertical-align: middle;">'+
                            '<input type="checkbox" name="scout_check" id="selection_scout_'+data.scout_list[i].memberno+'" data-id="'+data.scout_list[i].memberno+'"><label for="selection_scout_'+data.scout_list[i].memberno+'" class="lableOnly"></label>'+
                            '</td>'+
                            '<td style="left:unset; vertical-align: middle;" id="scout_name_'+data.scout_list[i].memberno+'">'+data.scout_list[i].kname+'</td>'+
                            '<td style="left:unset; vertical-align: middle;" id="scout_life_'+data.scout_list[i].memberno+'">'+life_scout+'</td>'+
                            '<td>'+
							'<select name="scoutclscode" id="scoutclscode_'+data.scout_list[i].memberno+'" class="tableSelect" style="width: 100%; height: 100%;">'+
							'<option value="">-----</option>'+
							'<option value="01" '+scoutclscode1+'>비버</option>'+
							'<option value="02" '+scoutclscode2+'>컵</option>'+
							'<option value="03" '+scoutclscode3+'>스카우트</option>'+
							'<option value="04" '+scoutclscode4+'>벤처</option>'+
							'<option value="05" '+scoutclscode5+'>로버</option>'+
							'<option value="06" '+scoutclscode6+'>기타</option>'+
							'<option value="99" '+scoutclscode7+'>복합</option>'+
							'</select>'+
							'</td>'+
							'<td>'+
							'<select name="scoutpositioncode" id="scoutpositioncode_'+data.scout_list[i].memberno+'" class="tableSelect" style="width: 100%; height: 100%;">'+
							'<option value="">-----</option>'+
							'<option value="23" '+scoutpositioncode2_23+'>단/대보장</option>'+
							'<option value="21" '+scoutpositioncode2_21+'>보장</option>'+
							'<option value="22" '+scoutpositioncode2_22+'>부보장</option>'+
							'<option value="31" '+scoutpositioncode2_31+'>도반장</option>'+
							'<option value="32" '+scoutpositioncode2_32+'>부도반장</option>'+
							'<option value="33" '+scoutpositioncode2_33+'>반장</option>'+
							'<option value="34" '+scoutpositioncode2_34+'>부반장</option>'+
							'<option value="41" '+scoutpositioncode2_41+'>영조장</option>'+
							'<option value="42" '+scoutpositioncode2_42+'>부영조장</option>'+
							'<option value="43" '+scoutpositioncode2_43+'>조장</option>'+
							'<option value="44" '+scoutpositioncode2_44+'>부조장</option>'+
							'</select>'+
							'</td>'+
							'<td style="vertical-align: middle;">'+
							'<input type="checkbox" id="scout_magacnt_'+data.scout_list[i].memberno+'" '+scoutmagacnt_scout+' value="Y"><label for="scout_magacnt_'+data.scout_list[i].memberno+'" class="lableOnly"></label>'+
							'</td>'+
                        	'</tr>'
						}
						
						$('#search_prev_scout_list').append(scout_html)
						
						$('.contentsContainer select').niceSelect('update')
						$("#regiSearchPopup").removeClass("active");
					}
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
		}
		function list_react(){
			var data = JSON.parse($('#hiddenTextarea').val());
			$("input[name='leader_remove_chk']:checked").each(function (e){
				var chk_id =  $(this).data("id");
				$('#cur_leader_'+chk_id).remove()
				data = data.filter(function (item){
					return item.memberno !== chk_id
				})
				$('#hiddenTextarea').val(JSON.stringify(data))
			})
			$("input[name='scout_remove_chk']:checked").each(function (e){
				var chk_id =  $(this).data("id");
				$('#cur_scout_'+chk_id).remove()
				data = data.filter(function (item){
					return item.memberno !== chk_id
				})
				$('#hiddenTextarea').val(JSON.stringify(data))
			})
		}
		
		function list_act(){
			$('#leader_target_list').children().remove();
			$('#scout_target_list').children().remove();
			var check_list = [];
			$("input[name='leader_check']:checked").each(function (e){
				var memberno = $(this).data("id");
				var leader_adminy = $('#leader_adminy_'+memberno).val()
				var leader_name = $('#leader_name_'+memberno).text()
				var leader_life = $('#leader_life_'+memberno).text()
				var leaderpositioncode1 = $('#leaderpositioncode1_'+memberno).val()
				var leaderpositioncode2 = $('#leaderpositioncode2_'+memberno).val()
				var leaderpositioncodename1 = $('#leaderpositioncode1_'+memberno + ' option:checked').text()
				var leaderpositioncodename2 = $('#leaderpositioncode2_'+memberno + ' option:checked').text()
				var leader_magacnt = $('#leader_magacnt_'+memberno).is(':checked') ? 'Y' : "N"
				
				
				var json ={}
				json.memberno = memberno
				json.leader_adminy = leader_adminy
				json.leader_name = leader_name
				json.leader_life = leader_life
				json.leaderpositioncode1 = leaderpositioncode1
				json.leaderpositioncode2 = leaderpositioncode2
				json.leaderpositioncodename1 = leaderpositioncodename1
				json.leaderpositioncodename2 = leaderpositioncodename2
				json.leader_magacnt = leader_magacnt
				json.type = "leader"
				check_list.push(json);
			});
			debugger
			$("input[name='scout_check']:checked").each(function (e){
				var memberno = $(this).data("id");
				var scout_name = $('#scout_name_'+memberno).text()
				var scout_life = $('#scout_life_'+memberno).text()
				var scoutclscode = $('#scoutclscode_'+memberno).val()
				var scoutpositioncode = $('#scoutpositioncode_'+memberno).val()
				var scoutclscodename = $('#scoutclscode_'+memberno + ' option:checked').text()
				var scoutpositioncodename = $('#scoutpositioncode_'+memberno + ' option:checked').text()
				var scout_magacnt = $('#scout_magacnt_'+memberno).is(':checked') ? 'Y' : "N"
				
				
				var json ={}
				json.memberno = memberno
				json.scout_name = scout_name
				json.scout_life = scout_life
				json.scoutclscode = scoutclscode
				json.scoutpositioncode = scoutpositioncode
				json.scoutclscodename = scoutclscodename
				json.scoutpositioncodename = scoutpositioncodename
				json.scout_magacnt = scout_magacnt
				json.type = "scout"
				check_list.push(json);
			});
			
			var leader_html = ""
			var scout_html = ""
			for(var i=0; i<check_list.length; i++){
				if(check_list[i].type == 'leader'){
					leader_html +=
						'<tr id="cur_leader_'+check_list[i].memberno+'">'+
                    	'<td style="position: unset;">'+
                        '<input type="checkbox" name="leader_remove_chk" id="selection_act_leader_'+check_list[i].memberno+'" data-id="'+check_list[i].memberno+'"><label for="selection_act_leader_'+check_list[i].memberno+'" class="lableOnly"></label>'+
                    	'</td>'+
                    	'<td style="position: unset;">'+check_list[i].leader_adminy+'</td>'+
                    	'<td>'+check_list[i].leader_name+'</td>'+
                    	'<td>'+check_list[i].leader_life+'</td>'+
                    	'<td>'+check_list[i].leaderpositioncodename1+'</td>'+
                    	'<td>'+check_list[i].leaderpositioncodename2+'</td>'+
                    	'<td>'+check_list[i].leader_magacnt+'</td>'+
                		'</tr>'
				}
				else{
					scout_html +=
						'<tr id="cur_scout_'+check_list[i].memberno+'">'+
                    	'<td style="position: unset;">'+
                        '<input type="checkbox" name="scout_remove_chk" id="selection_act_scout_'+check_list[i].memberno+'" data-id="'+check_list[i].memberno+'"><label for="selection_act_scout_'+check_list[i].memberno+'" class="lableOnly"></label>'+
                    	'</td>'+
                    	'<td style="position: unset;">'+check_list[i].scout_name+'</td>'+
                    	'<td>'+check_list[i].scout_life+'</td>'+
                    	'<td>'+check_list[i].scoutclscodename+'</td>'+
                    	'<td>'+check_list[i].scoutpositioncodename+'</td>'+
                    	'<td>'+check_list[i].scout_magacnt+'</td>'+
                		'</tr>'
				}
			}
			$('#leader_target_list').append(leader_html)
			$('#scout_target_list').append(scout_html)
			$('#hiddenTextarea').val(JSON.stringify(check_list))
			$('.contentsContainer select').niceSelect('update')
		}
		
		function reflect(){
			var association_name = $('#ASSOCIATIONCODE option:checked').text()
			var unity_name = $('#PARENTTROOPNO option:checked').text()
			var troop_name = $('#troop_name').val()
			
			$('#final_sosok').text(association_name + " 연맹 / " + unity_name + " 지구연합회 / " + troop_name)
			
			$('#final_list').children().remove();
			var data = JSON.parse($('#hiddenTextarea').val());
			var html = ""
			for(var i=0; i<data.length; i++){
				var leader_life = "Y"
				if(data[i].leader_life == '') leader_life = 'N' 
				var scout_life = "N"
				if(data[i].scout_life == '') scout_life = 'N'
				if(data[i].type == 'leader'){
					html += '<tr>'+
			            '<td style="position: unset;">지도자</td>'+
			            '<td>'+leader_life+'</td>'+
			            '<td>'+data[i].leaderpositioncodename1+'</td>'+
			            '<td>'+data[i].leaderpositioncodename2+'</td>'+
			            '<td>20,000</td>'+
			            '<td>'+data[i].leader_name+'</td>'+
			            '<td>'+data[i].leader_magacnt+'</td>'+
			        	'</tr>'
				}
				else{
					html += '<tr>'+
		            '<td style="position: unset;">대원</td>'+
		            '<td>'+scout_life+'</td>'+
		            '<td>'+data[i].scoutclscodename+'</td>'+
		            '<td>'+data[i].scoutpositioncodename+'</td>'+
		            '<td>20,000</td>'+
		            '<td>'+data[i].scout_name+'</td>'+
		            '<td>'+data[i].scout_magacnt+'</td>'+
		        	'</tr>'
				}
			}
			$('#final_list').append(html)
	        
			
		}
		//대등록 리스트 찾기
		// 팝업 열기
		$(document).on("click", ".regiSearch", function (e){
		    let target = $(this).attr("href");
		    $(target).addClass("active");
		});
		// 팝업닫기
		$("#regiSearchPopup button").click(function(){
		    $("#regiSearchPopup").removeClass("active");
		});

		//대등록 확정 팝업
		// 팝업 열기
		$(document).on("click", ".regiButton", function (e){
		    let target = $(this).attr("href");
		    $(target).addClass("active");
		});
		// 팝업닫기
		$("#regiConfirmPopup button").click(function(){
		    $("#regiConfirmPopup").removeClass("active");
		});
	</script>
</html>