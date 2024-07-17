<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="trModal">
    <div class="modalWrapper">
        <button type="button"><img src="/user_img/close.png" alt="닫기"></button>
        <div class="modalInner">
            <form action="">
                <div class="bookingForm">
                    <h4 class="modalTitle">예약 정보를 입력하세요</h4>
                    <div class="inputsContainer">
                        <p class="InputsTitle">예약자 정보</p>
                        <div class="inputContainer">
                            <div class="inputBox">
                                <p>기관명</p>
                                <input type="text" name="company" id="company" placeholder="기관명을 입력하세요" class="large">
                            </div>
                            <div class="inputBox">
                                <p>담당부서</p>
                                <input type="text" name="depart" id="depart" placeholder="담당부서를 입력하세요" class="large">
                            </div>
                        </div>
                        <div class="inputContainer">
                            <div class="inputBox">
                                <p>담당자</p>
                                <input type="text" name="name" id="name" placeholder="담당자를 입력하세요" class="small">
                            </div>
                            <div class="inputBox">
                                <p>전화번호</p>
                                <div class="telInput">
                                    <input type="text" name="tel1" id="tel1" value="010">
                                    -
                                    <input type="text" name="tel2" id="tel2" oninput="phoneAutoHyphen(this)" maxlength="9" class="large">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="inputsContainer">
                        <p class="InputsTitle">사용 정보</p>
                        <div class="inputContainer">
                            <div class="inputBox">
                                <p>사용일시</p>
                                <input type="date" name="applydate" id="applydate" class="medium">
                            </div>
                        </div>
                        <div class="inputContainer">
                            <div class="inputBox">
                                <p>사용시간</p>
                                <div class="checkRadioBox">
                                    <div class="checkRadio">
                                        <input id="morning" type="checkbox" name="time" value="1" data-id="오전">
                                        <label for="morning">오전</label>
                                    </div>
                                    <div class="checkRadio">
                                        <input id="aftnoon" type="checkbox" name="time" value="2" data-id="오후">
                                        <label for="aftnoon">오후</label>
                                    </div>
                                    <div class="checkRadio">
                                        <input id="night" type="checkbox" name="time" value="3" data-id="야간">
                                        <label for="night">야간</label>
                                    </div>
                                    <div class="checkRadio">
                                        <input id="all" type="checkbox" name="time" value="" data-id="">
                                        <label for="all">전일</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="inputContainer">
                            <div class="inputBox">
                                <p>사용인원</p>
                                <input type="text" name="person" id="person" placeholder="인원수를 입력하세요" class="medium" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                            </div>
                            <div class="inputBox">
                                <p>부가 시설 이용</p>
                                <div class="checkRadioBox">
                                    <div class="checkRadio">
                                        <input id="setting1" type="checkbox" name="setting" value="강의 세팅" data-id="강의 세팅">
                                        <label for="setting1">강의 세팅</label>
                                    </div>
                                    <div class="checkRadio">
                                        <input id="setting2" type="checkbox" name="setting" value="회의실 세팅" data-id="회의실 세팅">
                                        <label for="setting2">회의실 세팅</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="inputContainer">
                            <div class="inputBox" style="width: 100%;">
                                <p>사용목적</p>
                                <input type="text" name="purpose" id="purpose" placeholder="사용 목적을 입력하세요">
                            </div>
                        </div>
                        <div class="inputContainer">
                            <div class="inputBox" style="width: 100%;">
                                <p>요청사항</p>
                                <textarea name="BIGO" id="BIGO" placeholder="요청사항을 입력하세요"></textarea>
                            </div>
                        </div>
                    </div>
                 <a href="#lnk" class="rulesButton apply mbApply" onclick="reservation()">
                     <p>예약하기</p>
                     <span></span>
                 </a>
                </div>
                <div class="bookingInfo">
                    <h4 class="modalTitle">예약정보 확인</h4>
                    <ul class="checkInfo">
                        <li><p>기관명</p><span class="res1">-</span></li>
                        <li><p>담당부서</p><span class="res2">-</span></li>
                        <li><p>담당자</p><span class="res3">-</span></li>
                        <li style="column-gap: 0;"><p style="margin-right: 20px;">전화번호</p><span class="phoneRes">010-</span><span class="res4"></span></li>
                        <li><p>사용일시</p><span class="res5">-</span></li>
                        <li><p>시용시간</p><span class="res6">-</span></li>
                        <li><p>사용인원</p><span class="res7">-</span></li>
                        <li><p>부가시설</p><span class="res8">-</span></li>
                        <li><p>사용목적</p><span class="res9">-</span></li>
                    </ul>
                    <a href="#lnk" class="rulesButton apply" onclick="reservation()">
                        <p>예약하기</p>
                        <span></span>
                    </a>
                </div>
            </form>
        </div>
    </div>
</div>