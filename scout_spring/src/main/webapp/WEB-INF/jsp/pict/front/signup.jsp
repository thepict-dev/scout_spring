<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>	
<html lang="ko">
	<%@ include file="./include/head.jsp" %>
	<body>
		<%@ include file="./include/lnb.jsp" %>
		<%@ include file="./include/header.jsp" %>
	    <div class="contentsContainer">
	        <div class="formContainer">
	            <div class="joinContainer">
	                <div class="fomrTabContent signContainer">
	                    <form action="">
	                        <h2 class="subTitles" style="padding: 16px 0 0 24px;">가입정보</h2>
	                        <div class="basicInfo1 inputsPd">
	                            <div class="mainProfile">
	                                <img src="/front_img/profile.png" alt="프로필 이미지">
	                            </div>
	                            <div class="stackInputs">
	                                <div class="inputsContainer">
	                                    <div class="inputBox">
	                                        <p class="inputCaption">회원번호</p>
	                                        <input type="text" name="MEMBERNO" id="MEMBERNO" readonly placeholder="내용을 입력하세요…" class="lgThinInput">
	                                    </div>
	                                    <div class="inputBox">
	                                        <p class="inputCaption">회원구분</p>
	                                        <select name="MEMCLSCODE" id="MEMCLSCODE" class="smThinSelect">
	                                            <option value="1">개인</option>
	                                            <option value="2">법인</option>
	                                            <option value="3">단체</option>
	                                        </select>
	                                    </div>
	                                    <div class="inputBox">
	                                        <p class="inputCaption">회원등급</p>
	                                        <select name="MEMGRADECODE" id="MEMGRADECODE" class="lgThinSelect">
	                                            <option value="0">대원/지도자</option>
	                                            <option value="1">후원회원</option>
	                                            <option value="2">행사회원</option>
	                                        </select>
	                                    </div>
	                                </div>
	                                <div class="inputsContainer">
	                                    <div class="inputBox">
	                                        <p class="inputCaption">생년월일</p>
	                                        <input type="date" name="BIRTHDAY" id="BIRTHDAY" class="lgThinInput">
	                                    </div>
	                                    <div class="inputBox">
	                                        <p class="inputCaption">전종여부</p>
	                                        <select name="LEADER" id="LEADER" class="smThinSelect">
	                                            <option value="N">-</option>
	                                            <option value="Y">전종</option>
	                                        </select>
	                                    </div>
	                                    <div class="inputBox">
	                                    <!-- 여기 -->
	                                        <p class="inputCaption">홈페이지 ID</p>
	                                        <input type="text" name="USERNAME" id="USERNAME" placeholder="내용을 입력하세요…" class="lgThinInput">
	                                    </div>
	                                </div>
	                                <div class="inputsContainer">
	                                    <div class="inputBox">
	                                        <p class="inputCaption">성명(한글)</p>
	                                        <input type="text"  name="KNAME" id="KNAME" placeholder="내용을 입력하세요…" class="lgThinInput">
	                                    </div>
	                                    <div class="inputBox">
	                                        <p class="inputCaption">성명(영문)</p>
	                                        <input type="text"  name="ENAME" id="ENAME" placeholder="내용을 입력하세요…" class="lgThinInput">
	                                    </div>
	                                    <div class="inputBox genderContainer">
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
	                        <div class="inputsContainer inputsPd_">
	                            <div class="inputBox">
	                                <p class="inputCaption">집전화</p>
	                                <input type="text" name="MOBILE" id="MOBILE" placeholder="내용을 입력하세요…" class="lgThinInput">
	                            </div>
	                            <div class="inputBox">
	                                <p class="inputCaption">휴대전화</p>
	                                <input type="text" name="MOBILE" id="MOBILE" placeholder="내용을 입력하세요…" class="lgThinInput">
	                            </div>
	                            <div class="inputBox">
	                                <p class="inputCaption">이메일</p>
	                                <input type="text" name="EMAIL" id="EMAIL" placeholder="내용을 입력하세요…" class="lgThinInput">
	                            </div>
	                            <div class="inputBox">
	                                <p class="inputCaption">수신여부</p>
	                                <div class="recive">
	                                    <input type="checkbox" name="SMSYN" id="SMSYN"><label for="SMSYN">SMS</label>
	                                    <input type="checkbox" name="EMAILYN" id="EMAILYN"><label for="EMAILYN">EMAIL</label>
	                                </div>
	                            </div>
	                            <div class="inputBox">
	                                <p class="inputCaption">직업</p>
	                                <select name="JOBCODE" id="JOBCODE" class="lgThinSelect">
		                                <option value="">선택하세요.</option>
										<c:forEach var="job_list" items="${job_list}" varStatus="status">
	                                    	<option value="${job_list.JOBCODE}">${job_list.JOBNAME}</option>	
	                                   	</c:forEach>
	                                </select>
	                            </div>
	                        </div>
	                        <div class="inputsContainer inputsPd_">
	                            <div class="inputBox">
	                                <p class="inputCaption">집주소</p>
	                                <div class="zip">
	                                    <input type="text" name="HPOSTCODE" id="HPOSTCODE" readonly class="lgThinInput">
	                                    <a href="#lnk" class="normalButton white">우편번호 검색</a>
	                                </div>
	                                <input type="text" name="HADDR" id="HADDR" readonly class="lgThinInput post">
	                            </div>
	                        </div>
	                        <div class="tableButtons inputsPd bottomBd" style="justify-content: flex-end;">
	                            <div class="buttons">
	                                <a href="#lnk" class="smButton"><img src="/front_img/sign.png" alt="">등록하기</a>
	                            </div>
	                        </div>
	                    </form>
	                </div>
	            </div>
	        </div>
	    </div>
	</body>
</html>