<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="fomrTabContent">
	<div class="addContainer">
	    <ul class="addNav">
	        <li class="active">부가정보</li>
	        <li>행사참가관련</li>
	        <li>임원이력</li>
	        <li>대원진보</li>
	        <li>지도자조직/직책이력</li>
	        <li>훈련/자격</li>
	        <li>활동기록</li>
	        <li>봉사기록</li>
	        <li>포상기록</li>
	    </ul>
	    <!-- 부가정보 -->
	    <div class="addContent active">
	        <form action="">
		   		<div class="addTableBack">
		            <div class="inputsContainer">
		                <div class="inputBox">
		                    <p class="inputCaption">보호자성명</p>
		                    <input type="text" name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
		                </div>
		                <div class="inputBox">
		                    <p class="inputCaption">보호자 휴대전화</p>
		                    <input type="text" name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
		                </div>
		            </div>
		            <div class="inputsContainer mt20">
		                <div class="inputBox">
		                    <p class="inputCaption">최종학력</p>
		                    <select name="" id="" class="lgThinSelect">
		                        <option value="1">대원</option>
		                        <option value="2">지도자</option>
		                        <option value="3">평생회원</option>
		                    </select>
		                </div>
		                <div class="inputBox">
		                    <p class="inputCaption">최종학교명</p>
		                    <input type="text" name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
		                </div>
		                <div class="inputBox">
		                    <p class="inputCaption">전공/학과</p>
		                    <input type="text" name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
		                </div>
		            </div>
		            <div class="inputsContainer mt20">
		                <div class="inputBox">
		                    <p class="inputCaption">직장명</p>
		                    <input type="text" name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
		                </div>
		                <div class="inputBox">
		                    <p class="inputCaption">직장직책</p>
		                    <input type="text" name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
		                </div>
		                <div class="inputBox">
		                    <p class="inputCaption">직장전화</p>
		                    <input type="text" name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
		                </div>
		                <div class="inputBox">
		                    <p class="inputCaption">팩스번호</p>
		                    <input type="text" name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
		                </div>
		                <div class="inputBox">
		                    <p class="inputCaption">직장주소</p>
		                    <div class="zip">
		                        <input type="text" name="HPOSTCODE" id="HPOSTCODE" readonly class="lgThinInput">
		                        <a href="#lnk" class="normalButton white">우편번호 검색</a>
		                    </div>
		                    <input type="text" name="get_post" id="get_post" readonly class="lgThinInput post">
		                </div>
		            </div>
		            <div class="inputsContainer mt20 pb16">
		                <div class="inputBox">
		                    <p class="inputCaption">결혼여부</p>
		                    <div class="marrige">
		                        <select name="" id="" class="smThinSelect">
		                            <option value="">선택하세요.</option>
		                            <option value="1">기혼</option>
		                            <option value="2">미혼</option>
		                        </select>
		                        <input type="date" name="" id="" class="lgThinInput">
		                    </div>
		                </div>
		            </div>
	            </div>
	            <div class="tableButtons addBtns topBd" style="padding: 12px 16px;">
	                <div class="buttons">
	                    <a href="#lnk" class="smButton"><img src="/front_img/modify.png" alt="">수정</a>
	                    <a href="#lnk" class="smButton"><img src="/front_img/download.png" alt="">저장</a>
	                </div>
	            </div>
	        </form>
	    </div>
	    <!-- 행사참가관련 -->
	    <div class="addContent">
	        <form action="">
		   		<div class="addTableBack">
		            <div class="inputsContainer">
		                <div class="inputBox">
		                    <p class="inputCaption">혈액형</p>
		                    <select name="" id="" class="smThinSelect">
		                        <option value="">선택하세요.</option>
		                        <option value="1">A</option>
		                        <option value="2">B</option>
		                        <option value="3">AB</option>
		                    </select>
		                </div>
		                <div class="inputBox">
		                    <p class="inputCaption">셔츠사이즈</p>
		                    <input type="text" name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
		                </div>
		                <div class="inputBox">
		                    <p class="inputCaption">종교</p>
		                    <select name="" id="" class="smThinSelect">
		                        <option value="">선택하세요.</option>
		                        <option value="1">불교</option>
		                        <option value="2">천주교</option>
		                        <option value="3">기독교</option>
		                    </select>
		                </div>
		            </div>
		            <div class="inputsContainer mt20">
		                <div class="inputBox">
		                    <p class="inputCaption">여권번호</p>
		                    <input type="text" name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
		                </div>
		                <div class="inputBox">
		                    <p class="inputCaption">유효기간</p>
		                    <input type="text" name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
		                </div>
		                <div class="inputBox">
		                    <p class="inputCaption">외국어능력</p>
		                    <input type="text" name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
		                </div>
		            </div>
		            <div class="inputsContainer mt20">
		                <div class="inputBox">
		                    <p class="inputCaption">개인병력</p>
		                    <input type="text" name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
		                </div>
		                <div class="inputBox">
		                    <p class="inputCaption">알러지</p>
		                    <input type="text" name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
		                </div>
		            </div>
		            <div class="inputsContainer mt20 pb16">
		                <div class="inputBox">
		                    <p class="inputCaption">비고</p>
		                    <textarea name="" id="" cols="100"></textarea>
		                </div>
		            </div>
	            </div>
	            <div class="tableButtons addBtns topBd" style="padding: 12px 16px;">
	                <div class="buttons">
	                    <a href="#lnk" class="smButton"><img src="/front_img/modify.png" alt="">수정</a>
	                    <a href="#lnk" class="smButton"><img src="/front_img/download.png" alt="">저장</a>
	                </div>
	            </div>
	        </form>
	    </div>
	    <!-- 임원이력 -->
	    <div class="addContent">
	        <form action="" class="tableContainer relationContainer addTable">
		   		<div class="addTableBack">
		            <div class="tableWrapper" style="margin-top: 0;">
		                <table>
		                    <colgroup>
		                        <col width="5%" />
		                        <col width="30%" />
		                        <col width="10%" />
		                        <col width="10%" />
		                        <col width="15%" />
		                        <col width="15%" />
		                        <col width="15%" />
		                    </colgroup>
		                    <thead>
		                        <tr>
		                            <th>No</th>
		                            <th>단위대</th>
		                            <th>임원분류1</th>
		                            <th>임원분류2</th>
		                            <th>임기</th>
		                            <th>비고</th>
		                            <th>등록일</th>
		                        </tr>
		                    </thead>
		                    <tbody>
		                        <tr>
		                            <td>1</td>
		                            <td>지도자</td>
		                            <td>년도</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                        </tr>
		                    </tbody>
		                </table>
		            </div>
	            </div>
	            <div class="tableButtons topBd" style="padding: 12px 16px;">
	                <p>0<span>rows</span></p>
	                <div class="buttons">
	                    <a href="#lnk" class="smButton"><img src="/front_img/add.png" alt="">추가</a>
	                    <a href="#lnk" class="smButton"><img src="/front_img/modify.png" alt="">수정</a>
	                    <a href="#lnk" class="smButton"><img src="/front_img/reset.png" alt="">삭제</a>
	                    <a href="#lnk" class="smButton"><img src="/front_img/download.png" alt="">엑셀저장</a>
	                </div>
	            </div>
	        </form>
	    </div>
	    <!-- 대원진보 -->
	    <div class="addContent">
	        <form action="" class="tableContainer relationContainer addTable max">
		   		<div class="addTableBack">
		            <div class="addSearch">
		                <select name="" id="" class="smThinSelect">
		                    <option value="">진보</option>
		                </select>
		                <a href="" class="smButton"><img src="/front_img/search2.png" alt="">조회</a>
		            </div>
		            <div class="tableWrapper">
		                <table>
		                    <colgroup>
		                        <col width="5%" />
		                        <col width="5%" />
		                        <col width="10%" />
		                        <col width="7%" />
		                        <col width="7%" />
		                        <col width="7%" />
		                        <col width="7%" />
		                        <col width="7%" />
		                        <col width="7%" />
		                        <col width="7%" />
		                        <col width="7%" />
		                    </colgroup>
		                    <thead>
		                        <tr>
		                            <th>No</th>
		                            <th>급위</th>
		                            <th>진급연맹</th>
		                            <th>진급일</th>
		                            <th>최종승인상태</th>
		                            <th>지사승인상태</th>
		                            <th>등록자</th>
		                            <th>등록일</th>
		                            <th>승인자</th>
		                            <th>승인일</th>
		                            <th>비고</th>
		                        </tr>
		                    </thead>
		                    <tbody>
		                        <tr>
		                            <td>1</td>
		                            <td>지도자</td>
		                            <td>년도</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                        </tr>
		                    </tbody>
		                </table>
		            </div>
	            </div>
	            <div class="tableButtons topBd" style="padding: 12px 16px;">
	                <p>0<span>rows</span></p>
	                <div class="buttons">
	                    <a href="#lnk" class="smButton"><img src="/front_img/add.png" alt="">추가</a>
	                    <a href="#lnk" class="smButton"><img src="/front_img/modify.png" alt="">수정</a>
	                    <a href="#lnk" class="smButton"><img src="/front_img/reset.png" alt="">삭제</a>
	                    <a href="#lnk" class="smButton"><img src="/front_img/download.png" alt="">엑셀저장</a>
	                </div>
	            </div>
	        </form>
	    </div>
	    <!-- 지도자조직/직책 -->
	    <div class="addContent">
	        <form action="" class="tableContainer relationContainer addTable">
		   		<div class="addTableBack">
		            <div class="addSearch">
		                <input type="date" name="" id="" class="lgThinInput"> -
		                <input type="date" name="" id="" class="lgThinInput"> 
		                <a href="" class="smButton"><img src="/front_img/search2.png" alt="">조회</a>
		            </div>
		            <div class="tableWrapper">
		                <table>
		                    <colgroup>
		                        <col width="10%" />
		                        <col width="10%" />
		                        <col width="10%" />
		                        <col width="15%" />
		                        <col width="10%" />
		                        <col width="10%" />
		                        <col width="10%" />
		                        <col width="10%" />
		                        <col width="10%" />
		                    </colgroup>
		                    <thead>
		                        <tr>
		                            <th>No</th>
		                            <th>회원번호</th>
		                            <th>회원명</th>
		                            <th>학교/단체명</th>
		                            <th>지도자직책명</th>
		                            <th>시작일</th>
		                            <th>마감일</th>
		                            <th>등록자</th>
		                            <th>등록일</th>
		                        </tr>
		                    </thead>
		                    <tbody>
		                        <tr>
		                            <td>1</td>
		                            <td>지도자</td>
		                            <td>년도</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                        </tr>
		                    </tbody>
		                </table>
		            </div>
	            </div>
	            <div class="tableButtons topBd" style="padding: 12px 16px;">
	                <p>0<span>rows</span></p>
	                <div class="buttons">
	                    <a href="#lnk" class="smButton"><img src="/front_img/add.png" alt="">추가</a>
	                    <a href="#lnk" class="smButton"><img src="/front_img/modify.png" alt="">수정</a>
	                    <a href="#lnk" class="smButton"><img src="/front_img/reset.png" alt="">삭제</a>
	                    <a href="#lnk" class="smButton"><img src="/front_img/download.png" alt="">엑셀저장</a>
	                </div>
	            </div>
	        </form>
	    </div>
	    <!-- 훈련/자격 -->
	    <div class="addContent">
	        <form action="" class="tableContainer relationContainer addTable max">
		   		<div class="addTableBack">
		            <div class="addSearch">
		                <select name="" id="" class="smThinSelect">
		                    <option value="">훈련과정</option>
		                </select>
		                <a href="" class="smButton"><img src="/front_img/search2.png" alt="">조회</a>
		            </div>
		            <div class="tableWrapper">
		                <table>
		                    <colgroup>
		                        <col width="5%" />
		                        <col width="10%" />
		                        <col width="10%" />
		                        <col width="10%" />
		                        <col width="10%" />
		                        <col width="10%" />
		                        <col width="10%" />
		                        <col width="10%" />
		                        <col width="10%" />
		                        <col width="15%" />
		                    </colgroup>
		                    <thead>
		                        <tr>
		                            <th>No</th>
		                            <th>훈련과정1</th>
		                            <th>훈련과정2</th>
		                            <th>수료일</th>
		                            <th>수료번호</th>
		                            <th>이수시간</th>
		                            <th>자격번호</th>
		                            <th>직무연수번호</th>
		                            <th>직무연수점수</th>
		                            <th>비고</th>
		                        </tr>
		                    </thead>
		                    <tbody>
		                        <tr>
		                            <td>1</td>
		                            <td>지도자</td>
		                            <td>년도</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                        </tr>
		                    </tbody>
		                </table>
		            </div>
	            </div>
	            <div class="tableButtons topBd" style="padding: 12px 16px;">
	                <p>0<span>rows</span></p>
	                <div class="buttons">
	                    <a href="#lnk" class="smButton"><img src="/front_img/add.png" alt="">추가</a>
	                    <a href="#lnk" class="smButton"><img src="/front_img/modify.png" alt="">수정</a>
	                    <a href="#lnk" class="smButton"><img src="/front_img/reset.png" alt="">삭제</a>
	                    <a href="#lnk" class="smButton"><img src="/front_img/download.png" alt="">엑셀저장</a>
	                </div>
	            </div>
	        </form>
	    </div>
	    <!-- 활동기록 -->
	    <div class="addContent">
	        <form action="" class="tableContainer relationContainer addTable max2">
		   		<div class="addTableBack">
		            <div class="addSearch">
		                <div class="addScroll">
		                    <div class="addSearchScroll">
		                        <select name="" id="" class="smThinSelect">
		                            <option value="">진보</option>
		                        </select>
		                        <input type="date" name="" id="" class="lgThinInput"> -
		                        <input type="date" name="" id="" class="lgThinInput"> 
		                        <input type="checkbox" name="wholeBongsa" id="wholeBongsa">
		                        <label for="wholeBongsa">전체</label>
		                    </div>
		                    <div class="addSearchScroll">
		                        <select name="" id="" class="smThinSelect">
		                            <option value="">진보</option>
		                        </select>
		                        <select name="" id="" class="smThinSelect">
		                            <option value="">진보</option>
		                        </select>
		                        <select name="" id="" class="smThinSelect">
		                            <option value="">진보</option>
		                        </select>
		                    <a href="" class="smButton"><img src="/front_img/search2.png" alt="">조회</a>
		                    </div>
		                </div>
		            </div>
		            <div class="tableWrapper">
		                <table>
		                    <colgroup>
		                        <col width="3%" />
		                        <col width="5%" />
		                        <col width="5%" />
		                        <col width="5%" />
		                        <col width="12%" />
		                        <col width="10%" />
		                        <col width="10%" />
		                        <col width="10%" />
		                        <col width="10%" />
		                        <col width="10%" />
		                        <col width="10%" />
		                        <col width="10%" />
		                    </colgroup>
		                    <thead>
		                        <tr>
		                            <th>
		                                <input type="checkbox" name="choice" id="checkAll">
		                                <label for="checkAll"></label>
		                            </th>
		                            <th>No</th>
		                            <th>행사번호</th>
		                            <th>수료여부</th>
		                            <th>행사명</th>
		                            <th>행사시작일</th>
		                            <th>행사마침일</th>
		                            <th>주관연맹</th>
		                            <th>지구연합회</th>
		                            <th>행사구분1</th>
		                            <th>행사구분2</th>
		                            <th>행사구분3</th>
		                        </tr>
		                    </thead>
		                    <tbody>
		                        <tr>
		                            <td>
		                                <input type="checkbox" name="choice" id="choice">
		                                <label for="choice"></label>
		                            </td>
		                            <td>1</td>
		                            <td>년도</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                        </tr>
		                        <tr>
		                            <td>
		                                <input type="checkbox" name="choice" id="choice">
		                                <label for="choice"></label>
		                            </td>
		                            <td>1</td>
		                            <td>년도</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                        </tr>
		                    </tbody>
		                </table>
		            </div>
	            </div>
	            <div class="tableButtons topBd" style="padding: 12px 16px;">
	                <p>0<span>rows</span></p>
	                <div class="buttons">
	                    <a href="#lnk" class="smButton"><img src="/front_img/add.png" alt="">추가</a>
	                    <a href="#lnk" class="smButton"><img src="/front_img/modify.png" alt="">수정</a>
	                    <a href="#lnk" class="smButton"><img src="/front_img/reset.png" alt="">삭제</a>
	                    <a href="#lnk" class="smButton"><img src="/front_img/download.png" alt="">엑셀저장</a>
	                    <a href="#lnk" class="smButton">활동내역인쇄</a>
	                </div>
	            </div>
	        </form>
	    </div>
	    <!-- 봉사기록 -->
	    <div class="addContent">
	        <form action="" class="tableContainer relationContainer addTable max3">
		   		<div class="addTableBack">
		            <div class="addSearch">
		                <div class="addScroll">
		                    <div class="addSearchScroll">
		                        <input type="date" name="" id="" class="lgThinInput"> -
		                        <input type="date" name="" id="" class="lgThinInput"> 
		                        <input type="checkbox" name="wholePeriod" id="wholePeriod">
		                        <label for="wholePeriod">전체</label>
		                    </div>
		                    <div class="addSearchScroll">
		                        <select name="" id="" class="smThinSelect">
		                            <option value="">진보</option>
		                        </select>
		                        <select name="" id="" class="smThinSelect">
		                            <option value="">진보</option>
		                        </select>
		                        <select name="" id="" class="smThinSelect">
		                            <option value="">진보</option>
		                        </select>
		                    <a href="" class="smButton"><img src="/front_img/search2.png" alt="">조회</a>
		                    </div>
		                </div>
		            </div>
		            <div class="tableWrapper">
		                <table>
		                    <colgroup>
		                        <col width="1%" />
		                        <col width="2%" />
		                        <col width="9%" />
		                        <col width="3%" />
		                        <col width="9%" />
		                        <col width="9%" />
		                        <col width="9%" />
		                        <col width="5%" />
		                        <col width="8%" />
		                        <col width="9%" />
		                        <col width="9%" />
		                        <col width="9%" />
		                        <col width="9%" />
		                        <col width="9%" />
		                    </colgroup>
		                    <thead>
		                        <tr>
		                            <th>
		                                <input type="checkbox" name="" id="">
		                                <label for=""></label>
		                            </th>
		                            <th>No</th>
		                            <th>행사번호</th>
		                            <th>행사명</th>
		                            <th>행사시작일</th>
		                            <th>행사마침일</th>
		                            <th>봉사직책</th>
		                            <th>개인봉사시간</th>
		                            <th>봉사번호</th>
		                            <th>주관연맹</th>
		                            <th>지구연합회</th>
		                            <th>행사구분1</th>
		                            <th>행사구분2</th>
		                            <th>행사구분3</th>
		                        </tr>
		                    </thead>
		                    <tbody>
		                        <tr>
		                            <td>
		                                <input type="checkbox" name="" id="">
		                                <label for=""></label>
		                            </td>
		                            <td>1</td>
		                            <td>년도</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                            <td>연맹</td>
		                        </tr>
		                    </tbody>
		                </table>
		            </div>
	            </div>
	            <div class="tableButtons topBd" style="padding: 12px 16px;">
	                <p>0<span>rows</span></p>
	                <div class="buttons">
	                    <a href="#lnk" class="smButton"><img src="/front_img/add.png" alt="">추가</a>
	                    <a href="#lnk" class="smButton"><img src="/front_img/modify.png" alt="">수정</a>
	                    <a href="#lnk" class="smButton"><img src="/front_img/reset.png" alt="">삭제</a>
	                    <a href="#lnk" class="smButton"><img src="/front_img/download.png" alt="">엑셀저장</a>
	                    <a href="#lnk" class="smButton">활동내역인쇄</a>
	                </div>
	            </div>
	        </form>
	    </div>
    	<!-- 포상기록 -->
        <div class="addContent">
            <form action="" class="tableContainer relationContainer addTable">
		   		<div class="addTableBack">
	                <div class="tableWrapper" style="margin-top: 0;">
	                    <table>
	                        <colgroup>
	                            <col width="5%" />
	                            <col width="10%" />
	                            <col width="15%" />
	                            <col width="10%" />
	                            <col width="10%" />
	                            <col width="10%" />
	                            <col width="10%" />
	                            <col width="10%" />
	                            <col width="15%" />
	                        </colgroup>
	                        <thead>
	                            <tr>
	                                <th>No</th>
	                                <th>포상번호</th>
	                                <th>수여연맹</th>
	                                <th>포상일</th>
	                                <th>포상구분1</th>
	                                <th>포상구분2</th>
	                                <th>포상명</th>
	                                <th>포상비고</th>
	                                <th>등록</th>
	                            </tr>
	                        </thead>
	                        <tbody>
	                            <tr>
	                                <td>1</td>
	                                <td>지도자</td>
	                                <td>년도</td>
	                                <td>연맹</td>
	                                <td>연맹</td>
	                                <td>연맹</td>
	                                <td>연맹</td>
	                                <td>연맹</td>
	                                <td>연맹</td>
	                            </tr>
	                        </tbody>
	                    </table>
	                </div>
                </div>
                <div class="tableButtons topBd" style="padding: 12px 16px;">
                    <p>0<span>rows</span></p>
                    <div class="buttons">
                        <a href="#lnk" class="smButton"><img src="/front_img/add.png" alt="">추가</a>
                        <a href="#lnk" class="smButton"><img src="/front_img/modify.png" alt="">수정</a>
                        <a href="#lnk" class="smButton"><img src="/front_img/reset.png" alt="">삭제</a>
                        <a href="#lnk" class="smButton"><img src="/front_img/download.png" alt="">엑셀저장</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>