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
			<c:param name="pageParent" value="회원등록"/>
	    	<c:param name="pageTitle" value="대승인"/>
	    </c:import>
    <div class="contentsContainer">
        <div class="formContainer scroller">
            <div class="joinContainer">
                <div class="fomrTabContent signContainer" style="border-top: 0;">
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
                        <div class="registrationWrap">
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
	                                                <th style="white-space: nowrap;"><input type="checkbox" class="check" title="전체선택" id="leader_all_check" onchange="allCheck_left_leader(this);" data-check="left_leader_list"><label for="leader_all_check" class="lableOnly"></label></th>
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
	                                                <th style="white-space: nowrap;"><input type="checkbox" class="check" title="전체선택" id="scout_all_check" onchange="allCheck_left_scout(this);" data-check="left_scout_list"><label for="scout_all_check" class="lableOnly"></label></th>
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
	                            </div>
                            </div>
                        </div>
                        <div class="tableButtons inputsPd topBd" style="justify-content: flex-end;">
                            <div class="btnContainer organ">
                                <a href="#lnk" class="normalButton purple" onclick="fn_submit()">승인</a>
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
	</body>
	<script>
	
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
		function choose_troop(){
			var listVar = $('input[name=selection_list]:checked').val();
			$('#troop_no').val(listVar);
			var param = {
				troopno : listVar,
			}

			$.ajax({
				url : "/admin/current_troop_info"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : true
				, success : function(data, status, xhr) {
					var leader_html = ""
					var scout_html = ""
					var leader_list = data.leader_list
					var scout_list = data.scout_list
					if(data && data.leader_list){
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
					}
					if(data && data.scout_list){
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
						$('#leader_target_list').append(leader_html)
						$('#scout_target_list').append(scout_html)
						
						
						$('.contentsContainer select').niceSelect('update')
						$("#regiSearchPopup").removeClass("active");
					}
					else{
						console.log(data)
						alert("해당 단위대의 신청정보가 없습니다.")
					}
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
			
		}
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
	</script>
</html>