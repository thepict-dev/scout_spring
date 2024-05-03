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
        <form action="" class="searchForm">
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
                    <form action="">
                        <div class="inputsContainer">
                            <div class="inputBox">
                                <p class="inputCaption">조회조건</p>
                                <input type="date" name="search_birthday" id="search_birthday" value="${pictVO.search_birthday}" class="lgThinInput">
                            </div>
                            <div class="inputBox">
                                <p class="inputCaption">가입이력</p>
                                <select name="search_history" id="search_history" class="lgThinSelect">
                                    <option value="1">선택하세요</option>
                                    <option value="2">ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</option>
                                    <option value="3">3통합</option>
                                    <option value="4">4통합</option>
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
                                    <option value="1" >선택하세요</option>
                                    <option value="2" >개인</option>
                                    <option value="3" >법인</option>
                                    <option value="4"> 단체</option>
                                </select>
                            </div>
                            <div class="inputBox">
                                <p class="inputCaption">회원등급</p>
                                <select name="search_memgradecode" id="search_memgradecode" class="smThinSelect">
                                    <option value="1" >선택하세요</option>
                                    <option value="2" >대원/지도자</option>
                                    <option value="3" >행사회원</option>
                                    <option value="4"> 후원회원</option>
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
                                <label for="whole_period" class="wholeCheck">
                                    <input type="radio" name="whole_period" id="whole_period">
                                    <span>전체</span>
                                </label>
                            </div>
                        </div>
                        <div class="btnContainer">
                            <a href="#lnk" class="basicButton white"><img src="/front_img/reset.png" alt="">화면 초기화</a>
                            <a href="#lnk" class="basicButton purple"><img src="/front_img/search.png" alt="">조회</a>
                        </div>
                    </form>
                </div>
                <div class="tableContainer">
                    <h2 class="subTitles">조회 결과</h2>
                    <div class="tableWrapper">
                        <table>
                            <colgroup>
                                <col width="96px" />
                                <col width="96px" />
                                <col width="142px" />
                                <col width="96px" />
                                <col width="96px" />
                                <col width="142px" />
                                <col width="142px" />
                                <col width="96px" />
                            </colgroup>
                            <thead>
                                <tr>
                                <th>회원번호</th>
                                <th>회원명</th>
                                <th>법정생년월일</th>
                                <th>회원구분</th>
                                <th>대원여부</th>
                                <th>지도자여부</th>
                                <th>평생회원여부</th>
                                <th>전종여부</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Cell01</td>
                                    <td>Cell02</td>
                                    <td>Cell03</td>
                                    <td>Cell04</td>
                                    <td>Cell05</td>
                                    <td>Cell06</td>
                                    <td>Cell07</td>
                                    <td>Cell08</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="tableButtons">
                        <p>0<span>rows</span></p>
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
                    <form action="">
                        <div class="basicInfo1 inputsPd">
                            <div class="mainProfile">
                                <img src="/front_img/profile.png" alt="프로필 이미지">
                            </div>
                            <div class="stackInputs">
                                <div class="inputsContainer">
                                    <div class="inputBox">
                                        <p class="inputCaption">회원번호</p>
                                        <input type="text" name="MEMBERNO" id="MEMBERNO" placeholder="내용을 입력하세요…" class="lgThinInput">
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
                                        <select name="MEMGRADECODE" id="MEMGRADECODE" class="smThinSelect">
                                            <option value="0">대원/지도자</option>
                                            <option value="1">후원회원</option>
                                            <option value="2">행사회원</option>
                                        </select>
                                    </div>
                                    <div class="inputBox">
                                        <p class="inputCaption">가입이력</p>
                                        <select name="search_history" id="search_history" class="lgThinSelect">
                                            <option value="1">대원</option>
                                            <option value="2">지도자</option>
                                            <option value="3">평생회원</option>
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
                                            <option value="N">비전종</option>
                                            <option value="Y">전종</option>
                                        </select>
                                    </div>
                                    <div class="inputBox">
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
                                        <p class="inputCaption">성명(한문)</p>
                                        <input type="text" name="USERNAME" id="USERNAME" placeholder="내용을 입력하세요…" class="lgThinInput">
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
                                    <option value="">직업선택</option>
                                    <option value="1">대원</option>
                                    <option value="2">지도자</option>
                                    <option value="3">평생회원</option>
                                </select>
                            </div>
                        </div>
                        <div class="inputsContainer inputsPd_ bottomBd">
                            <div class="inputBox">
                                <p class="inputCaption">집주소</p>
                                <div class="zip">
                                    <input type="text" name="HPOSTCODE" id="HPOSTCODE" readonly class="lgThinInput">
                                    <a href="#lnk" class="normalButton white">우편번호 검색</a>
                                </div>
                                <input type="text" name="get_post" id="get_post" readonly class="lgThinInput post">
                            </div>
                        </div>
                        <div class="inputsContainer inputsPd bottomBd">
                            <div class="inputBox">
                                <p class="inputCaption">지도자단체</p>
                                <input type="text" name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
                            </div>
                            <div class="inputBox">
                                <p class="inputCaption">승진 가산점</p>
                                <input type="text" name="additional" id="additional" placeholder="내용을 입력하세요…" class="smThinInput">
                            </div>
                            <div class="inputBox">
                                <p class="inputCaption">훈련과정</p>
                                <input type="text" name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
                            </div>
                            <div class="inputBox">
                                <p class="inputCaption">자격증</p>
                                <input type="text" name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
                            </div>
                            <div class="inputBox">
                                <p class="inputCaption">평생회원</p>
                                <input type="text" name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
                            </div>
                        </div>
                        <div class="inputsContainer inputsPd bottomBd">
                            <div class="inputBox">
                                <p class="inputCaption">대원학교</p>
                                <input type="text" name="group" id="group" readonly placeholder="내용을 입력하세요…" class="lgThinInput">
                            </div>
                            <div class="inputBox">
                                <p class="inputCaption">학년</p>
                                <input type="text" name="group1" id="group1" placeholder="내용을 입력하세요…" class="smThinInput">
                            </div>
                            <div class="inputBox">
                                <p class="inputCaption">반</p>
                                <input type="text" name="group2" id="group2" placeholder="내용을 입력하세요…" class="smThinInput">
                            </div>
                            <div class="inputBox">
                                <p class="inputCaption">대원 진보</p>
                                <input type="text" name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
                            </div>
                            <div class="inputBox">
                                <p class="inputCaption">대원 기능장</p>
                                <input type="text" name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
                            </div>
                        </div>
                        <div class="inputsContainer inputsPd bottomBd">
                            <div class="inputBox">
                                <p class="inputCaption">등록</p>
                                <input type="text" name="" id="" readonly placeholder="내용을 입력하세요…" class="lgThinInput">
                            </div>
                            <div class="inputBox">
                                <p class="inputCaption">수정</p>
                                <input type="text" name="" id="" readonly placeholder="내용을 입력하세요…" class="lgThinInput">
                            </div>
                        </div>
                        <div class="tableTab bottomBd">
                            <ul class="historyNav">
                                <li class="active">대원 가입 이력</li>
                                <li>지도가 가입 이력</li>
                            </ul>
                            <div class="tableContainer historyContent active">
                                <div class="tableWrapper">
                                    <table>
                                        <colgroup>
                                            <col width="60px" />
                                            <col width="96px" />
                                            <col width="142px" />
                                            <col width="211px" />
                                            <col width="211px" />
                                            <col width="142px" />
                                            <col width="60px" />
                                            <col width="60px" />
                                        </colgroup>
                                        <thead>
                                            <tr>
                                                <th>No</th>
                                                <th>년도</th>
                                                <th>연맹</th>
                                                <th>연합회</th>
                                                <th>단위대</th>
                                                <th>학교</th>
                                                <th>구분</th>
                                                <th>학년</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Cell01</td>
                                                <td>Cell02</td>
                                                <td>Cell03</td>
                                                <td>Cell04</td>
                                                <td>Cell05</td>
                                                <td>Cell06</td>
                                                <td>Cell07</td>
                                                <td>Cell08</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="tableButtons">
                                    <p>0<span>rows</span></p>
                                    <div class="buttons">
                                        <a href="#lnk" class="smButton"><img src="/front_img/add.png" alt="">추가</a>
                                        <a href="#lnk" class="smButton"><img src="/front_img/modify.png" alt="">수정</a>
                                        <a href="#lnk" class="smButton"><img src="/front_img/reset.png" alt="">삭제</a>
                                        <a href="#lnk" class="smButton"><img src="/front_img/download.png" alt="">엑셀저장</a>
                                    </div>
                                </div>
                            </div>
                            <div class="tableContainer historyContent">
                                <div class="tableWrapper">
                                    <table>
                                        <colgroup>
                                            <col width="60px" />
                                            <col width="130px" />
                                            <col width="96px" />
                                            <col width="142px" />
                                            <col width="211px" />
                                            <col width="211px" />
                                            <col width="80px" />
                                            <col width="80px" />
                                            <col width="142px" />
                                        </colgroup>
                                        <thead>
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
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>No</td>
                                                <td>지도자지도여부</td>
                                                <td>년도</td>
                                                <td>연맹</td>
                                                <td>연합회</td>
                                                <td>단위대</td>
                                                <td>직책1</td>
                                                <td>직책2</td>
                                                <td>학교</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="tableButtons">
                                    <p>0<span>rows</span></p>
                                    <div class="buttons">
                                        <a href="#lnk" class="smButton"><img src="/front_img/add.png" alt="">추가</a>
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
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>지도자</td>
                                            <td>년도</td>
                                            <td>연맹</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tableButtons">
                                <p>0<span>rows</span></p>
                                <div class="buttons">
                                    <a href="#lnk" class="smButton"><img src="/front_img/add.png" alt="">추가</a>
                                    <a href="#lnk" class="smButton"><img src="/front_img/modify.png" alt="">수정</a>
                                    <a href="#lnk" class="smButton"><img src="/front_img/reset.png" alt="">삭제</a>
                                    <a href="#lnk" class="smButton"><img src="/front_img/download.png" alt="">엑셀저장</a>
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
                                            <th>관계</th>
                                            <th>비고</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th style="white-space: nowrap;">대원</th>
                                            <td>김김김김</td>
                                            <td>년도</td>
                                            <td>연맹</td>
                                        </tr>
                                        <tr>
                                            <th style="white-space: nowrap;">지도자</th>
                                            <td>김김김김</td>
                                            <td>년도</td>
                                            <td>연맹</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tableButtons">
                                <p>0<span>rows</span></p>
                                <div class="buttons">
                                    <a href="#lnk" class="smButton"><img src="/front_img/add.png" alt="">추가</a>
                                    <a href="#lnk" class="smButton"><img src="/front_img/modify.png" alt="">수정</a>
                                    <a href="#lnk" class="smButton"><img src="/front_img/reset.png" alt="">삭제</a>
                                    <a href="#lnk" class="smButton"><img src="/front_img/download.png" alt="">엑셀저장</a>
                                </div>
                            </div>
                        </div>
                        <div class="tableButtons rightBtns topBd">
                            <p>0<span>rows</span></p>
                            <div class="buttons">
                                <a href="#lnk" class="smButton"><img src="/front_img/sms.png" alt="">SMS</a>
                                <a href="#lnk" class="smButton"><img src="/front_img/email.png" alt="">이메일</a>
                                <a href="#lnk" class="smButton"><img src="/front_img/download.png" alt="">저장</a>
                                <a href="#lnk" class="smButton"><img src="/front_img/reset.png" alt="">화면 초기화</a>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- 추가정보 탭 -->
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
                        <div class="addContent mt20 active">
                            <form action="">
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
                                <div class="tableButtons addBtns topBd">
                                    <div class="buttons">
                                        <a href="#lnk" class="smButton"><img src="/front_img/modify.png" alt="">수정</a>
                                        <a href="#lnk" class="smButton"><img src="/front_img/download.png" alt="">저장</a>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <!-- 행사참가관련 -->
                        <div class="addContent mt20">
                            <form action="">
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
                                <div class="tableButtons addBtns topBd">
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
                                <div class="tableWrapper">
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
                                <div class="tableButtons topBd">
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
                                <div class="tableButtons topBd">
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
                                <div class="tableButtons topBd">
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
                                <div class="tableButtons topBd">
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
                                <div class="tableButtons topBd">
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
                                <div class="tableButtons topBd">
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
                                <div class="tableWrapper">
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
                                <div class="tableButtons topBd">
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
            </div>
        </div>
    </div>
</body>
</html>