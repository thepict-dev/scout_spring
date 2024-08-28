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
	<%
		pageContext.setAttribute("memberno", session.getAttribute("id"));
	%>
	<%@ include file="./include/header.jsp" %>
    <div class="subWrapper">
    	<form action="" id="register" name="register" method="post" enctype="multipart/form-data">
	        <div class="noticeTop">
	            <h2>정보 수정</h2>
	        </div>
	        <div class="mypageContainer">
	            <div class="mypageInner">
	                <h3 class="myTitles">기본정보</h3>
	                <div class="myInfoContainer">
	                    <div class="profile">
	                        <label for="attach_file">
	                        	<c:if test="${pictVO.PICIMG eq '' || pictVO.PICIMG eq null || pictVO.PICIMG eq undefined}">
	                            	<img src="/front_img/profile.png" alt="프로필 이미지" class="profileImg" id="profile_img">
	                           	</c:if>
	                           	<c:if test="${pictVO.PICIMG ne '' && pictVO.PICIMG ne null && pictVO.PICIMG ne undefined}">
	                            	<img src="${pictVO.PICIMG }" alt="프로필 이미지" class="profileImg" id="profile_img">
	                           	</c:if>
						    </label>
	                        <input type="file" class="imgUpload" id="attach_file" name="attach_file" accept="image/*" >
	                    </div>
	                    <div class="stackInputs">
	                        <div class="myInputsContainer">
	                            <div class="myInputBox">
	                                <p class="myCaption">회원번호</p>
	                                <span class="bindingText lg disable">${pictVO.MEMBERNO}</span>
	                            </div>
	                            <div class="myInputBox">
	                                <p class="myCaption">구분</p>
	                                <span class="bindingText lg disable">
	                                	<c:if test="${pictVO.TROOPSCOUTY eq 'Y'}">대원</c:if>
	                                	<c:if test="${pictVO.TROOPLEADERY eq 'Y'}">지도자</c:if>
	                                </span>
	                            </div>
	                            <div class="myInputBox">
	                                <p class="myCaption">성함</p>
	                                <span class="bindingText sm1 disable">${pictVO.KNAME}</span>
	                            </div>
	                            <div class="myInputBox">
	                                <p class="myCaption">성함(영문)</p>
	                                <input type="text" name="ENAME" id="ENAME" class="" value="${pictVO.ENAME}">
	                            </div>
	                            <div class="myInputBox">
	                                <p class="myCaption">생년월일</p>
	                                <input type="text" name="BIRTHDAY" id="BIRTHDAY" class="" value="${pictVO.BIRTHDAY}">
	                            </div>
	                            <div class="myInputBox genderContainer">
	                                <div class="gender">
	                                    <input type="radio" name="SEX" value="M" id="SEX_M" <c:if test="${pictVO.SEX eq 'M'}">checked</c:if>>
	                                    <label for="SEX_M">남</label>
	                                </div>
	                                <div class="gender">
	                                    <input type="radio" name="SEX" value="W" id="SEX_W" <c:if test="${pictVO.SEX eq 'W'}">checked</c:if>>
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
	                            <input type="text" name="HTELNO" id="HTELNO" class="sm2" value="${pictVO.HTELNO}">
	                        </div>
	                        <div class="myInputBox">
	                            <p class="myCaption">휴대전화</p>
	                            <span class="bindingText sm2 disable">${pictVO.MOBILE}</span>
	                        </div>
	                        <div class="myInputBox">
	                            <p class="myCaption">이메일</p>
	                            <input type="text" name="EMAIL" id="EMAIL" class="sm2" value="${pictVO.EMAIL}">
	                        </div>
	                        <div class="myInputBox">
	                            <p class="myCaption">직업</p>
	                            <select name="JOBCODE" id="JOBCODE" class="sm2">
									<option value="">선택하세요.</option>
									<c:forEach var="job_list" items="${job_list}" varStatus="status">
										<option value="${job_list.JOBCODE}" <c:if test="${job_list.JOBCODE eq pictVO.JOBCODE}">selected</c:if>>${job_list.JOBNAME}</option>	
									</c:forEach>
								</select>
	                        </div>
	                    </div>
	                </div>
	                <div class="stackInputs">
	                    <div class="myInputsContainer">
	                        <div class="myInputBox post">
	                            <p class="myCaption">주소</p>
	                            <div class="zip">
	                                <input type="text" name="HPOSTCODE" id="HPOSTCODE" readonly class="addwidth1" value="${pictVO.HPOSTCODE}">
	                                <a href="#lnk" class="normalButton white" id="searchZip">주소 검색</a>
	                            </div>
	                            <input type="text" name="HADDR" id="HADDR" class="postInput" value="${pictVO.HADDR}">
	                        </div>
	                    </div>
	                </div>
	                <div class="stackInputs">
	                    <div class="myInputsContainer">
	                        <div class="myInputBox">
	                            <p class="myCaption">평생회원여부</p>
	                            <span class="bindingText xs disable">${pictVO.LIFEMEMBERY}</span>
	                        </div>
	                        <div class="myInputBox">
	                            <p class="myCaption">평생회원등급</p>
	                            <span class="bindingText xs disable">
	                            	<c:if test="${pictVO.LIFERANK eq 'C'}">일반</c:if>
	                            	<c:if test="${pictVO.LIFERANK eq 'S'}">실버</c:if>
	                            	<c:if test="${pictVO.LIFERANK eq 'G'}">골드</c:if>
	                            </span>
	                        </div>
	                        <div class="myInputBox">
	                            <p class="myCaption">평생회원번호</p>
	                            <span class="bindingText xs disable">
	                            	${pictVO.LIFEMEMBERNO}
	                            </span>
	                        </div>
	                        <div class="myInputBox">
	                            <p class="myCaption">평생회원등록일</p>
	                            <span class="bindingText xs disable">
	                            	${pictVO.LIFEENTERDATE}
	                            </span>
	                        </div>
	                        <div class="myInputBox">
	                            <p class="myCaption">평생회원상태</p>
	                            <span class="bindingText xs disable">
	                            	<c:if test="${pictVO.LIFESTATUS eq '1'}">유지</c:if>
		                            <c:if test="${pictVO.LIFESTATUS eq '2'}">승계</c:if>
		                            <c:if test="${pictVO.LIFESTATUS eq '3'}">탈퇴</c:if>
		                            <c:if test="${pictVO.LIFESTATUS eq '4'}">사망</c:if>
	                            </span>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <div class="buttonContainer find myInfo">
	            <a href="/mypage" class="white" id="pwCngButton">취소</a>
	            <a href="#lnk" onclick="mypage_mod()" class="purple">수정</a>
	        </div>
        </form>
    </div>
	<%@ include file="./include/footer.jsp" %>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		function mypage_mod(){
			if(confirm("회원정보를 수정하시겠습니까?")){
				$("#register").attr("action", "/mypage_mod");
				$("#register").submit();
			}
		}
		$("#attach_file").change(function(){
			var memberno = '${memberno}';

			 var requestData = {
		        memberno : memberno
		    }
		 
			var form = $('#attach_file')[0].files[0];
			var formData = new FormData();
			formData.append('img', form);
			formData.append("request", new Blob([JSON.stringify(requestData)], {type: "application/json"}));
			
			$.ajax({
				url: '/admin/profile_img',
				processData : false,
				contentType : false,
				data : formData,
				type : 'POST',
				success : function(result){
					if(result == 'Y'){
						alert("이미지가 정상적으로 저장되었습니다.");	
					}
					else{
						alert("이미지 저장 오류 발생");
					}
					
					
				},
				error : function(err){
					console.log(err)
				}
				
			});
			
			
		})

		//파일업로드
		const file = document.querySelector(".imgUpload");
		const preview = document.querySelector(".profileImg");

		file.addEventListener("change", () => {
		    const reader = new FileReader();
		    reader.onload = () => {
		        preview.src = reader.result;
		    }
		    reader.readAsDataURL(file.files[0]);
		});

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
		
		mypage_mod
	</script>
</body>
</html>