<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>


<%
	pageContext.setAttribute("id", session.getAttribute("id"));
%>
 

<div id="daePopup">
    <form action="" id="dae_register" name="dae_register" class="pwModalInner">
        <button type="button"><img src="/front_img/close2.png" alt=""></button>
        <p>신규등록</p>
        <div class="pwInputs">
            <div class="inputsContainer">
               	<div class="inputBox">
                    <p class="inputCaption">회원번호</p>
	                <input type="text" name="newmemberno" id="newmemberno" placeholder="내용을 입력하세요…" class="lgThinInput">
                </div>
               	<div class="inputBox">
                    <p class="inputCaption">성명</p>
	                <input type="text" name="newname" id="newname" placeholder="내용을 입력하세요…" class="smThinInput">
                </div>
            </div>
            <div class="inputsContainer">
               	<div class="inputBox">
	                <p class="inputCaption">생년월일*</p>
	                <input type="date" name="newbirthday" id="newbirthday" class="lgThinInput" required max="9999-12-31">
                </div>
               	<div class="inputBox">
                    <p class="inputCaption">연락처*</p>
	                <input type="text" name="newmobile" id="newmobile" placeholder="내용을 입력하세요…" class="lgThinInput">
                </div>
            </div>
            <div class="inputsContainer">
                <div class="inputBox">
					<p class="inputCaption">대원/지도자*</p>
					<select name="newtype" id="newtype" class="smThinSelect">
						<option value="S">대원</option>
						<option value="L">지도자</option>
					</select>
				</div>
				<div class="inputBox">
					<p class="inputCaption">평생회원 여부*</p>
					<select name="newlife" id="newlife" class="smThinSelect">
						<option value="N">----</option>
						<option value="Y">평생회원</option>
					</select>
				</div>
                <div class="inputBox">
					<p class="inputCaption">관리지도자 여부</p>
					<select name="newleader_adminy" id="newleader_adminy" class="smThinSelect">
						<option value="N">N</option>
						<option value="Y">Y</option>
					</select>
				</div>
            </div>
            <div class="inputsContainer">
                <div class="inputBox" style="display:none" id="newleader_1">
					<p class="inputCaption">지도자직책1</p>
					<select name="newleaderpositioncode1" id="newleaderpositioncode1" class="smThinSelect">
						<option value="01">협조</option>
						<option value="02">훈육</option>
						<option value="03">전종</option>
					</select>
				</div>
				<div class="inputBox" style="display:none" id="newleader_2">
					<p class="inputCaption">지도자직책2</p>
					<select name="newleaderpositioncode2" id="newleaderpositioncode2" class="lgThinSelect">
						<option value="01">육성단체대표</option>
						<option value="02">육성단체부대표</option>
						<option value="09">단위원장</option>
						<option value="03">단대위원</option>
						<option value="04">단위원</option>
						<option value="05">대위원장</option>
						<option value="06">대위원</option>
						<option value="07">육성회장</option>
						<option value="08">협조지도자</option>
						<option value="09">단대장</option>
						<option value="10">대장</option>
						<option value="11">부대장</option>
						<option value="12">로버</option>
						<option value="13">전종지도자</option>
						<option value="99">기타</option>
					</select>
				</div>
				 <div class="inputBox" id="newscout_1">
					<p class="inputCaption">스카우트직책1</p>
					<select name="newscoutpositioncode1" id="newscoutpositioncode1" class="smThinSelect">
						<option value="01">비버</option>
						<option value="02">컵</option>
						<option value="03">스카우트</option>
						<option value="04">벤처</option>
						<option value="05">로버</option>
						<option value="06">기타</option>
						<option value="99">복합</option>
						
					</select>
				</div>
				<div class="inputBox" id="newscout_2">
					<p class="inputCaption">스카우트직책2</p>
					<select name="newscoutpositioncode2" id="newscoutpositioncode2" class="lgThinSelect">
						<option value="">-----</option>
						<option value="21">보장</option>
						<option value="22">부보장</option>
						<option value="23">단/대보장</option>
						<option value="31">도반장</option>
						<option value="32">부도반장</option>
						<option value="33">반장</option>
						<option value="34">부반장</option>
						<option value="41">영조장</option>
						<option value="42">부영조장</option>
						<option value="43">조장</option>
						<option value="44">부조장</option>
					</select>
				</div>
                <div class="inputBox" style="justify-content: center; margin-top: 15px;">
					<input type="checkbox" id="newleader_magacnt"><label for="newleader_magacnt">연맹지구독여부</label>
				</div>
                <div class="buttons" style="justify-content: flex-end; width: 100%;">
                	<a href="#lnk" class="smButton" onclick="dae_modal_search()"><img src="/front_img/search2.png" alt="">조회</a>
                </div>
            </div>
            <!-- 조회결과 리스트 -->
            <div class="inputsContainer">
				<div class="inputBox" style="width: 100%;">
	                <p class="inputCaption">조회결과</p>
	                <div class="tableWrapper" style="height: 150px; margin-top: 0;">
	                    <table style="min-width: unset; width: 100%;">
	                        <colgroup>
	                            <col width="17%" />
	                            <col width="20%" />
	                            <col width="23%" />
	                            <col width="20%" />
	                            <col width="20%" />
	                        </colgroup>
	                        <thead>
	                            <tr>
	                                <th>회원번호</th>
	                                <th style="position: unset;">회원명</th>
	                                <th>생년월일</th>
	                                <th>연락처</th>
	                                <th>대원/지도자</th>
	                            </tr>
	                        </thead>
	                        <tbody id="new_member_list">
	                            
	                        </tbody>
	                    </table>
	                </div>
                </div>
            </div>	
            <a href="#lnk" id="save_new" class="active" onclick="fn_submit()">등록</a>
        </div>
    </form>
    <input type="hidden" id="new_or_origin" value="N">
    <input type="hidden" id="is_list_data" value="N">
    
    <input type="hidden" id="dmy_memberno" value="">
    <input type="hidden" id="dmy_name" value="">
    <input type="hidden" id="dmy_birthday" value="">
    <input type="hidden" id="dmy_mobile" value="">
    <input type="hidden" id="dmy_life" value="">
    <input type="hidden" id="dmy_type" value="">
    <input type="hidden" id="dmy_adminy" value="">
