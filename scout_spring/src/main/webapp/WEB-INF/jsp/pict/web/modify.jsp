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
            <h2>정보 수정</h2>
        </div>
        <div class="mypageContainer">
            <div class="mypageInner">
                <h3 class="myTitles">기본정보</h3>
                <div class="myInfoContainer">
                    <div class="profile">
                        <img src="/user_img/test.jpg" alt="프로필 이미지">
                    </div>
                    <div class="stackInputs">
                        <div class="myInputsContainer">
                            <div class="myInputBox">
                                <p class="myCaption">회원번호</p>
                                <span class="bindingText lg disable"></span>
                            </div>
                            <div class="myInputBox">
                                <p class="myCaption">구분</p>
                                <span class="bindingText lg disable"></span>
                            </div>
                            <div class="myInputBox">
                                <p class="myCaption">성함</p>
                                <span class="bindingText sm1 disable"></span>
                            </div>
                            <div class="myInputBox">
                                <p class="myCaption">성함(영문)</p>
                                <input type="text" name="ENAME" id="ENAME" class="">
                            </div>
                            <div class="myInputBox">
                                <p class="myCaption">생년월일</p>
                                <span class="bindingText sm1 disable"></span>
                            </div>
                            <div class="myInputBox genderContainer">
                                <div class="gender">
                                    <input type="radio" name="SEX" value="M" id="SEX_M">
                                    <label for="SEX_M">남</label>
                                </div>
                                <div class="gender">
                                    <input type="radio" name="SEX" value="W" id="SEX_W">
                                    <label for="SEX_W">여</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="stackInputs">
                    <div class="myInputsContainer">
                        <div class="myInputBox">
                            <p class="myCaption">집전화</p>
                            <input type="text" name="HTELNO" id="HTELNO" class="sm2">
                        </div>
                        <div class="myInputBox">
                            <p class="myCaption">휴대전화</p>
                            <span class="bindingText sm2 disable"></span>
                        </div>
                        <div class="myInputBox">
                            <p class="myCaption">이메일</p>
                            <input type="text" name="EMAIL" id="EMAIL" class="sm2">
                        </div>
                        <div class="myInputBox">
                            <p class="myCaption">직업</p>
                            <input type="text" name="JOBNAME" id="JOBNAME" class="sm2">
                        </div>
                    </div>
                </div>
                <div class="stackInputs">
                    <div class="myInputsContainer">
                        <div class="myInputBox post">
                            <p class="myCaption">주소</p>
                            <div class="zip">
                                <input type="text" name="HPOSTCODE" id="HPOSTCODE" readonly class="addwidth1">
                                <a href="#lnk" class="normalButton white" id="searchZip">주소 검색</a>
                            </div>
                            <input type="text" name="HADDR" id="HADDR" class="postInput">
                        </div>
                    </div>
                </div>
                <div class="stackInputs">
                    <div class="myInputsContainer">
                        <div class="myInputBox">
                            <p class="myCaption">평생회원여부</p>
                            <span class="bindingText xs disable"></span>
                        </div>
                        <div class="myInputBox">
                            <p class="myCaption">평생회원등급</p>
                            <span class="bindingText xs disable"></span>
                        </div>
                        <div class="myInputBox">
                            <p class="myCaption">평생회원번호</p>
                            <span class="bindingText xs disable"></span>
                        </div>
                        <div class="myInputBox">
                            <p class="myCaption">평생회원등록일</p>
                            <span class="bindingText xs disable"></span>
                        </div>
                        <div class="myInputBox">
                            <p class="myCaption">평생회원상태</p>
                            <span class="bindingText xs disable"></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="buttonContainer find myInfo">
            <a href="/mypage" class="white" id="pwCngButton">취소</a>
            <a href="#lnk" class="purple">수정</a>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>

		window.onload = function(){
		    document.getElementById("searchZip").addEventListener("click", function(){ //주소입력칸을 클릭하면
		        //카카오 지도 발생
		        new daum.Postcode({
		            oncomplete: function(data) { //선택시 입력값 세팅
		                document.getElementById("HPOSTCODE").value = data.zonecode;
		                document.getElementById("HADDR").value = data.address; // 주소 넣기
		                document.getElementById("HADDR").focus();
		            }
		        }).open();
		    });
		}
	</script>
</body>
</html>