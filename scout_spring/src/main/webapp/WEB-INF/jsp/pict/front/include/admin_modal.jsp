<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<div id="adminPopup" class="modalContainer">
    <div class="modalInner lg">
        <button type="button"><img src="/front_img/close.png" alt=""></button>
        <div class="modalTit">
            <p>임원 관리</p>
        </div>
        <form action="">
            <div class="basicInfo1 inputsPd bottomBd">
                <div class="stackInputs">
                    <h3 class="subTitles">임원 정보</h3>
                    <div class="inputsContainer">
                        <div class="inputBox">
                            <p class="inputCaption">회원번호</p>
                            <div class="inputsAlign">
                                <input type="text" name="memberno" id="memberno" placeholder="내용을 입력하세요…" class="lgThinInput">
                                <a href="#lnk" class="smButton" style="margin-right: 12px;"><img src="/front_img/search2.png" alt="">조회</a>
                            </div>
                        </div>
                        <div class="inputBox">
                            <p class="inputCaption">회원검색</p>
                            <a href="/front/users" target="_blank" class="smButton searches" style="padding: 4px 16px;">회원통합창</a>
                        </div>
                    </div>
                    <div class="inputsContainer">
                        <div class="inputBox">
                            <p class="inputCaption">성명</p>
                            <input type="text" name="KNAME" id="KNAME" placeholder="내용을 입력하세요…" class="lgThinInput">
                        </div>
                    </div>  
                    <div class="inputsContainer">
                        <div class="inputBox">
                            <p class="inputCaption">임원분류</p>
                            <div class="inputsAlign">
                                <select name="bun1" id="bun1" class="lgThinSelect">
                                    <option value="">-----</option>
                                </select>
                                <select name="bun2" id="bun2" class="lgThinSelect">
                                    <option value="">-----</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="inputsContainer">
                        <div class="inputBox">
                            <p class="inputCaption">임기</p>
                            <div class="inputsAlign">
                                <input type="date" name="period1" id="period1" class="lgThinInput">
                                <input type="date" name="period2" id="period2" class="lgThinInput">
                                <input type="checkbox" name="non_period" id="non_period" class="circleCheck"><label for="">임기미정</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="inputsContainer inputsPd bottomBd">
                <div class="stackInputs">
                    <h3 class="subTitles">기타</h3>
                    <div class="inputBox">
                        <p class="inputCaption">비고</p>
                        <textarea name="ad_bigo" id="ad_bigo"></textarea>
                    </div>
                </div>
            </div>
            <div class="tableButtons" style="justify-content: flex-end; padding: 16px 24px 60px 0;">
                <div class="buttons">
                    <a href="#lnk" class="smButton"><img src="/front_img/download.png" alt="">저장</a>
                </div>
            </div>
        </form>
    </div>
</div>