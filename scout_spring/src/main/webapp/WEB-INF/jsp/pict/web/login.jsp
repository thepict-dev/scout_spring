<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<meta charset="ko">
<%@ include file="./include/head.jsp" %>
<body>
	<%@ include file="./include/header.jsp" %>
    <div class="subWrapper">
        <div class="noticeTop">
            <h2>로그인</h2>
        </div>
        <div class="loginContainer">
	        <form action="#" id="loginForm" name="loginForm" method="post">
				<input type="hidden" name="MEMBERNO" id="MEMBERNO" value="">
				<input type="hidden" name="password" id="password" value="">
			</form>
            <form class="loginForm">
                <div class="inputBox">
                    <input type="text" name="id" id="id" placeholder="회원번호를 입력하세요" onkeypress="if(event.keyCode == 13){fn_login();}">
                </div>
                <div class="inputBox">
                    <input type="password" name="password" id="password2" placeholder="비밀번호를 입력하세요" onkeypress="if(event.keyCode == 13){fn_login();}">
                </div>
                <div class="buttonContainer login">
                    <a href="#lnk" class="purple" onclick="javascript:fn_login();">로그인</a>
                    <a href="#lnk" id="findInfoButton" class="white">회원정보찾기</a>
                </div>
                <input type="hidden" name="MEMBERNO" id="MEMBERNO" value="">
				<input type="hidden" name="password" id="password" value="">
            </form>
        </div>
    </div>
    <!-- 회원정보 찾기 창 -->
    <div class="userModalContianer" id="userModal">
        <button type="button"><img src="user_img/close.png" alt=""></button>
        <div class="userModalInner">
            <div class="userModalTitle">
                회원정보 찾기
            </div>
            <div class="userModalContents">
            	<!-- 
                <ul class="tabNav loginTab">
                    <li class="active">회원번호 조회</li>
                    <li>비밀번호 초기화</li>
                </ul>
                 -->
                <div class="tabInner active">
                    <div class="verifyContainer">
                        <a href="#lnk" onclick="jsSubmit()">
                            <img src="/user_img/find-logo.png" alt="">
                            <p class="title">본인인증</p>
                            <i></i>
                            <span>정확한 정보 확인을 위해<br>본인인증을 진행합니다</span>
                        </a>
                    </div>
                </div>
                <!-- 
                <div class="tabInner">
                    <form action="" class="findContainer">
                        <a href="#lnk" class="verifyContainer">
                            <img src="/user_img/find-logo.png" alt="">
                            <p class="title">본인인증</p>
                            <i></i>
                            <span>정확한 정보 확인을 위해<br>본인인증을 진행합니다</span>
                        </a>
                        <div class="findInputs">
                            <div class="inputBox">
                                <p class="inputCaption">성명</p>
                                <input type="text" name="organ" id="organ" placeholder="성명을 입력하세요">
                            </div>
                            <div class="inputBox">
                                <p class="inputCaption">생년월일</p>
                                <input type="text" name="organ" id="organ" placeholder="YYYYMMDD" style="max-width: 209px;">
                            </div>
                            <div class="inputBox">
                                <p class="inputCaption">회원번호</p>
                                <input type="text" name="organ" id="organ" placeholder="회원번호를 입력하세요">
                            </div>
                        </div>
                        <div class="buttonContainer find">
                            <a href="#lnk" class="purple" id="resetPassButton">비밀번호 초기화</a>
                        </div>
                    </form>
                </div>
                 -->
            </div>
        </div>
    </div>
    <!-- 입력정보 확인 창 -->
    <div class="userModalContianer" id="userFoundModal">
        <button type="button"><img src="user_img/close.png" alt=""></button>
        <div class="userModalInner">
            <div class="userModalTitle">
                회원정보 찾기
            </div>
            <div class="userModalContents">
                <div class="passInner">
                    <p class="passTitle">입력하신 내용과 일치하는 <span>회원정보</span> 입니다.</p>
                    <div class="foundContainer">
                        <p><span>성명</span><span id="find_name"></span></p>
                        <p><span>생년월일</span><span id="find_birthday"></span></p>
                        <p><span>회원번호</span><span id="find_memberno"></span></p>
                    </div>
                    <div class="buttonContainer find pass">
                        <a href="#lnk" onclick="go_reset()" class="white" id="foundToReset">비밀번호 초기화</a>
                        <a href="#lnk" onclick="go_login()" class="purple">로그인</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 초기화 창 -->
    <div class="userModalContianer" id="userResetModal">
        <button type="button"><img src="user_img/close.png" alt=""></button>
        <div class="userModalInner">
            <div class="userModalTitle">
                회원정보 찾기
            </div>
            <div class="userModalContents">
                <div class="passInner">
                    <p class="passTitle">비밀번호가 초기화되었습니다</p>
                    <div class="passContainer">
                        <p>비밀번호</p><span>등록하신회원번호<span>1!</span></span>
                    </div>
                    <div class="buttonContainer find pass">
                        <a href="#lnk" onclick="go_login()" class="purple" id="closeLogin">로그인</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<input type="hidden" id="memberno" />
	
	<script>
        function jsSubmit(){
            window.open("", "auth_popup", "width=430,height=640,scrollbar=yes");
            var kcbRequestForm = document.kcbRequestForm;
            kcbRequestForm.target = "auth_popup";
            kcbRequestForm.submit();
        }
    </script>
	<!-- ###### s KCB인증 요청 공통 FORM ###### -->
    <form name="kcbRequestForm" action="/_kcb/kcb_request.jsp" method="post">
    </form>

    <!-- 휴대폰 본인확인 팝업 처리결과 정보 = phone_popup3 에서 값 입력 -->
    <form name="kcbResultForm" id="kcbResultForm" method="post">
        <input type="hidden" name="CP_CD" />
        <input type="hidden" name="TX_SEQ_NO" />
        <input type="hidden" name="RSLT_CD" />
        <input type="hidden" name="RSLT_MSG" />

        <input type="hidden" name="RSLT_NAME" />
        <input type="hidden" name="RSLT_BIRTHDAY" />
        <input type="hidden" name="RSLT_SEX_CD" />
        <input type="hidden" name="RSLT_NTV_FRNR_CD" />

        <input type="hidden" name="DI" />
        <input type="hidden" name="CI" />
        <input type="hidden" name="CI_UPDATE" />
        <input type="hidden" name="TEL_COM_CD" />
        <input type="hidden" name="TEL_NO" />

        <input type="hidden" name="RETURN_MSG" />
    </form>
	<%@ include file="./include/footer.jsp" %>
    <script>
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
			document.loginForm.action = "/action_login";
			document.loginForm.submit();
		}
        // 찾기 모달 열기
        $('#findInfoButton').click(function(){
            $('#userModal').css('display', 'flex');
        });
        // 찾기 모달 닫기
        $('#userModal > button').click(function(){
            $('#userModal').css('display', 'none');
        });
        

        // 비번 초기화 열기(회원번호 찾기에서)
        $('#foundToReset').click(function(){
            $('#userFoundModal').css('display', 'none');
            $('#userResetModal').css('display', 'flex');
        });
        // 정보확인 모달 닫기
        $('#userFoundModal > button').click(function(){
            $('#userFoundModal').css('display', 'none');
        });

        // 비번 초기화 열기(비번 찾기에서)
        $('#resetPassButton').click(function(){
            $('#userModal').css('display', 'none');
            $('#userResetModal').css('display', 'flex');
        });
        // 비번 초기화 닫기
        $('#userResetModal > button, #closeLogin').click(function(){
            $('#userResetModal').css('display', 'none');
        });
        
        function abc(){
        	console.log("여기까지 오면 성공이야")
        	var kname = kcbResultForm.RSLT_NAME.value
        	var mobile = kcbResultForm.TEL_NO.value 
        	
        	var param = {
        		kname: kname,
        		mobile: mobile,
			}
			$.ajax({
				url : "/fine_member_info"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, success : function(data, status, xhr) {
					if(data.rst){
						var rst = data.rst;
						$('#find_name').text(data.rst.kname)
						$('#find_birthday').text(data.rst.birthday)
						$('#find_memberno').text(data.rst.memberno)
						$('#memberno').val(data.rst.memberno)
						
						$('#userFoundModal').css("display", "flex")
					}
					else{
						alert("등록된 정보가 없습니다.")
					}
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
					alert("오류가 발생했습니다.\n관리자에게 문의해주세요.")
				}
			});
        }
        function go_reset(){
        	if(confirm("비밀번호를 초기화 하시겠습니까?")){
        		
            	var memberno = $('#memberno').val()
        		var param = {
            		memberno : memberno
       			}
       			$.ajax({
       				url : "/find_pw_reset"
       				, type : "POST"
       				, data : JSON.stringify(param)
       				, contentType : "application/json"
       				, dataType : "json"
       				, success : function(data, status, xhr) {
       					if(data.rst == 'Y'){
       						$('#userFoundModal').css("display", "none")
       		        		$('#userResetModal').css("display", "flex")
       					}
       					else{
       						alert("등록된 정보가 없습니다.")
       					}
       				}
       				, error : function(xhr, status, error) {
       					console.log(xhr)
       					console.log("에러")
       					alert("오류가 발생했습니다.\n관리자에게 문의해주세요.")
       				}
       			});
        		
        	}
        }
        function go_login(){
        	if(confirm("로그인 페이지로 이동합니다.")){
        		window.location.href="/login";
        	}
        }
    </script>
</body>
</html>