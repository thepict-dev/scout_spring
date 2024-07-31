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
	                <input type="text" name="KNAME" id="KNAME" placeholder="내용을 입력하세요…" class="smThinInput">
                </div>
               	<div class="inputBox">
	                <p class="inputCaption">생년월일*</p>
	                <input type="date" name="BIRTHDAY" id="BIRTHDAY" class="lgThinInput" required max="9999-12-31">
                </div>
            </div>
            <div class="inputsContainer">
               	<div class="inputBox">
                    <p class="inputCaption">연락처*</p>
	                <input type="text" name="" id="MOBILE" placeholder="내용을 입력하세요…" class="lgThinInput">
                </div>
				<div class="inputBox">
					<p class="inputCaption">평생회원 여부*</p>
					<select name="LIFEMEMBERY" id="LIFEMEMBERY" class="smThinSelect">
						<option value="">----</option>
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
	function fn_submit(){
		var text = "등록하시겠습니까?";
		var kname = $('#KNAME').val();
		var birth = $('#BIRTHDAY').val();
		var mobile = $('#MOBILE').val();
		
		if (kname == null || kname == undefined || kname == ''){
			alert("성명을 입력해주세요.");
			$("#KNAME").focus();
			return false;
		}
		
		if (birth == undefined || birth == ''){
			alert("생년월일을 입력해주세요.");
			return false;
		}
		
		if (mobile == "" || mobile == undefined || mobile == '') {
			alert("연락처를 입력해주세요.");
			$('#MOBILE').focus();
			return false;
		}
		
		//if (confirm(text)) {
		//	$("#dae_register").attr("action", "");
		//	$("#dae_register").submit();
		//}
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

    