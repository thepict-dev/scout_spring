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
                    <p class="inputCaption">성명</p>
	                <input type="text" name="newname" id="newname" placeholder="내용을 입력하세요…" class="smThinInput">
                </div>
               	<div class="inputBox">
	                <p class="inputCaption">생년월일*</p>
	                <input type="date" name="newbirthday" id="newbirthday" class="lgThinInput" required max="9999-12-31">
                </div>
            </div>
            <div class="inputsContainer">
               	<div class="inputBox">
                    <p class="inputCaption">연락처*</p>
	                <input type="text" name="newmobile" id="newmobile" placeholder="내용을 입력하세요…" class="lgThinInput">
                </div>
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
            </div>
            <!-- 비밀번호 조건 통과 시 active class 추가 -->
            <a href="#lnk" id="save_new" class="active" onclick="fn_submit()">등록</a>
        </div>
    </form>
</div>

<script>
	var new_cnt = 0;
	function fn_submit(){
		var text = "등록하시겠습니까?";
		var newname = $('#newname').val();
		var newbirthday = $('#newbirthday').val();
		var newmobile = $('#newmobile').val();
		var newtype = $('#newtype').val();
		var newlife = $('#newlife').val();
		
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
				html +=
				'<tr id="cur_leader_new_'+new_cnt+'">'+
               	'<td style="position: unset;">'+
                '<input type="checkbox" name="leader_remove_chk" id="selection_act_leader_new_'+new_cnt+'" data-id="new_'+new_cnt+'"><label for="selection_act_leader_new_'+new_cnt+'" class="lableOnly"></label>'+
               	'</td>'+
               	'<td style="position: unset;"></td>'+
               	'<td>'+newname+'</td>'+
               	'<td>'+newlife+'</td>'+
               	'<td></td>'+
               	'<td></td>'+
               	'<td>'+price+'</td>'+
               	'<td>N</td>'+
           		'</tr>'
           		$('#leader_target_list').append(html)
           		
           		
				
				
				var json ={}
           		json.MEMBERNO = "new_"+new_cnt
				json.KNAME = newname
				json.LIFEMEMBERY = newlife
				json.price = price
				json.SCOUTMAGACNT = 0
				json.type = "leader"
				json.ASSOCIATIONCODE = $('#ASSOCIATIONCODE').val()
				json.TROOPNO = $('#troop_no').val()
				json.PARRENTTROOPNO = $('#parrent_troop_no').val()
				json.maga_price = 0
				
				
				json.LEADERPOSITIONCODE1 = ""
				json.LEADERPOSITIONCODE2 = ""
				json.leaderpositioncodename1 = ""
				json.leaderpositioncodename2 = ""
				json.BIRTHDAY = newbirthday
				json.MOBILE= newmobile;
				json.ADMINY = 'N';
				check_list.push(json);
			}
			else{
				var price = price_info.cls01new
				html +=
				'<tr id="cur_scout_new_'+new_cnt+'">'+
               	'<td style="position: unset;">'+
                '<input type="checkbox" name="scout_remove_chk" id="selection_act_scout_new_'+new_cnt+'" data-id="new_'+new_cnt+'"><label for="selection_act_scout_new_'+new_cnt+'" class="lableOnly"></label>'+
               	'</td>'+
               	'<td style="position: unset;">'+newname+'</td>'+
               	'<td>'+newlife+'</td>'+
               	'<td></td>'+
               	'<td></td>'+
               	'<td>'+price+'</td>'+
               	'<td>N</td>'+
           		'</tr>'
           		$('#scout_target_list').append(html)
           		

				
				var json ={}
           		json.MEMBERNO = "new_"+new_cnt
				json.KNAME = newname
				json.LIFEMEMBERY = newlife
				json.price = price
				json.SCOUTMAGACNT = 0
				json.type = "scout"
				json.ASSOCIATIONCODE = $('#ASSOCIATIONCODE').val()
				json.TROOPNO = $('#troop_no').val()
				json.PARRENTTROOPNO = $('#parrent_troop_no').val()
				json.maga_price = 0
				
				json.SCOUTCLSCODE = ""
				json.SCOUTPOSITIONCODE = ""
				json.scoutclscodename = ""
				json.scoutpositioncodename = ""
				json.BIRTHDAY = newbirthday
				json.MOBILE= newmobile;
				
				check_list.push(json);
			}
			debugger
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

	// 팝업 열기
	$(".daeButton").click(function(){
	    $("#daePopup").addClass("active");
	});
	// 팝업닫기
	$("#daePopup button").click(function(){
	    $("#daePopup").removeClass("active");
	});
</script>

    