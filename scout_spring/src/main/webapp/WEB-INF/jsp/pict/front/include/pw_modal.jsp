<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<div id="pwPopup">
    <form action="" id="password" name="password" class="pwModalInner">
        <button type="button"><img src="/front_img/close2.png" alt=""></button>
        <p>비밀번호 변경</p>
        <div class="pwInputs">
            <!-- pwInput에 wrong class 추가 시 css 로 틀린 효과 적용됨 -->
            <div class="pwInput" id="pw1">
                <p class="pwTit">새 비밀번호 입력*</p>
                <input type="password" name="newpassword" id="newpassword">
                <span class="clear"><img src="/front_img/clear-grey.png" alt=""></span>
                <p class="wrongT">문자, 숫자, 특수문자를 모두 사용해주세요</p>
            </div>
            <div class="pwInput" id="pw2">
                <p class="pwTit">새 비밀번호 입력*</p>
                <input type="password" name="newpassword2" id="newpassword2">
                <span class="clear"><img src="/front_img/clear-grey.png" alt=""></span>
                <p class="wrongT">비밀번호가 동일하지 않습니다</p>
            </div>
            <!-- 비밀번호 조건 통과 시 active class 추가 -->
            <a href="#lnk" id="save_id" onclick="password_cng()">저장</a>
        </div>
    </form>
</div>

<script>
	
	$('.pwInput').each(function() {
	    const clearImg = $(this).find('.clear img');
	    if ($(this).hasClass('wrong')) {
	        clearImg.attr('src', '/front_img/clear-red.png');
	    } else {
	        clearImg.attr('src', '/front_img/clear-grey.png');
	    }
	});
	$('.pwInput input').on('keydown keyup', function() {
		
		var password = $('#newpassword').val()
		var password2 = $('#newpassword2').val()
		var flag_length = false;
		var flag_same = false
		var flag_regular = false
		
		const clearImg = $(this).find('.clear img');
		
		
		//여기서 정규식으로 숫자/문자/특수문자 판단
		
		
		if(password.length < 8){
			$('#pw1').addClass("wrong")
			clearImg.attr('src', '/front_img/clear-red.png');
			flag_length = false
		}
		else{
			$('#pw1').removeClass("wrong")
			clearImg.attr('src', '/front_img/clear-grey.png');
			flag_length = true
		}
		
		if(password2 != password){
			$('#pw2').addClass("wrong")
			clearImg.attr('src', '/front_img/clear-red.png');
			flag_same = false
		}
		else{
			$('#pw2').removeClass("wrong")
			clearImg.attr('src', '/front_img/clear-grey.png');
			flag_same = true
		}
		
		if(flag_length && flag_same){
			console.log("둘다 문제가 없어요")
			$('#save_id').addClass("active")
		}
		
	    if ( $(this).val().length >= 1 ) {
	        $(this).siblings('.clear').fadeIn(100);
	    } else {
	        $(this).siblings('.clear').fadeOut(100);
	    }
	});
	$('.clear').on('click', function() {
	    $(this).fadeOut();
	    $(this).siblings('.pwInput input').val('');
	})
	
	function password_cng(){
		console.log("ajax");
	}
</script>