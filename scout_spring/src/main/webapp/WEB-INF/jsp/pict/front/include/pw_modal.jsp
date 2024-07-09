<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>


<%
	pageContext.setAttribute("id", session.getAttribute("id"));
%>


<div id="pwPopup">
    <form action="" id="password" name="password" class="pwModalInner">
        <button type="button"><img src="/front_img/close2.png" alt=""></button>
        <p>비밀번호 변경</p>
        <div class="pwInputs">
            <!-- pwInput에 wrong class 추가 시 css 로 틀린 효과 적용됨 -->
            <div class="pwInput" id="pw1">
                <p class="pwTit">새 비밀번호 입력*</p>
                <input type="password" name="newpassword" id="newpassword">
                <span class="clear"><img src="" alt=""></span>
                <p class="wrongT">문자, 숫자, 특수문자를 모두 사용해주세요</p>
            </div>
            <div class="pwInput" id="pw2">
                <p class="pwTit">새 비밀번호 입력*</p>
                <input type="password" name="newpassword2" id="newpassword2">
                <span class="clear"><img src="" alt=""></span>
                <p class="wrongT">비밀번호가 동일하지 않습니다</p>
            </div>
            <!-- 비밀번호 조건 통과 시 active class 추가 -->
            <a href="#lnk" id="save_id" onclick="password_cng()">저장</a>
        </div>
    </form>
</div>

<script>
	function password_cng(){
		var param = {
			memberno : '${id}',
			password : $('#newpassword').val()	
		}
		$.ajax({
			url : "/admin/admin_password"
			, type : "POST"
			, data : JSON.stringify(param)
			, contentType : "application/json"
			, async : true
			, success : function(data, status, xhr) {
				alert("정상적으로 수정되었습니다.")
				$('#pwPopup').removeClass('active')
			},
			error : function(err){
				console.log("에러가 났어")
				console.log(err)
				$('#error').css('display', 'flex')
			}
		})
	}
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
		var flag_regular = false;
		var flag_same = false;
		var clearImg_1 = $('#pw1 .clear img');
		var clearImg_2 = $('#pw2 .clear img');
		
		var reg = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*()])[a-zA-Z\d!@#$%^&*()]{8,12}$/;
		
		if(!reg.test(password)){
			$('#pw1').addClass("wrong");
			clearImg_1.attr('src', '/front_img/clear-red.png');
			flag_regular = false;
		}
		else{
			$('#pw1').removeClass("wrong");
			clearImg_1.attr('src', '/front_img/clear-grey.png');
			flag_regular = true;
		}
		
		if(password2 != password){
			$('#pw2').addClass("wrong");
			clearImg_2.attr('src', '/front_img/clear-red.png');
			flag_same = false;
		}
		else{
			$('#pw2').removeClass("wrong");
			clearImg_2.attr('src', '/front_img/clear-grey.png');
			flag_same = true;
		}
		
		if(flag_regular && flag_same){
			$('#save_id').addClass("active");
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
	
	
	
</script>