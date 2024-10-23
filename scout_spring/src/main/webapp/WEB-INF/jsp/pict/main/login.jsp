<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>
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
		function fn_troop_login() {
			if ($("#ASSOCIATIONCODE_S").val() == "") {
				alert("연맹을 선택해주세요.");
				$("#ASSOCIATIONCODE_S").focus();
				return false;
			}
			else{
				$("#ASSOCIATIONCODE").val($("#ASSOCIATIONCODE_S").val())
			}
			if ($("#TROOPNO_S").val() == "") {
				alert("단위대를 선택해주세요.");
				$("#TROOPNO_S").focus();
				return false;
			}
			else{
				$("#TROOPNO").val($("#TROOPNO_S").val())
			}
			if ($("#password_organ").val() == "") {
				alert("비밀번호를 입력하세요.");
				$("#password_organ").focus();
				return false;
			} else {
				$("#password").val($("#password_organ").val());
			}
			
			document.loginForm.action = "/admin/sub_admin_login";
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
					<li class="active">단위대(대등록)</li>
					<li>전종지도자</li>
				</ul>
                <div class="tabInner active">
	                <div class="loginInputs second">
	                    <div class="loginInput">
	                        <p class="inputCaption">연맹</p>
		                	<select class="js-example-basic-single" name="ASSOCIATIONCODE_S" id="ASSOCIATIONCODE_S" onchange="fn_get_unitylist()">
							  	<option value="">연맹을 선택하세요</option>
					  			<c:forEach var="resultList" items="${resultList}" varStatus="status">
						  			<option value="${resultList.ASSOCIATIONCODE}">${resultList.ASSOCIATIONNAME}</option>
					  			</c:forEach>
							</select>
						</div>
	                    <div class="loginInput">
	                        <p class="inputCaption">단위대</p>
		                	<select class="js-example-basic-single" name="TROOPNO_S" id="TROOPNO_S">
							  	<option value="">단위대를 검색하세요.</option>
							  	<c:forEach var="troop_list" items="${troop_list}" varStatus="status">
						  			<option value="${troop_list.TROOPNO}">${troop_list.TROOPNAME}</option>
					  			</c:forEach>
							</select>
						</div>
	                    <div class="loginInput">
	                        <p class="inputCaption">비밀번호</p>
	                        <input type="password" id="password_organ" onkeypress="if(event.keyCode == 13){fn_troop_login();}" autocomplete="off" class="loginInput" placeholder="비밀번호를 입력하세요.">
	                    </div>
					</div>
                	<button type="button" onclick="javascript:fn_troop_login();" class="loginButton">로그인</button>
                </div>
                <div class="tabInner">
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
		
		
		<input type="hidden" name="ASSOCIATIONCODE" id="ASSOCIATIONCODE" value="">
		<input type="hidden" name="TROOPNO" id="TROOPNO" value="">
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
		
		function fn_get_unitylist(){
			var param = {
				associationcode : $('#ASSOCIATIONCODE_S').val(),
			}
			console.log($('#ASSOCIATIONCODE_S').val())
			$.ajax({
				url : "/admin/get_login_troop"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : false
				, success : function(data, status, xhr) {
					var html ="";
					if(data.list){
						var arr = data.list;
						$('#TROOPNO_S').children().remove();
						for(var i=0; i<arr.length; i++){
							html += '<option value="'+ arr[i].troopno +'">'+arr[i].troopname+"(" + arr[i].disptroopno +')</option>'
						}
						$('#TROOPNO_S').append(html)
					}
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
		}
		
	</script>