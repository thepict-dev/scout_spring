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
        <form action="" id="search_fm_memberno" name="search_fm_memberno" method="get" class="searchForm">
            <div class="searchContainer">
                <p class="inputCaption">조회조건</p>
                <select name="search" id="search" class="lgSelect">
                    <option value="1">선택하세요</option>
                </select>
            </div>
            <div class="searchContainer">
                <p class="inputCaption">회원번호</p>
                <input type="text" class="lgInput" name="search_memberno_se" id="search_memberno_se" value="${pictVO.search_memberno_se}" onkeypress="if(event.keyCode == 13){search_list();}" placeholder="내용을 입력하세요…">
            </div>
        </form>
        <div class="formContainer">
            <div class="left">
                <div class="wholeInquiry">
                    <h2 class="subTitles">통합조회</h2>
                    <form action="" id="search_fm" name="search_fm" method="get">
	            		<input type="hidden" id="search_memberno" name="search_memberno" value="${pictVO.search_memberno}"/>
                        <div class="inputsContainer">
                            <div class="inputBox">
                                <p class="inputCaption">법정생년</p>
                                <input type="date" name="search_birthday" id="search_birthday" value="${pictVO.search_birthday}" class="lgThinInput">
                            </div>
                            <div class="inputBox">
                                <p class="inputCaption">가입이력</p>
                                <select name="search_history" id="search_history" class="lgThinSelect">
                                    <option value="" <c:if test="${pictVO.search_history eq ''}">selected</c:if>>선택하세요.</option>
	                                <option value="1" <c:if test="${pictVO.search_history eq '1'}">selected</c:if>>대원</option>
	                                <option value="2" <c:if test="${pictVO.search_history eq '2'}">selected</c:if>>지도자</option>
	                                <option value="3" <c:if test="${pictVO.search_history eq '3'}">selected</c:if>>평생회원</option>
                                </select>
                            </div>
                        </div>
                        <div class="inputsContainer mt20">
                            <div class="inputBox">
                                <p class="inputCaption">성명</p>
                                <input type="text" name="search_kname" id="search_kname" value="${pictVO.search_kname}" class="lgThinInput">
                            </div>
                            <div class="inputBox">
                                <p class="inputCaption">회원구분</p>
                                <select name="search_memclscode" id="search_memclscode" class="smThinSelect">
                                    <option value="1" <c:if test="${pictVO.search_memclscode eq '1'}">selected</c:if>>개인</option>
	                                <option value="2" <c:if test="${pictVO.search_memclscode eq '2'}">selected</c:if>>법인</option>
	                                <option value="3" <c:if test="${pictVO.search_memclscode eq '3'}">selected</c:if>>단체</option>
                                </select>
                            </div>
                            <div class="inputBox">
                                <p class="inputCaption">회원등급</p>
                                <select name="search_memgradecode" id="search_memgradecode" class="smThinSelect">
                                    <option value="" <c:if test="${pictVO.search_memgradecode eq ''}">selected</c:if>>대원/지도자</option>
	                                <option value="1" <c:if test="${pictVO.search_memgradecode eq '1'}">selected</c:if>>행사회원</option>
	                                <option value="2" <c:if test="${pictVO.search_memgradecode eq '2'}">selected</c:if>>후원회원</option>
                                </select>
                            </div>
                        </div>
                        <div class="inputsContainer mt20">
                            <div class="inputBox">
                                <p class="inputCaption">등록시작일</p>
                                <input type="date" id="search_start" name="search_start" value="${pictVO.search_start}" class="lgThinInput"/>
                            </div>
                            <div class="inputBox period">
                                <p class="inputCaption">등록마감일</p>
                                <input type="date" id="search_end" name="search_end" value="${pictVO.search_end}" class="lgThinInput"/>
                                <!-- 여 -->
                                <label for="whole_period" class="wholeCheck">
                                    <input type="radio" name="whole_period" id="whole_period">
                                    <span>전체</span>
                                </label>
                            </div>
                        </div>
                        <div class="btnContainer">
                        	<!-- 여기 -->
                            <a href="#lnk" class="basicButton white" onclick="search_reset()"><img src="/front_img/reset.png" alt="">화면 초기화</a>
                            <a href="#lnk" class="basicButton purple" onclick="search_list()"><img src="/front_img/search.png" alt="">조회</a>
                        </div>
                    </form>
                </div>
                <div class="tableContainer">
                    <h2 class="subTitles">조회 결과</h2>
                    <div class="tableWrapper">
                        <table>
                            <colgroup>
                                <col width="13.5%" />
                                <col width="8%" />
                                <col width="14.5%" />
                                <col width="12.5%" />
                                <col width="10.5%" />
                                <col width="10%" />
                                <col width="10%" />
                                <col width="12%" />
                                <col width="10%" />
                            </colgroup>
                            <thead>
                                <tr>
	                                <th>회원번호</th>
	                                <th>회원명</th>
	                                <th>법정생년월일</th>
	                                <th>회원구분</th>
	                    			<th>회원등급</th>
	                                <th>대원여부</th>
	                                <th>지도자여부</th>
	                                <th>평생회원여부</th>
	                                <th>전종여부</th>
                                </tr>
                            </thead>
                            <tbody>
	                			<c:forEach var="resultList" items="${resultList}" varStatus="status">
	                                <tr onclick="fn_info('${resultList.MEMBERNO}', '${resultList.KNAME}', '${resultList.TROOPSCOUTY}', '${resultList.TROOPLEADERY}')" style="cursor: pointer;">
	                                    <td>${resultList.MEMBERNO}</td>
	                                    <td>${resultList.KNAME}</td>
	                         			<td>${resultList.BIRTHDAY}</td>
	                                    <td>
				                         	<c:if test='${resultList.MEMCLSCODE eq "1"}'>개인</c:if>
				                         	<c:if test='${resultList.MEMCLSCODE eq "2"}'>법인</c:if>
				                         	<c:if test='${resultList.MEMCLSCODE eq "3"}'>단체</c:if>
	                                    </td>
	                                    <td>
				                         	<c:choose>
					                         	<c:when test='${resultList.MEMGRADECODE eq "1"}'>행사회원</c:when>
					                         	<c:when test='${resultList.MEMGRADECODE eq "2"}'>후원회원</c:when>
					                         	<c:otherwise>
					                         		대원/지도자
					                         	</c:otherwise>
				                         	</c:choose>
	                                    </td>
	                                    <td>
				                         	<c:if test='${resultList.TROOPSCOUTY eq "Y"}'>Y</c:if>
				                         	<c:if test='${resultList.TROOPSCOUTY ne "Y"}'>N</c:if>
	                                    </td>
	                                    <td>
				                         	<c:if test='${resultList.TROOPLEADERY eq "Y"}'>Y</c:if>
				                         	<c:if test='${resultList.TROOPLEADERY ne "Y"}'>N</c:if>
	                                    </td>
	                                    <td>
				                         	<c:if test='${resultList.LIFE eq "Y"}'>Y</c:if>
				                         	<c:if test='${resultList.LIFE ne "Y"}'>N</c:if>
	                                    </td>
	                                    <td>
				                         	<c:if test='${resultList.EMPLOYEEY eq "Y"}'>Y</c:if>
				                         	<c:if test='${resultList.EMPLOYEEY ne "Y"}'>N</c:if>
	                                    </td>
	                                </tr>
	                    		</c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="tableButtons">
                        <p>${resultListCnt }<span>rows</span></p>
                        <div class="buttons">
                            <a href="#lnk" class="smButton"><img src="/front_img/download.png" alt="">엑셀저장</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="resizer" id="dragMe"></div>
            <div class="right">
                <ul class="formTabNav">
                    <li class="active">기본정보</li>
                    <li>추가정보</li>
                </ul>
                <div class="fomrTabContent active">
                    <form action="" id="register" name="register" method="post" enctype="multipart/form-data">
                        <h2 class="subTitles" style="padding: 16px 0 0 24px;">기본정보</h2>
                        <div class="basicInfo1 inputsPd">
                            <div class="mainProfile">
                            <label for="imgUpload">
                                <img src="/front_img/profile.png" alt="프로필 이미지" class="profileImg">
						    </label>
                            <input type="file" class="imgUpload" id="imgUpload" accept="image/*" >
                            </div>
                            <div class="stackInputs">
                                <div class="inputsContainer">
                                    <div class="inputBox">
                                        <p class="inputCaption">회원번호</p>
                                        <input type="hidden" name="idx" id="idx" readonly>
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
                                        <select name="EMPLOYEEY" id="EMPLOYEEY" class="smThinSelect">
                                            <option value="N">-</option>
                                            <option value="Y">전종</option>
                                        </select>
                                    </div>
                                    <!-- 
                                    <div class="inputBox">
                                        <p class="inputCaption">홈페이지 ID</p>
                                        <input type="text" name="USERNAME" id="USERNAME" placeholder="내용을 입력하세요…" class="lgThinInput">
                                    </div>
                                     -->
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
                                <input type="text" name="HTELNO" id="HTELNO" placeholder="내용을 입력하세요…" class="lgThinInput">
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
                                    <a href="#lnk" class="normalButton white" id="searchZip">우편번호 검색</a>
                                </div>
                                <div class="zip2">
	                                <input type="text" name="HADDR" id="HADDR" class="lgThinInput post">
                            	</div>
                            </div>
                        </div>
                        <div class="tableButtons inputsPd bottomBd" style="justify-content: flex-end;">
                            <div class="buttons">
                                <a href="#lnk" class="smButton"><img src="/front_img/sms.png" alt="">SMS</a>
                                <a href="#lnk" class="smButton"><img src="/front_img/email.png" alt="">이메일</a>
                                <a href="#lnk" class="smButton" onclick="person_save()"><img src="/front_img/download.png" alt="">저장</a>
                                <a href="#lnk" class="smButton"><img src="/front_img/reset.png" alt="">화면 초기화</a>
                            </div>
                        </div>
                        <div class="inputsContainer inputsPd bottomBd">
                            <div class="inputBox">
                                <p class="inputCaption">지도자단체</p>
                                <input type="text" name="" id="" readonly class="lgThinInput">
                            </div>
                            <div class="inputBox">
                                <p class="inputCaption">승진 가산점</p>
                                <input type="text" name="LEADERSCORE" id="LEADERSCORE" class="smThinInput">
                            </div>
                            <div class="inputBox">
                                <p class="inputCaption">훈련과정</p>
                                <input type="text" name="" id="" readonly class="lgThinInput">
                            </div>
                            <div class="inputBox">
                                <p class="inputCaption">자격증</p>
                                <input type="text" name="" id="" readonly class="lgThinInput">
                            </div>
                            <div class="inputBox">
                                <p class="inputCaption">평생회원</p>
                                <input type="text" name="" id="" readonly class="lgThinInput">
                            </div>
                            <div class="tableButtons" style="justify-content: flex-end;">
                                <div class="buttons">
                                    <a href="#lnk" class="smButton relationBtn"><img src="/front_img/modify.png" alt="">수정</a>
                                </div>
                            </div>
                        </div>
                        <div class="inputsContainer inputsPd bottomBd">
                            <div class="inputBox">
                                <p class="inputCaption">대원학교</p>
                                <input type="text" name="group" id="group" readonly readonly class="lgThinInput">
                            </div>
                            <div class="inputBox">
                                <p class="inputCaption">학년</p>
                                <input type="text" name="SCOUTSCHOOLYEAR" id="SCOUTSCHOOLYEAR" class="smThinInput">
                            </div>
                            <div class="inputBox">
                                <p class="inputCaption">반</p>
                                <input type="text" name="SCOUTSCHOOLBAN" id="SCOUTSCHOOLBAN" class="smThinInput">
                            </div>
                            <div class="inputBox">
                                <p class="inputCaption">대원 진보</p>
                                <input type="text" name="" id="" readonly class="lgThinInput">
                            </div>
                            <div class="inputBox">
                                <p class="inputCaption">대원 기능장</p>
                                <input type="text" name="" id="" readonly class="lgThinInput">
                            </div>
                            <div class="tableButtons" style="justify-content: flex-end;">
                                <div class="buttons">
                                    <a href="#lnk" class="smButton relationBtn"><img src="/front_img/search2.png" alt="">학교/단체찾기</a>
                                </div>
                            </div>
                        </div>
                        <!-- 
                        <div class="inputsContainer inputsPd bottomBd">
                            <div class="inputBox">
                                <p class="inputCaption">등록</p>
                                <input type="text" name="" id="" readonly readonly class="lgThinInput">
                            </div>
                            <div class="inputBox">
                                <p class="inputCaption">수정</p>
                                <input type="text" name="" id="" readonly readonly class="lgThinInput">
                            </div>
                        </div>
                         -->
                        <div class="tableTab bottomBd">
                            <ul class="historyNav">
                                <li class="active">대원 가입 이력</li>
                                <li>지도자 가입 이력</li>
                            </ul>
                            <div class="tableContainer historyContent active">
                                <div class="tableWrapper">
                                    <table>
                                        <colgroup>
                                            <col width="2.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="6.5%" />
                                            <col width="6.5%" />
                                            <col width="4.5%" />
                                            <col width="2.5%" />
                                            <col width="2.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="6.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                        </colgroup>
                                        <thead id="div_scout">
                                            <tr>
                                                <th>No</th>
                                                <th>구분</th>
                                                <th>년도</th>
                                                <th>연맹</th>
                                                <th>연합회</th>
                                                <th>단위대</th>
                                                <th>학교</th>
                                                <th>학년</th>
                                                <th>반</th>
                                                <th>연맹지(부수)</th>
                                                <th>정산대상</th>
                                                <th>승인</th>
                                                <th>납부</th>
                                                <th>등록일</th>
                                                <th>승인신청</th>
                                                <th>납부이력</th>
                                                <th>직책</th>
                                                <th>스카우트구분</th>
                                                <th>등록비</th>
                                                <th>월간지</th>
                                                <th>보험료</th>
                                                <th>회원기간</th>
                                            </tr>
                                        </thead>
	                					<tbody id="scout_list"></tbody>
                                    </table>
                                </div>
                                <div class="tableButtons">
                                    <p id="year_cnt_scout">0 rows</p>
                                    <div class="buttons">
                                        <a href="#lnk" class="smButton"><img src="/front_img/add.png" alt="">추가</a>
                                        <a href="#lnk" class="smButton"><img src="/front_img/modify.png" alt="">수정</a>
                                        <a href="#lnk" class="smButton"><img src="/front_img/reset.png" alt="">삭제</a>
                                        <a href="#lnk" class="smButton"><img src="/front_img/download.png" alt="">엑셀저장</a>
                                    </div>
                                </div>
                            </div>
                            <div class="tableContainer historyContent">
                                <div class="tableWrapper" id="div_leader">
                                    <table>
                                        <colgroup>
                                            <col width="2.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="6.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                            <col width="4.5%" />
                                        </colgroup>
                                        <thead id="div_leader">
                                            <tr>
                                                <th>No</th>
                                                <th>지도자지도여부</th>
                                                <th>년도</th>
                                                <th>연맹</th>
                                                <th>연합회</th>
                                                <th>단위대</th>
                                                <th>직책1</th>
                                                <th>직책2</th>
                                                <th>학교</th>
                                                <th>연맹지(부수)</th>
                                                <th>정산대상</th>
                                                <th>승인</th>
                                                <th>납부</th>
                                                <th>등록일</th>
                                                <th>승인신청</th>
                                                <th>납부이력</th>
                                                <th>학교직책</th>
                                                <th>등록비</th>
                                                <th>월간지</th>
                                                <th>격월간지</th>
                                                <th>보험료</th>
                                                <th>회원기간</th>
                                            </tr>
                                        </thead>
                                        <tbody id="leader_list"></tbody>
                                    </table>
                                </div>
                                <div class="tableButtons">
                                    <p id="year_cnt_leader">0 rows</p>
                                    <div class="buttons">
                                        <a href="#joinPopup" class="smButton joinBtn"><img src="/front_img/add.png" alt="">추가</a>
                                        <a href="#lnk" class="smButton"><img src="/front_img/modify.png" alt="">수정</a>
                                        <a href="#lnk" class="smButton"><img src="/front_img/reset.png" alt="">삭제</a>
                                        <a href="#lnk" class="smButton"><img src="/front_img/download.png" alt="">엑셀저장</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tableContainer relationContainer">
                            <h2 class="subTitles">관계연결</h2>
                            <div class="tableWrapper">
                                <table>
                                    <colgroup>
                                        <col width="20%" />
                                        <col width="20%" />
                                        <col width="20%" />
                                        <col width="40%" />
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th>회원번호</th>
                                            <th>회원명</th>
                                            <th>관계</th>
                                            <th>비고</th>
                                        </tr>
                                    </thead>
                                    <tbody id="main_relation">
                                        
                                    </tbody>
                                </table>
                            </div>
                            <div class="tableButtons" style="justify-content: flex-end;">
                                <div class="buttons">
                                    <a href="#relationPopup" onclick="fn_relation_info()" class="smButton relationBtn"><img src="/front_img/modify.png" alt="">수정</a>
                                </div>
                            </div>
                        </div>
                        <div class="tableContainer infoTableContainer">
                            <h2 class="subTitles">가입정보</h2>
                            <div class="tableWrapper">
                                <table>
                                    <colgroup>
                                        <col width="10%" />
                                        <col width="40%" />
                                        <col width="25%" />
                                        <col width="25%" />
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th>최초가입일</th>
                                            <th>총등록</th>
                                            <th>연공</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th style="white-space: nowrap;">대원</th>
                                            <td id="scout_date"></td>
                                            <td id="scout_whole_incnt"></td>
                                            <td id="scout_incnt"></td>
                                        </tr>
                                        <tr>
                                            <th style="white-space: nowrap;">지도자</th>
                                            <td id="leader_date"></td>
                                            <td id="leader_whole_incnt"></td>
                                            <td id="leader_incnt"></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!-- 
                            <div class="tableButtons" style="justify-content: flex-end;">
                                <div class="buttons">
                                    <a href="#lnk" class="smButton"><img src="/front_img/add.png" alt="">추가</a>
                                    <a href="#lnk" class="smButton"><img src="/front_img/modify.png" alt="">수정</a>
                                    <a href="#lnk" class="smButton"><img src="/front_img/reset.png" alt="">삭제</a>
                                    <a href="#lnk" class="smButton"><img src="/front_img/download.png" alt="">엑셀저장</a>
                                </div>
                            </div>
                             -->
                        </div>
                        <div class="tableButtons rightBtns topBd">
                        </div>
                    </form>
                </div>
                <!-- 추가정보 탭 -->
    			<%@ include file="./include/add_info.jsp" %>
            </div>
        </div>
    </div>
     <!-- 지도자 가입 모달 -->
	<%@ include file="./include/leader_modal.jsp" %>
     <!-- 관계연결 모달 -->
	<%@ include file="./include/relation_modal.jsp" %>
	
    <%@ include file="./include/loading.jsp" %>
    <%@ include file="./include/error_page.jsp" %>
    
    
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		function person_save(){
			var sex = "M"
			if(document.getElementById("SEX_W").checked) sex = "W";
			
			var param = {
				idx : $('#idx').val(),
				MEMBERNO : $('#MEMBERNO').val(),
				KNAME : $('#KNAME').val(),
				MEMCLSCODE : $('#MEMCLSCODE').val(),
				MEMGRADECODE : $('#MEMGRADECODE').val(),
				BIRTHDAY : $('#BIRTHDAY').val(),
				KNAME : $('#KNAME').val(),
				ENAME : $('#ENAME').val(),
				SEX : sex,
				HTELNO : $('#HTELNO').val(),
				MOBILE : $('#MOBILE').val(),
				EMAIL : $('#EMAIL').val(),
				SMSYN : document.getElementById("SMSYN").checked ? "Y" : "N",
				EMAILYN : document.getElementById("EMAILYN").checked ? "Y" : "N",
				JOBCODE : $('#JOBCODE').val(),
				HPOSTCODE : $('#HPOSTCODE').val(),
				HADDR : $('#HADDR').val(),
				EMPLOYEEY : $('#EMPLOYEEY').val(),
				
				LEADERSCORE : $('#LEADERSCORE').val(),
				SCOUTSCHOOLYEAR : $('#SCOUTSCHOOLYEAR').val(),
				SCOUTSCHOOLBAN : $('#SCOUTSCHOOLBAN').val(),
			}
			
			var text ="등록하시겠습니까?";
			if(confirm (text)){
				$('#initial-loading').css('display', 'flex')
				
				$.ajax({
					url : "/person_save"
					, type : "POST"
					, data : JSON.stringify(param)
					, contentType : "application/json"
					, async : true
					, success : function(data, status, xhr) {
						alert("정상적으로 저장되었습니다.")
						$('#initial-loading').css('display', 'none')
					},
					error : function(err){
						console.log("에러가 났어")
						console.log(err)
						$('#initial-loading').css('display', 'none')
						$('#error').css('display', 'flex')
					}
				})
				
			}
		}
	
	
		function search_reset(){
			$("#search_birthday").val("");
			
			$("#search_history option:eq('')").attr("selected", "selected");
			$("#search_kname").val("");
			$("#search_memclscode").val("1");
			$("#search_start").val("");
			$("#search_end").val("");
			$('#search_memgradecode').val("");
			
			$('.contentsContainer select').niceSelect('update')
			
		}
		function search_list_memberno(){
			$('#initial-loading').css('display', 'flex')
			$("#search_fm_memberno").attr("action", "/front/users");
			$("#search_fm_memberno").submit();
			$('#initial-loading').css('display', 'none')

		}
		function search_list(){
			$('#initial-loading').css('display', 'flex')
			$("#search_fm").attr("action", "/front/users");
			$("#search_fm").submit();
			$('#initial-loading').css('display', 'none')
		}
		function fn_info(memberno, kname, scouty, leadery){
			$('#initial-loading').css('display', 'flex')
			var param = {
				memberno : memberno,
				kname : kname,
				scouty : scouty,
				leadery : leadery,
			}

			
			$.ajax({
				url : "/get_per_info"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : true
				, success : function(data, status, xhr) {
					console.log(data)
					console.log("성공")
					$('#idx').val(data.info.idx)
					$('#MEMBERNO').val(data.info.memberno)
					$('#MEMCLSCODE').val(data.info.memclscode)//셀렉트
					
					
					var memgradecode = "";
					if(data.info.memgradecode == null || data.info.memgradecode == undefined || data.info.memgradecode == "null") memgradecode = "0"
					else memgradecode = data.info.memgradecode
					
					$('#BIRTHDAY').val(data.info.birthday)
					
					$('#KNAME').val(data.info.kname)
					$('#ENAME').val(data.info.ename)
					
					$("#EMPLOYEEY").val(data.info.employeey).prop("selected", true);
					
					$("#MEMGRADECODE").val(memgradecode).prop("selected", true);
					$("#EMPLOYEEY").val(data.info.employeey).prop("selected", true);
			
					
					$('.contentsContainer select').niceSelect('update')
					
					if(data.info.sex == "M") $(":radio[id='SEX_M']").attr("checked", true);
					else $(":radio[id='SEX_W']").attr("checked", true);
					
					$("#HTELNO").val(data.info.htelno)
					$("#MOBILE").val(data.info.mobile)
					$("#EMAIL").val(data.info.email)
					$("#HPOSTCODE").val(data.info.hpostcode)
					$("#HADDR").val(data.info.haddr)
					$("#JOBCODE").val(data.info.jobcode)
					
					
					$('#LEADERSCORE').val(data.info.leaderscore)
					$('#SCOUTSCHOOLYEAR').val(data.info.scoutschoolyear)
					$('#SCOUTSCHOOLBAN').val(data.info.scoutschoolban)
					
					
					
					if(data.info.smsyn == "Y") $("input:checkbox[id=SMSYN]").attr("checked", true);
					if(data.info.emailyn == "Y") $("input:checkbox[id=EMAILYN]").attr("checked", true);
					
					
					var html ="";
					var relation_html = "";
					var arr = data.list;
					var relation_arr = data.relation_list;
					$('#leader_list').children().remove();
					$('#scout_list').children().remove();
					$('#main_relation').children().remove();
					$('#relation_list').children().remove();
					
					
					
					//연공이력 개수
					$('#year_cnt_leader').text('0 rows')
					$('#year_cnt_scout').text('0 rows')
					
					
					//가입정보 초기화
					$('#leader_date').text("")
					$('#leader_whole_incnt').text("")
					$('#leader_incnt').text("")
					$('#scout_date').text("")
					$('#scout_whole_incnt').text("")
					$('#scout_incnt').text("")
					
					
					
					if(leadery == 'Y'){//지도자일경우
						//가입정보 기입
						$('#leader_date').text(data.info.enterdate)
						$('#leader_whole_incnt').text(arr.length)
						$('#leader_incnt').text(data.info.leaderincnt)
						
						
						$('#year_cnt_leader').text(arr.length + " rows")
						for(var i=0; i<arr.length; i++){
							html += '<tr>'+
								'<td>' + Number(i+1) + '</td>' +
								'<td>' + arr[i].adminy + '</td>'+
								'<td>' + arr[i].year + '</td>'+
								'<td>' + arr[i].associationname + '</td>'+
								'<td>' + arr[i].troopname + '</td>'+
								'<td>' + arr[i].unity + '</td>'+
								'<td>' + arr[i].leaderposition + '</td>'+
								'<td>' + arr[i].leaderpositionname + '</td>'+
								'<td>' + arr[i].orgname  + '</td>'+
								'</tr>';
						}
						$('#leader_list').append(html)
						
					}
					else{//대원일경우
						$('#scout_date').text(data.info.enterdate)
						$('#scout_whole_incnt').text(arr.length)
						$('#scout_incnt').text(data.info.scoutincnt)
						$('#year_cnt_scout').text(arr.length + " rows")
						for(var i=0; i<arr.length; i++){
							html += '<tr>'+
								'<td>' + Number(i+1) + '</td>' +
								'<td>' + arr[i].year + '</td>'+
								'<td>' + arr[i].associationname + '</td>'+
								'<td>' + arr[i].unity + '</td>'+
								'<td>' + arr[i].troopname + '</td>'+
								'<td>' + arr[i].orgname + '</td>'+
								'<td>' + arr[i].orgclsname + '</td>'+
								'<td>' + arr[i].scoutschoolyear + '</td>'+
								'</tr>';
							
						}
						$('#scout_list').append(html)
					}
					//관계연결
					var relation_popup = ""
					for(var i=0; i<relation_arr.length; i++){
						relation_html += '<tr>'+
						'<td>' + relation_arr[i].relationinfo.split(',')[0] + '</td>' +
						'<td>' + relation_arr[i].relationinfo.split(',')[1] + '</td>'+
						'<td>' + relation_arr[i].relationname1 + '</td>'+
						'<td>' + relation_arr[i].bigo + '</td>'+
						'</tr>'
						
						relation_popup += '<tr>'+
						'<td>' + relation_arr[i].relationcode + '</td>' +
						'<td>' + relation_arr[i].relationname1 + '</td>'+
						'<td>' + relation_arr[i].relationinfo.split(',')[1] + '</td>'+
						'<td>' + relation_arr[i].relationinfo.split(',')[2] + '</td>'+
						'<td>' + relation_arr[i].relationinfo.split(',')[4] + '</td>'+
						'<td>' + relation_arr[i].relationinfo.split(',')[3] + '</td>'+
						'</tr>'
					
					}
					
					$('#main_relation').append(relation_html)
					$('#relation_list').append(relation_popup)
					
					$('#initial-loading').css('display', 'none')
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
					//지현이 에러
					$('#initial-loading').css('display', 'none')
				}
			})
	
		}
		
		// 팝업 열기
		$(document).on("click", ".btn-open", function (e){
			let target = $(this).attr("href");
			$(target).addClass("active");
		});

		// 외부영역 클릭 시 팝업 닫기
		$(document).mouseup(function (e){
			let LayerPopup = $(".layer-popup");
			if(LayerPopup.has(e.target).length === 0){
				LayerPopup.removeClass("active");
			}
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
	</script>
</body>
</html>