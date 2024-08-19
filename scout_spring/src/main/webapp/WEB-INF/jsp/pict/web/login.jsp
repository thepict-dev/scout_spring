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
            <form class="loginForm">
                <div class="inputBox">
                    <input type="text" name="organ" id="organ" placeholder="회원번호를 입력하세요">
                </div>
                <div class="inputBox">
                    <input type="text" name="organ" id="organ" placeholder="비밀번호를 입력하세요">
                </div>
                <div class="buttonContainer login">
                    <a href="#lnk" class="purple">로그인</a>
                    <a href="#lnk" id="findInfoButton" class="white">회원정보찾기</a>
                </div>
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
                <ul class="tabNav loginTab">
                    <li class="active">회원번호 조회</li>
                    <li>비밀번호 초기화</li>
                </ul>
                <div class="tabInner active">
                    <div class="verifyContainer">
                        <a href="#lnk">
                            <img src="/user_img/find-logo.png" alt="">
                            <p class="title">본인인증</p>
                            <i></i>
                            <span>정확한 정보 확인을 위해<br>본인인증을 진행합니다</span>
                        </a>
                    </div>
                </div>
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
                        <p><span>성명</span>이유리</p>
                        <p><span>생년월일</span>1995.10.31</p>
                        <p><span>회원번호</span>123456789</p>
                    </div>
                    <div class="buttonContainer find pass">
                        <a href="#lnk" class="white" id="foundToReset">비밀번호 초기화</a>
                        <a href="#lnk" class="purple">로그인</a>
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
                        <a href="#lnk" class="purple" id="closeLogin">로그인</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
    <script>
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
    </script>
</body>
</html>