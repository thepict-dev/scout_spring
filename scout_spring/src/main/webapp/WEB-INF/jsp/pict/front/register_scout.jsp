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
	                                        <tbody>
	                                            <tr>
	                                                <td style="position: unset; vertical-align: middle;">
	                                                    <input type="checkbox" id="selection_scout"><label for="selection_scout" class="lableOnly"></label>
	                                                </td>
	                                                <td style="left:unset; vertical-align: middle;">홍길동</td>
	                                                <td>
							                            <select name="" id="" class="tableSelect" style="width: 100%; height: 100%;">
							                                <option value="Y">Y</option>
							                                <option value="N">N</option>
							                            </select>
						                            </td>
	                                                <td style="left:unset; vertical-align: middle;">평생회원</td>
	                                                <td>
							                            <select name="SCOUTCLSCODE" id="SCOUTCLSCODE" class="tableSelect" style="width: 100%; height: 100%;">
							                                <option value="">-----</option>
						                                	<option value="01">비버</option>
						                                	<option value="02">컵</option>
						                                	<option value="03">스카우트</option>
						                                	<option value="04">벤처</option>
						                                	<option value="05">로버</option>
						                                	<option value="06">기타</option>
						                                	<option value="99">복합</option>
							                            </select>
	                                                </td>
	                                                <td style="vertical-align: middle;">
	                                                	<input type="checkbox" id=""><label for="" class="lableOnly"></label>
	                                                </td>
	                                            </tr>
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
                                <a href="#lnk"><img src="/front_img/right-arr.png" alt=""></a>
                                <a href="#lnk"><img src="/front_img/left-arr.png" alt=""></a>
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
	                                        <tbody>
	                                            <tr>
	                                                <td style="position: unset;">
	                                                    <input type="checkbox" id="selection"><label for="selection" class="lableOnly"></label>
	                                                </td>
	                                                <td style="position: unset;">Cell01</td>
	                                                <td>Cell02</td>
	                                                <td>Cell03</td>
	                                                <td>Cell04</td>
	                                                <td>Cell05</td>
	                                                <td>Cell06</td>
	                                            </tr>
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
	                                        <tbody>
	                                            <tr>
	                                                <td style="position: unset;">
	                                                    <input type="checkbox" id="selection"><label for="selection" class="lableOnly"></label>
	                                                </td>
	                                                <td style="position: unset;">Cell02</td>
	                                                <td>Cell03</td>
	                                                <td>Cell04</td>
	                                                <td>Cell05</td>
	                                                <td>Cell06</td>
	                                            </tr>
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
                                <a href="#regiConfirmPopup" class="normalButton purple regiButton">등록</a>
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
                <p>대원 리스트 확인</p>
            </div>
            <form action="">
                <div class="regiConTop">
                    <p>소속연맹 / 지구 / 단위대</p>
                </div>
                <div class="tableContainer">
                    <h2 class="subTitles">대원 리스트</h2>
                    <div class="tableWrapper" style="height: 500px;">
                        <table style="min-width: unset;">
                            <colgroup>
                                <col width="16%" />
                                <col width="21%" />
                                <col width="21%" />
                                <col width="21%" />
                                <col width="21%" />
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td style="position: unset;">지도자</td>
                                    <td>평생회원</td>
                                    <td>20,000</td>
                                    <td>한지현</td>
                                    <td>연맹지구독여부</td>
                                </tr>
                                <tr>
                                    <td style="position: unset;">대원</td>
                                    <td>평생회원</td>
                                    <td>20,000</td>
                                    <td>한지현</td>
                                    <td>연맹지구독여부</td>
                                </tr>
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
	<input type="hidden" id="check_troopno" name="check_troopno" value="check_troopno">
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
						var leader_html = ""
						for(var i=0; i<data.leader_list.length; i++){
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
                        	'<input type="checkbox" id="selection_leader"><label for="selection_leader" class="lableOnly"></label></td>'+
                        	'<td style="position: unset; vertical-align: middle;">'+    
                            '<select name="ADMINY" id="ADMINY" class="tableSelect" style="width: 100%; height: 100%;">'+
                            '<option value="Y" '+ adminy  +'>Y</option>'+
                            '<option value="N" '+ adminn +'>N</option>'+
                            '</select>'+
                        	'</td>'+
                        	'<td style="vertical-align: middle;">'+data.leader_list[i].kname+'</td>'+
                        	'<td style="left:unset; vertical-align: middle;">'+life+'</td>'+
                        	'<td>'+
                            '<select name="" id="" class="tableSelect" style="width: 100%; height: 100%;">'+
                            '<option value="01" '+leaderpositioncode1_1+'>협조</option>'+
                            '<option value="02" '+leaderpositioncode1_2+'>훈육</option>'+
                            '<option value="03" '+leaderpositioncode1_3+'>전종</option>'+
                            '</select>'+
                        	'</td>'+
                        	'<td>'+
                            '<select name="" id="" class="tableSelect" style="width: 100%; height: 100%;">'+
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
                        	'<input type="checkbox" id="" '+scoutmagacnt+'><label for="" class="lableOnly"></label>'+
                        	'</td>'+
                    		'</tr>'
						}
						
						$('#search_prev_leader_list').append(leader_html)
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