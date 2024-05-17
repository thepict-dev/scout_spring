<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>	
<html lang="ko">
	<%@ include file="./include/head.jsp" %>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<body>
		<%@ include file="./include/lnb.jsp" %>
		<%@ include file="./include/header.jsp" %>
	    <div class="contentsContainer">
	        <div class="formContainer">
	            <div class="joinContainer">
	                <div class="fomrTabContent signContainer">
	                    <form action="" id="register_org" name="register_org" method="post" enctype="multipart/form-data">
	                        <h2 class="subTitles" style="padding: 16px 24px 0 24px;">기본정보</h2>
	                        <div class="stackInputs bottomBd" style="padding: 12px 24px 16px 24px;">
	                            <div class="inputsContainer">
	                                <div class="inputBox">
	                                    <p class="inputCaption">연맹/지구</p>
	                                    <div class="inputsAlign">
				                            <select name="associationcode_org" id="associationcode_org" class="lgThinSelect"  onchange="fn_get_parentorgno()">
				                                <c:forEach var="association_list" items="${association_list}" varStatus="status">
				                                	<option value="${association_list.ASSOCIATIONCODE}"> ${association_list.ASSOCIATIONNAME}</option>
				                                </c:forEach>
				                            </select>
	                                        <select name="" id="" class="smThinSelect">
	                                            <option value="">지구 선택</option>
	                                        </select>
	                                    </div>
	                                </div>
	                                <div class="inputBox">
	                                    <p class="inputCaption">등급</p>
	                                    <select name="" id="" class="lgThinSelect">
	                                        <option value="1"></option>
	                                        <option value="2"></option>
	                                        <option value="3"></option>
	                                    </select>
	                                </div>
	                                <div class="inputBox">
	                                    <p class="inputCaption">단위대 구분</p>
	                                    <div class="inputsAlign">
	                                        <select name="" id="" class="lgThinSelect">
	                                            <option value="1">중앙본부</option>
	                                        </select>
	                                        <select name="" id="" class="lgThinSelect">
	                                            <option value="">-</option>
	                                        </select>
	                                    </div>
	                                </div>
	                                <div class="inputBox">
	                                    <p class="inputCaption">스카우트 구분</p>
	                                    <select name="" id="" class="lgThinSelect">
	                                        <option value="1"></option>
	                                        <option value="2"></option>
	                                        <option value="3"></option>
	                                    </select>
	                                </div>
	                            </div>
	                            <div class="inputsContainer">
	                                <div class="inputBox">
	                                    <p class="inputCaption">대번호</p>
	                                    <div class="inputsAlign">
	                                        <input type="text"  name="" id="" placeholder="내용을 입력하세요…" class="smThinInput">
	                                        <a href="#lnk" class="smButton bigWhiteBtn">조회</a>
	                                    </div>
	                                </div>
	                                <div class="inputBox">
	                                    <p class="inputCaption">결성일</p>
	                                    <input type="date" name="" id="" value="${pictVO.search_birthday}" class="lgThinInput">
	                                </div>
	                            </div>
	                            <div class="inputsContainer">
	                                <div class="inputBox">
	                                    <p class="inputCaption">영문명</p>
	                                    <input type="text"  name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
	                                </div>
	                            </div>
	                            <div class="inputsContainer">
	                                <div class="inputBox">
	                                    <p class="inputCaption">단위대명</p>
	                                    <div class="inputsAlign">
	                                        <input type="text"  name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
	                                        <a href="#lnk" class="smButton bigWhiteBtn">조회</a>
	                                    </div>
	                                </div>
	                                <div class="inputBox">
	                                    <p class="inputCaption">관할교육청</p>
                                		<span class="bindingText"></span>
	                                </div>
	                            </div>
	                            <div class="inputsContainer">
	                                <div class="inputBox">
	                                    <p class="inputCaption">집주소</p>
	                                    <div class="zip">
	                                        <input type="text" name="HPOSTCODE" id="HPOSTCODE" readonly class="lgThinInput">
	                                        <a href="#lnk" class="normalButton white">우편번호 검색</a>
	                                    </div>
	                                    <input type="text" name="get_post" id="get_post" class="lgThinInput post">
	                                </div>
	                            </div>
	                            <div class="inputsContainer">
	                                <div class="inputBox">
	                                    <p class="inputCaption">전화</p>
	                                    <input type="text"  name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
	                                </div>
	                                <div class="inputBox">
	                                    <p class="inputCaption">팩스</p>
	                                    <input type="text"  name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
	                                </div>
	                            </div>
	                            <div class="inputsContainer">
	                                <div class="inputBox">
	                                    <p class="inputCaption">비고</p>
	                                    <textarea name="" id="" cols="100"></textarea>
	                                </div>
	                            </div>
		                        <div class="tableButtons inputsPd" style="justify-content: flex-end;">
		                            <div class="buttons">
		                                <a href="#lnk" onclick="fn_submit()" class="smButton"><img src="/front_img/sign.png" alt="">등록하기</a>
		                            </div>
		                        </div>
	                        </div>
	                    </form>
	                </div>
	            </div>
	        </div>
	    </div>
	</body>
	<script>
		function fn_submit(){
		
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
</html>