</div>

<script>
	$("#newtype").change(function(){
		var newtype = $('#newtype').val()
		if(newtype == 'L'){
			$('#newleader_1').css("display", 'flex')
			$('#newleader_2').css("display", 'flex')
			$('#newscout_1').css("display", 'none')
			$('#newscout_2').css("display", 'none')
		}
		else{
			$('#newleader_1').css("display", 'none')
			$('#newleader_2').css("display", 'none')
			$('#newscout_1').css("display", 'flex')
			$('#newscout_2').css("display", 'flex')
		}
	})
	function fn_select_person(memberno, name, birthday, mobile, troopscouty, troopleadery, lifemembery, adminy){
		$('#dmy_memberno').val(memberno)
		$('#dmy_name').val(name)
		$('#dmy_birthday').val(birthday)
		$('#dmy_mobile').val(mobile)
		$('#dmy_adminy').val(adminy)
		
		if(troopscouty != null && troopscouty == 'Y') $('#dmy_type').val("S")
		if(troopleadery != null && troopleadery == 'Y') $('#dmy_type').val("L")
		
		if(lifemembery != null && lifemembery == 'Y') $('#dmy_life').val("Y")
		
		$('#new_or_origin').val("Y")
	}
	function dae_modal_search(){
		var memberno = $('#newmemberno').val();
		var newname = $('#newname').val();
		var newbirthday = $('#newbirthday').val();
		var newmobile = $('#newmobile').val();
		
		
		if((memberno == '' || memberno == undefined || memberno == null) && 
				(newname == '' || newname == undefined || newname == null || newbirthday == '' || newbirthday == undefined || newbirthday == null || newmobile == '' || newmobile == undefined || newmobile == null)) {
			alert("회원번호 혹은 이름,생년,연락처는 필수값 입니다..");
			$("#newname").focus();
			return false;
		} 
				
		
		
		$('#initial-loading').css('display', 'flex')
		
		var param = {
			memberno : memberno,
			kname : newname,
			birthday : newbirthday,
			mobile : newmobile
		}
		$.ajax({
			url : "/admin/dae_modal_search"
			, type : "POST"
			, data : JSON.stringify(param)
			, contentType : "application/json"
			, dataType : "json"
			, async : true
			, success : function(data, status, xhr) {
				$('#new_member_list').children().remove();
				var html ="";
				console.log(data.list)
				if(data.list != undefined && data.list.length > 0){
					$('#is_list_data').val("Y")
					var html ="";
					var arr = data.list;
					
					for(var i=0; i<arr.length; i++){
						var scouty = "대원";
						if(arr[i].troopscouty == 'Y') scouty= "대원";
						if(arr[i].troopleadery == 'Y') scouty= "지도자";
						var lifemem = 'N'
						html += 
							'<tr onclick="fn_select_person(\''+arr[i].memberno+'\', \''+arr[i].kname+'\', \''+arr[i].birthday+'\', \''+arr[i].mobile+'\', \''+arr[i].troopscouty+'\', \''+arr[i].troopleadery+'\', \''+arr[i].lifemembery+'\', \''+arr[i].adminy+'\')">'+
		                    '<td>'+arr[i].memberno+'</td>'+
		                    '<td style="position: unset;">'+arr[i].kname+'</td>'+
		                    '<td>'+arr[i].birthday+'</td>'+
		                    '<td>'+arr[i].mobile+'</td>'+
		                    '<td>'+scouty+'</td>'+
		                    '</tr>'
					}
					$('#new_member_list').append(html);
				}
				else{
					alert("등록된 회원정보가 없습니다.\n회원 등록을 원하실 경우 아래 등록을 클릭하세요.")
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

	var new_cnt = 0;
	function fn_submit(){
		var new_or_origin = $('#new_or_origin').val();
		var is_list_data = $('#is_list_data').val()
		
		var troop_associationcode = '${troop_associationcode}'
		var target_associationcode = $('#ASSOCIATIONCODE').val();
		if(target_associationcode == '' || target_associationcode == null || target_associationcode == undefined) target_associationcode = troop_associationcode
		
		if(is_list_data == 'Y' && new_or_origin != 'Y'){
			alert("조회결과 리스트에서 회원을 선택해주세요.")
			return false;
		}
		else if(is_list_data == 'Y' && new_or_origin == "Y"){
			console.log("리스트가 있고 선택도 했어")
			debugger
			var text = "등록하시겠습니까?";
			var newmemberno = $('#dmy_memberno').val();
			var newname = $('#dmy_name').val();
			var newbirthday = $('#dmy_birthday').val();
			var newmobile = $('#dmy_mobile').val();
			var newtype = $('#dmy_type').val();
			var newlife = $('#dmy_life').val();
			var newadminy = $('#newleader_adminy').val();
			var magacnt_y = $('#newleader_magacnt').prop('checked') == true ? "Y" : "N"
	
			if(confirm(text)){
				var html = ""
				var price_info = JSON.parse($('#price_info').val());
				var check_list = []
				if(newtype == 'L'){
					var price = price_info.cls99new;
					var maga_price = 0
					if(magacnt_y == 'Y'){
						maga_price = Number(10000)
					}
					var total_price = Number(price) + Number(maga_price)
					html +=
						'<tr id="cur_leader_'+newmemberno+'">'+
                    	'<td style="position: unset;">'+
                        '<input type="checkbox" name="leader_remove_chk" id="selection_act_leader_'+newmemberno+'" data-id="'+newmemberno+'"><label for="selection_act_leader_'+newmemberno+'" class="lableOnly"></label>'+
                    	'</td>'+
                    	'<td style="position: unset;">'+newadminy+'</td>'+
                    	'<td>'+newname+'</td>'+
                    	'<td>'+newlife+'</td>'+
                    	'<td>'+$("#newleaderpositioncode1 :selected").text()+'</td>'+
                    	'<td>'+$("#newleaderpositioncode2 :selected").text()+'</td>'+
                    	'<td>'+total_price+'</td>'+
                    	'<td>'+magacnt_y+'</td>'+
                		'</tr>'
	           		$('#leader_target_list').append(html)
	           		
	           		
					
					
					var json ={}
	           		json.MEMBERNO = newmemberno
					json.KNAME = newname
					json.LIFEMEMBERY = newlife
					json.price = price
					json.SCOUTMAGACNT = magacnt_y
					json.type = "leader"
					json.ASSOCIATIONCODE = target_associationcode
					json.TROOPNO = $('#troop_no').val()
					json.PARRENTTROOPNO = $('#parrent_troop_no').val()
					json.maga_price = 0
					json.ADMINY = newadminy
					
					
					json.LEADERPOSITIONCODE1 = $('#newleaderpositioncode1').val()
					json.LEADERPOSITIONCODE2 = $('#newleaderpositioncode2').val()
					json.leaderpositioncodename1 = $("#newleaderpositioncode1 :selected").text();
					json.leaderpositioncodename2 = $("#newleaderpositioncode2 :selected").text();
					json.BIRTHDAY = newbirthday
					json.MOBILE= newmobile;
					
					check_list.push(json);
				}
				else{
					var scoutclscode =  $("#newscoutpositioncode1").val();
					var price = price_info.cls01new
					if(scoutclscode == '01') price = price_info.cls01new
					if(scoutclscode == '02') price = price_info.cls02new
					if(scoutclscode == '03') price = price_info.cls03new
					if(scoutclscode == '04') price = price_info.cls04new
					if(scoutclscode == '05') price = price_info.cls05new
					if(scoutclscode == '06') price = price_info.cls06new
					
					var maga_price = 0
					if(magacnt_y == 'Y'){
						maga_price = Number(10000)
					}
					var total_price = Number(price) + Number(maga_price)
					html +=
						'<tr id="cur_scout_'+newmemberno+'">'+
                    	'<td style="position: unset;">'+
                        '<input type="checkbox" name="scout_remove_chk" id="selection_act_scout_'+newmemberno+'" data-id="'+newmemberno+'"><label for="selection_act_scout_'+newmemberno+'" class="lableOnly"></label>'+
                    	'</td>'+
                    	'<td style="position: unset;">'+newname+'</td>'+
                    	'<td>'+newlife+'</td>'+
                    	'<td>'+$("#newscoutpositioncode1 :selected").text()+'</td>'+
                    	'<td>'+$("#newscoutpositioncode2 :selected").text()+'</td>'+
                    	'<td>'+total_price+'</td>'+
                    	'<td>'+magacnt_y+'</td>'+
                		'</tr>'
	           		$('#scout_target_list').append(html)
	           		

					
					var json ={}
	           		json.MEMBERNO = "new_"+new_cnt
					json.KNAME = newname
					json.LIFEMEMBERY = newlife
					json.price = price
					json.SCOUTMAGACNT = magacnt_y
					json.type = "scout"
					json.ASSOCIATIONCODE = target_associationcode
					json.TROOPNO = $('#troop_no').val()
					json.PARRENTTROOPNO = $('#parrent_troop_no').val()
					json.maga_price = maga_price
					
					json.SCOUTCLSCODE = $('#newscoutpositioncode1').val()
					json.SCOUTPOSITIONCODE = $('#newscoutpositioncode2').val()
					json.scoutclscodename = $("#newscoutpositioncode1 :selected").text()
					json.scoutpositioncodename = $("#newscoutpositioncode2 :selected").text()
					json.BIRTHDAY = newbirthday
					json.MOBILE= newmobile;
	           		
					check_list.push(json);
				}
				
				var origin_check_list = $('#hiddenTextarea').val();
				var combine_arr =[]
				if(origin_check_list != ''){
					origin_check_list = JSON.parse(origin_check_list)
					combine_arr = [...origin_check_list, ...check_list]
				}
				else{
					combine_arr = [...check_list]
				}
				
				new_cnt++;
				$('#hiddenTextarea').val(JSON.stringify(combine_arr))
				$("#daePopup").removeClass("active");
			}
		}
		else{
			console.log("리스트도 없고 선택도 없어 신규야")
			var text = "등록하시겠습니까?";
			var newname = $('#newname').val();
			var newbirthday = $('#newbirthday').val();
			var newmobile = $('#newmobile').val();
			var newtype = $('#newtype').val();
			var newlife = $('#newlife').val();
			var newadminy = $('#newleader_adminy').val();
			var magacnt_y = $('#newleader_magacnt').prop('checked') == true ? "Y" : "N"
					
			if (newname == null || newname == undefined || newname == ''){
				alert("성명을 입력해주세요.");
				$("#newname").focus();
				return false;
			}
			
			if (newbirthday == null || newbirthday == undefined || newbirthday == ''){
				alert("생년월일을 입력해주세요.");
				$("#newbirthday").focus();
				return false;
			}
			
			if (newmobile == "" || newmobile == undefined || newmobile == '') {
				alert("연락처를 입력해주세요.");
				$('#newmobile').focus();
				return false;
			}
			if (newtype == "" || newtype == undefined || newtype == '') {
				alert("대원/지도자 구분을 입력해주세요.");
				$('#newtype').focus();
				return false;
			}
			
			if($('#price_info').val() == null || $('#price_info').val() == '' || $('#price_info').val() == undefined){
				alert("단위대 선택이 필요합니다.")
				return false;
			}
			
			if(confirm(text)){
				var html = ""
				var price_info = JSON.parse($('#price_info').val());
				var check_list = []
				if(newtype == 'L'){
					var price = price_info.cls99new;
					var maga_price = 0
					if(magacnt_y == 'Y'){
						maga_price = Number(10000)
					}
					var total_price = Number(price) + Number(maga_price)
					html +=
					'<tr id="cur_leader_new_'+new_cnt+'">'+
	               	'<td style="position: unset;">'+
	                '<input type="checkbox" name="leader_remove_chk" id="selection_act_leader_new_'+new_cnt+'" data-id="new_'+new_cnt+'"><label for="selection_act_leader_new_'+new_cnt+'" class="lableOnly"></label>'+
	               	'</td>'+
	               	'<td style="position: unset;">'+newadminy+'</td>'+
	               	'<td>'+newname+'</td>'+
	               	'<td>'+newlife+'</td>'+
	               	'<td>'+$("#newleaderpositioncode1 :selected").text()+'</td>'+
                	'<td>'+$("#newleaderpositioncode2 :selected").text()+'</td>'+
                	'<td>'+total_price+'</td>'+
	               	'<td>'+magacnt_y+'</td>'+
	           		'</tr>'
	           		$('#leader_target_list').append(html)
	           		
	           		
					
					
	           		var json ={}
	           		json.MEMBERNO = new_cnt + "_new"
					json.KNAME = newname
					json.LIFEMEMBERY = newlife
					json.price = price
					json.SCOUTMAGACNT = magacnt_y
					json.type = "leader"
					json.ASSOCIATIONCODE = target_associationcode
					json.TROOPNO = $('#troop_no').val()
					json.PARRENTTROOPNO = $('#parrent_troop_no').val()
					json.maga_price = maga_price
					json.ADMINY = newadminy
					
					
					json.LEADERPOSITIONCODE1 = $('#newleaderpositioncode1').val()
					json.LEADERPOSITIONCODE2 = $('#newleaderpositioncode2').val()
					json.leaderpositioncodename1 = $("#newleaderpositioncode1 :selected").text();
					json.leaderpositioncodename2 = $("#newleaderpositioncode2 :selected").text();
					json.BIRTHDAY = newbirthday
					json.MOBILE= newmobile;
					check_list.push(json);
				}
				else{
					var scoutclscode =  $("#newscoutpositioncode1").val();
					var price = price_info.cls01new
					if(scoutclscode == '01') price = price_info.cls01new
					if(scoutclscode == '02') price = price_info.cls02new
					if(scoutclscode == '03') price = price_info.cls03new
					if(scoutclscode == '04') price = price_info.cls04new
					if(scoutclscode == '05') price = price_info.cls05new
					if(scoutclscode == '06') price = price_info.cls06new
					
					var maga_price = 0
					if(magacnt_y == 'Y'){
						maga_price = Number(10000)
					}
					var total_price = Number(price) + Number(maga_price)
					html +=
					'<tr id="cur_scout_new_'+new_cnt+'">'+
	               	'<td style="position: unset;">'+
	                '<input type="checkbox" name="scout_remove_chk" id="selection_act_scout_new_'+new_cnt+'" data-id="new_'+new_cnt+'"><label for="selection_act_scout_new_'+new_cnt+'" class="lableOnly"></label>'+
	               	'</td>'+
	               	'<td style="position: unset;">'+newname+'</td>'+
	               	'<td>'+newlife+'</td>'+
	               	'<td>'+$("#newscoutpositioncode1 :selected").text()+'</td>'+
	               	'<td>'+$("#newscoutpositioncode2 :selected").text()+'</td>'+
	               	'<td>'+total_price+'</td>'+
	               	'<td>'+magacnt_y+'</td>'+
	           		'</tr>'
	           		$('#scout_target_list').append(html)
	           		
					
	           		var json ={}
	           		json.MEMBERNO = "new_"+new_cnt
					json.KNAME = newname
					json.LIFEMEMBERY = newlife
					json.price = price
					json.SCOUTMAGACNT = magacnt_y
					json.type = "scout"
					json.ASSOCIATIONCODE = target_associationcode
					json.TROOPNO = $('#troop_no').val()
					json.PARRENTTROOPNO = $('#parrent_troop_no').val()
					json.maga_price = maga_price
					
					json.SCOUTCLSCODE = $("#newscoutpositioncode1").val()
					json.SCOUTPOSITIONCODE = $("#newscoutpositioncode2").val()
					json.scoutclscodename = $("#newscoutpositioncode1 :selected").text()
					json.scoutpositioncodename = $("#newscoutpositioncode2 :selected").text()
					json.BIRTHDAY = newbirthday
					json.MOBILE= newmobile;
	           		
					check_list.push(json);
				}
				
				var origin_check_list = $('#hiddenTextarea').val();
				var combine_arr =[]
				if(origin_check_list != ''){
					origin_check_list = JSON.parse(origin_check_list)
					combine_arr = [...origin_check_list, ...check_list]
				}
				else{
					combine_arr = [...check_list]
				}
				
				new_cnt++;
				$('#hiddenTextarea').val(JSON.stringify(combine_arr))
				$("#daePopup").removeClass("active");
			}
		}
		

	}
	
	

	// 팝업 열기
	$(".daeButton").click(function(){
		$('#new_or_origin').val("N")	//선택여부
		$('#is_list_data').val("N")	//리스트 데이터가 있는지 여부
		var troop_select_y = $('#troop_select_y').val()
		if(troop_select_y != 'Y'){
			alert("조회를 통해 단위대를 선택해주세요.")
			return false;
		}
		$('#newname').val('')
		$('#newbirthday').val('')
		$('#newmobile').val('')
		$('#newtype').val('S')
		$('#newlife').val('N')
		$('#daePopup select').niceSelect('update')
	    $("#daePopup").addClass("active");
	});
	// 팝업닫기
	$("#daePopup button").click(function(){
	    $("#daePopup").removeClass("active");
	});
</script>

    