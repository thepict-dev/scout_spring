<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
	<!-- 
	<script src="/rsa/rsa.js"></script>
	<script src="/rsa/jsbn.js"></script>
	<script src="/rsa/prng4.js"></script>
	<script src="/rsa/rng.js"></script>
	-->
	<script>
		//셀렉
		$(document).ready(function() {
		    $('.js-example-basic-single').select2();
		});
		
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
   	
	<form class="loginContainer" action="#" id="entryForm" name="entryForm" method="post" >
        <div class="loginInner">
            <div class="loginContents">
                <div class="loginTitle">
                    <h1><img src="/front_img/login-logo.png" alt=""></h1>
                    <h2>로그인</h2>
                </div>
				<ul class="tabNav">
					<li class="active">전종지도자</li>
					<li>단위대(대등록)</li>
				</ul>
                <div class="tabInner active">
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
                	<button type="button" onclick="javascript:fn_login();" class="loginButton">로그인</button>
                </div>
                <div class="tabInner">
	                <div class="loginInputs second">
	                    <div class="loginInput">
	                        <p class="inputCaption">연맹</p>
		                	<select class="js-example-basic-single" name="ASSOCIATIONCODE" id="ASSOCIATIONCODE">
							  	<option value="">연맹을 선택하세요</option>
							  	<option value="1">강원연맹</option>
							</select>
						</div>
	                    <div class="loginInput">
	                        <p class="inputCaption">단위대</p>
		                	<select class="js-example-basic-single" name="TROOPNAME" id="TROOPNAME">
							  	<option value="">단위대를 선택하세요</option>
							  	<option value="1">더픽트단위대</option>
							</select>
						</div>
	                    <div class="loginInput">
	                        <p class="inputCaption">비밀번호</p>
	                        <input type="password" id="password_organ" onkeypress="if(event.keyCode == 13)" autocomplete="off" class="loginInput" placeholder="비밀번호를 입력하세요.">
	                    </div>
					</div>
                	<button type="button" onclick="javascript:fn_login();" class="loginButton">로그인</button>
                </div>
            </div>
        </div>
    </form>
	
	<form action="#" id="loginForm" name="loginForm" method="post">
		<%-- 
		<input type="hidden" id="RSAModulus" value="${RSAModulus}"/>
		<input type="hidden" id="RSAExponent" value="${RSAExponent}"/>
		--%>
		<input type="hidden" name="MEMBERNO" id="MEMBERNO" value="">
		<input type="hidden" name="password" id="password" value="">
	</form>
	<script>

		const tabItem = document.querySelectorAll('.tabNav li');
		const tabInner = document.querySelectorAll('.tabInner');
	
		tabItem.forEach((tab, idx)=> {
		    tab.addEventListener('click', function(){
		    	tabInner.forEach((inner)=> {
		            inner.classList.remove('active')
		        });
	
		        tabItem.forEach((item)=> {
		            item.classList.remove('active')
		        });
	
		        tabItem[idx].classList.add('active')
		        tabInner[idx].classList.add('active')
		    });
		});
	</script>