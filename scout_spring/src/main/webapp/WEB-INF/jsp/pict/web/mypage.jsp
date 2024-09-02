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
                        <img src="https://www.scout.or.kr${pictVO.PICIMG}" alt="프로필 이미지">
                    </div>
                    <div class="stackInputs">
                        <div class="myInputsContainer">
                            <div class="myInputBox">
                                <p class="myCaption">회원번호</p>
                                <span class="bindingText lg">${pictVO.MEMBERNO}</span>
                            </div>
                            <div class="myInputBox">
                                <p class="myCaption">구분</p>
                                <span class="bindingText lg">
                                	<c:if test="${pictVO.TROOPSCOUTY eq 'Y'}">대원</c:if>
                                	<c:if test="${pictVO.TROOPLEADERY eq 'Y'}">지도자</c:if>
                                </span>
                            </div>
                            <div class="myInputBox">
                                <p class="myCaption">성함</p>
                                <span class="bindingText sm1">${pictVO.KNAME}</span>
                            </div>
                            <div class="myInputBox">
                                <p class="myCaption">성함(영문)</p>
                                <span class="bindingText sm1">${pictVO.ENAME}</span>
                            </div>
                            <div class="myInputBox">
                                <p class="myCaption">생년월일</p>
                                <span class="bindingText sm1">${pictVO.BIRTHDAY }</span>
                            </div>
                            <div class="myInputBox genderContainer">
                                <div class="gender">
                                    <input type="radio" name="SEX" value="M" id="SEX_M" disabled <c:if test="${pictVO.SEX eq 'M'}">checked</c:if>>
                                    <label for="SEX_M">남</label>
                                </div>
                                <div class="gender">
                                    <input type="radio" name="SEX" value="W" id="SEX_W" disabled <c:if test="${pictVO.SEX eq 'W'}">checked</c:if>>
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
                            <span class="bindingText sm2">${pictVO.HTELNO}</span>
                        </div>
                        <div class="myInputBox">
                            <p class="myCaption">휴대전화</p>
                            <span class="bindingText sm2">${pictVO.MOBILE}</span>
                        </div>
                        <div class="myInputBox">
                            <p class="myCaption">이메일</p>
                            <span class="bindingText sm2">${pictVO.EMAIL}</span>
                        </div>
                        <div class="myInputBox">
                            <p class="myCaption">직업</p>
                            <span class="bindingText sm2">
                            	<c:forEach var="job_list" items="${job_list}" varStatus="status">
                                	<c:if test="${job_list.JOBCODE eq pictVO.JOBCODE}">${job_list.JOBNAME}</c:if>
								</c:forEach>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="stackInputs">
                    <div class="myInputsContainer">
                        <div class="myInputBox">
                            <p class="myCaption">주소</p>
                            <span class="bindingText md">${pictVO.HADDR}</span>
                        </div>
                    </div>
                </div>
                <div class="stackInputs">
                    <div class="myInputsContainer">
                        <div class="myInputBox">
                            <p class="myCaption">평생회원여부</p>
                            <span class="bindingText xs">${pictVO.LIFEMEMBERY}</span>
                        </div>
                        <div class="myInputBox">
                            <p class="myCaption">평생회원등급</p>
                            <span class="bindingText xs">
                            	<c:if test="${pictVO.LIFERANK eq 'C'}">일반</c:if>
                            	<c:if test="${pictVO.LIFERANK eq 'S'}">실버</c:if>
                            	<c:if test="${pictVO.LIFERANK eq 'G'}">골드</c:if>
                            </span>
                        </div>
                        <div class="myInputBox">
                            <p class="myCaption">평생회원번호</p>
                            <span class="bindingText xs">${pictVO.LIFEMEMBERNO}</span>
                        </div>
                        <div class="myInputBox">
                            <p class="myCaption">평생회원등록일</p>
                            <span class="bindingText xs">${pictVO.LIFEENTERDATE}</span>
                        </div>
                        <div class="myInputBox">
                            <p class="myCaption">평생회원상태</p>
                            <span class="bindingText xs">
	                            <c:if test="${pictVO.LIFESTATUS eq '1'}">유지</c:if>
	                            <c:if test="${pictVO.LIFESTATUS eq '2'}">승계</c:if>
	                            <c:if test="${pictVO.LIFESTATUS eq '3'}">탈퇴</c:if>
	                            <c:if test="${pictVO.LIFESTATUS eq '4'}">사망</c:if>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="addInfoInner">
                <ul class="tabNav addNav">
                    <li class="active"><a href="#lnk">연공</a></li>
                    <li><a href="#lnk">대원/진보</a></li>
                    <li><a href="#lnk">자격</a></li>
                    <li><a href="#lnk">훈련</a></li>
                    <li><a href="#lnk">포상</a></li>
                    <li><a href="#lnk">봉사</a></li>
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
                                        <c:if test="${pictVO.TROOPSCOUTY eq 'Y'}">
                                        	<th>스카우트구분</th>
                                        	<th>스카우트직책</th>
                                       	</c:if>
                                		<c:if test="${pictVO.TROOPLEADERY eq 'Y'}">
                                			<th>지도자구분</th>
                                        	<th>지도자직책</th>
                                		</c:if>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                	<c:forEach var="list" items="${list}" varStatus="status">
	                                    <tr>
	                                        <td>${list.ASSOCIATIONNAME}</td>
	                                        <td>${list.UNITY}</td>
	                                        <td>${list.TROOPNAME}</td>
	                                        <td>${list.YEAR}</td>
	                                        <c:if test="${pictVO.TROOPSCOUTY eq 'Y'}">
	                                        	<td>${list.SCOUTCLSNAME }</td>
	                                        	<td>${list.SCOUTPOSITIONNAME }</td>
	                                       	</c:if>
	                                		<c:if test="${pictVO.TROOPLEADERY eq 'Y'}">
	                                			<td>${list.LEADERPOSITION}</td>
	                                        	<td>${list.LEADERPOSITIONNAME}</td>
	                                		</c:if>
	                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="tabInner">
                	<p class="emptyComment">현재 준비중인 기능입니다.</p>
                </div>
                <div class="tabInner">
                	<p class="emptyComment">현재 준비중인 기능입니다.</p>
                </div>
                <div class="tabInner">
                	<p class="emptyComment">현재 준비중인 기능입니다.</p>
                </div>
                <div class="tabInner">
                	<p class="emptyComment">현재 준비중인 기능입니다.</p>
                </div>
                <div class="tabInner">
                	<p class="emptyComment">현재 준비중인 기능입니다.</p>
                </div>
                <!-- 
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
                 -->
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
                    <div class="inputBox passVerify">
                        <p class="inputCaption">변경 비밀번호</p>
                        <input type="password" name="newpassword" id="newpassword" placeholder="변경할 비밀번호를 입력하세요" maxlength="13">
                		<p class="wrongT1">8자 이상 13자 이하 문자, 숫자, 특수문자를 조합하여 사용해주세요.</p>
                    </div>
                    <div class="inputBox passVerify">
                        <p class="inputCaption">변경 비밀번호 확인</p>
                        <input type="password" name="newpassword2" id="newpassword2" placeholder="변경할 비밀번호를 입력하세요" maxlength="13">
                		<p class="wrongT2">비밀번호가 동일하지 않습니다</p>
                    </div>
                </div>
                <div class="buttonContainer find">
                    <a href="#lnk" onclick="password_cng()" class="purple" id="resetPassButton">비밀번호 수정</a>
                </div>
            </form>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
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
					 $('#pwCngModal').css('display', 'none');
				},
				error : function(err){
					console.log("에러가 났어")
					console.log(err)
					alert("오류가 발생했습니다.\n관리자에게 문의해주세요.")
				}
			})
		}
        // 비번변경 모달 열기
        $('#pwCngButton').click(function(){
            $('#pwCngModal').css('display', 'flex');
        });
        // 비번변경 모달 닫기
        $('#pwCngModal > button').click(function(){
            $('#pwCngModal').css('display', 'none');
        });
		

        var $newPassword = $('#newpassword');
        var $newPassword2 = $('#newpassword2');
        var $wrongT1 = $('.wrongT1');
        var $wrongT2 = $('.wrongT2');
        var password2Touched = false;

        function validatePassword(password) {
            var reg = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*()])[a-zA-Z\d!@#$%^&*()]{8,13}$/;
            return reg.test(password);
        }

        $newPassword.on('keyup', function() {
            if ($(this).val() !== '') {
                $wrongT1.toggle(!validatePassword($(this).val()));
            } else {
                $wrongT1.hide();
            }
        });

        $newPassword2.on('focus', function() {
            password2Touched = true;
        });

        $newPassword2.on('keyup', function() {
            if (password2Touched && $newPassword.val() !== '') {
                $wrongT2.toggle($(this).val() !== $newPassword.val());
            }
        });
    </script>
</body>
</html>