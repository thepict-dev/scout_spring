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
            <h2>마이페이지</h2>
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
                                <span class="bindingText lg"></span>
                            </div>
                            <div class="myInputBox">
                                <p class="myCaption">구분</p>
                                <span class="bindingText lg"></span>
                            </div>
                            <div class="myInputBox">
                                <p class="myCaption">성함</p>
                                <span class="bindingText sm1"></span>
                            </div>
                            <div class="myInputBox">
                                <p class="myCaption">성함(영문)</p>
                                <span class="bindingText sm1"></span>
                            </div>
                            <div class="myInputBox">
                                <p class="myCaption">생년월일</p>
                                <span class="bindingText sm1"></span>
                            </div>
                            <div class="myInputBox genderContainer">
                                <div class="gender">
                                    <input type="radio" name="SEX" value="M" id="SEX_M" checked disabled>
                                    <label for="SEX_M">남</label>
                                </div>
                                <div class="gender">
                                    <input type="radio" name="SEX" value="W" id="SEX_W" disabled>
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
                            <span class="bindingText sm2"></span>
                        </div>
                        <div class="myInputBox">
                            <p class="myCaption">휴대전화</p>
                            <span class="bindingText sm2"></span>
                        </div>
                        <div class="myInputBox">
                            <p class="myCaption">이메일</p>
                            <span class="bindingText sm2"></span>
                        </div>
                        <div class="myInputBox">
                            <p class="myCaption">직업</p>
                            <span class="bindingText sm2"></span>
                        </div>
                    </div>
                </div>
                <div class="stackInputs">
                    <div class="myInputsContainer">
                        <div class="myInputBox">
                            <p class="myCaption">주소</p>
                            <span class="bindingText md"></span>
                        </div>
                    </div>
                </div>
                <div class="stackInputs">
                    <div class="myInputsContainer">
                        <div class="myInputBox">
                            <p class="myCaption">평생회원여부</p>
                            <span class="bindingText xs"></span>
                        </div>
                        <div class="myInputBox">
                            <p class="myCaption">평생회원등급</p>
                            <span class="bindingText xs"></span>
                        </div>
                        <div class="myInputBox">
                            <p class="myCaption">평생회원번호</p>
                            <span class="bindingText xs"></span>
                        </div>
                        <div class="myInputBox">
                            <p class="myCaption">평생회원등록일</p>
                            <span class="bindingText xs"></span>
                        </div>
                        <div class="myInputBox">
                            <p class="myCaption">평생회원상태</p>
                            <span class="bindingText xs"></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="addInfoInner">
                <ul class="tabNav addNav">
                    <li class="active"><a href="#lnk">연공</a></li>
                    <li><a href="#lnk">대원/진보</a></li>
                </ul>
                <div class="tabInner active">
                    <h3 class="myTitles">연공 정보</h3>
                    <div class="myInfoContents">
                        <div class="organTableWrapper">
                            <table>
                                <colgroup>
                                    <col width="20%" />
                                    <col width="20%" />
                                    <col width="20%" />
                                    <col width="10%" />
                                    <col width="15%" />
                                    <col width="15%" />
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>연맹</th>
                                        <th>지구연합회</th>
                                        <th>단위대</th>
                                        <th>연도</th>
                                        <th>스카우트구분</th>
                                        <th>스카우트직책</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>2</td>
                                        <td>3</td>
                                        <td>4</td>
                                        <td>5</td>
                                        <td>6</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="tabInner">
                    <h3 class="myTitles">대원/진보</h3>
                    <div class="myInfoContents">
                        <ul class="badges">
                            <li>
                                <span><img src="/user_img/jam00-1.jpg" alt=""></span>
                                <p>토끼</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="buttonContainer find myInfo">
            <a href="#lnk" class="white" id="pwCngButton">비밀번호 변경</a>
            <a href="/modify" class="purple">정보 수정</a>
        </div>
    </div>
    <!-- 비번 변경 창 -->
    <div class="userModalContianer" id="pwCngModal">
        <button type="button"><img src="user_img/close.png" alt=""></button>
        <div class="userModalInner">
            <div class="userModalTitle">
                비밀번호 변경
            </div>
            <form action="" class="pwCngContainer">
                <div class="pwCngInner">
                    <div class="inputBox">
                        <p class="inputCaption">현재 비밀번호</p>
                        <input type="text" name="organ" id="organ" placeholder="현재 비밀번호를 입력하세요">
                    </div>
                    <div class="inputBox">
                        <p class="inputCaption">변경 비밀번호</p>
                        <input type="text" name="organ" id="organ" placeholder="변경할 비밀번호를 입력하세요">
                    </div>
                    <div class="inputBox">
                        <p class="inputCaption">변경 비밀번호 확인</p>
                        <input type="text" name="organ" id="organ" placeholder="변경할 비밀번호를 입력하세요">
                    </div>
                </div>
                <div class="buttonContainer find">
                    <a href="#lnk" class="purple" id="resetPassButton">비밀번호 수정</a>
                </div>
            </form>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
    <script>
        // 비번변경 모달 열기
        $('#pwCngButton').click(function(){
            $('#pwCngModal').css('display', 'flex');
        });
        // 비번변경 모달 닫기
        $('#pwCngModal > button').click(function(){
            $('#pwCngModal').css('display', 'none');
        });

        
    </script>
</body>
</html>