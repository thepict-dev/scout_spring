<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<!-- 
	<script src="/rsa/rsa.js"></script>
	<script src="/rsa/jsbn.js"></script>
	<script src="/rsa/prng4.js"></script>
	<script src="/rsa/rng.js"></script>
	-->
	<script>

		$( document ).ready(function() {
		    console.log( "ready!" );
		});
		var msg = "${message}";
		if(msg != "" && msg != null){
			alert(msg);
		}

		function fn_login() {
			if ($("#id").val() == "") {
				alert("아이디를 입력하세요.");
				$("#id").focus();
				return false;
			} 
			else {
				$("#MEMBERNO").val($("#id").val());
			}
			
			if ($("#password2").val() == "") {
				alert("비밀번호를 입력하세요.");
				$("#password2").focus();
				return false;
			} else {
				$("#password").val($("#password2").val());
			}
			document.loginForm.action = "/admin/login";
			document.loginForm.submit();
		}
	</script>
   	<link href="/css/reset.css" rel="stylesheet">
   	<link href="/css/common.css" rel="stylesheet">
   	<link href="/css/login.css" rel="stylesheet">
   	
	<div class="loginContainer">
        <div class="loginInner">
            <form action="#" id="entryForm" name="entryForm" method="post" class="loginContents">
                <div class="loginTitle">
                    <h1><img src="/front_img/login-logo.png" alt=""></h1>
                    <h2>로그인</h2>
                </div>
                <div class="loginInputs">
                    <div class="loginInput">
                        <p class="inputCaption">아이디</p>
                        <input type="text" id="id" onkeypress="if(event.keyCode == 13){fn_login();}" autocomplete="off" class="loginInput" placeholder="아이디를 입력하세요.">
                    </div>
                    <div class="loginInput">
                        <p class="inputCaption">비밀번호</p>
                        <input type="password" id="password2" onkeypress="if(event.keyCode == 13){fn_login();}" autocomplete="off" class="loginInput" placeholder="비밀번호를 입력하세요.">
                    </div>
                </div>
                <button type="button" onclick="javascript:fn_login();">로그인</button>
            </form>
        </div>
    </div>
	
	<form action="#" id="loginForm" name="loginForm" method="post">
		<%-- 
		<input type="hidden" id="RSAModulus" value="${RSAModulus}"/>
		<input type="hidden" id="RSAExponent" value="${RSAExponent}"/>
		--%>
		<input type="hidden" name="MEMBERNO" id="MEMBERNO" value="">
		<input type="hidden" name="password" id="password" value="">
	</form>