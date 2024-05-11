<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<div id="joinMemPopup" class="modalContainer">
    <div class="modalInner lg">
        <button type="button"><img src="/front_img/close.png" alt=""></button>
        <div class="modalTit">
            <p>대원 가입</p>
        </div>
        <form action="">
            <div class="basicInfo1 inputsPd bottomBd">
                <div class="stackInputs">
                    <h3 class="subTitles">회원정보</h3>
                    <div class="inputsContainer">
                        <div class="inputBox">
                            <p class="inputCaption">성명</p>
                            <input type="text" name="KNAME" id="KNAME" placeholder="내용을 입력하세요…" class="lgThinInput">
                        </div>
                        <div class="inputBox">
                            <p class="inputCaption">연차년도</p>
                            <select name="" id="" class="smThinSelect">
                                <option value="1">개인</option>
                                <option value="2">법인</option>
                                <option value="3">단체</option>
                            </select>
                        </div>
                        <div class="inputBox">
                            <p class="inputCaption">승인여부</p>
                            <select name="" id="" class="smThinSelect">
                                <option value="0">대원/지도자</option>
                                <option value="1">후원회원</option>
                                <option value="2">행사회원</option>
                            </select>
                        </div>
                    </div>
                    <div class="inputsContainer">
                        <div class="inputBox">
                            <p class="inputCaption">연맹/연합회</p>
                            <div class="inputsAlign">   
                                <select name="" id="" class="smThinSelect">
                                    <option value="1">대원</option>
                                    <option value="2">지도자</option>
                                    <option value="3">평생회원</option>
                                </select>
                                <select name="" id="" class="smThinSelect">
                                    <option value="1">대원</option>
                                    <option value="2">지도자</option>
                                    <option value="3">평생회원</option>
                                </select>
                            </div>
                        </div>
                        <div class="inputBox">
                            <p class="inputCaption">단위대</p>
                            <select name="" id="" class="lgThinSelect">
                                <option value="0">대원/지도자</option>
                                <option value="1">후원회원</option>
                                <option value="2">행사회원</option>
                            </select>
                        </div>
                    </div>  
                    <div class="inputsContainer">
                        <div class="inputBox">
                            <p class="inputCaption">소속학교</p>
                            <div class="inputsAlign">
                                <input type="text"  name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
                                <a href="#lnk" class="smButton searches" style="margin-right: 12px;"><img src="/front_img/search2.png" alt="">조회</a>
                            </div>
                        </div>
                        <div class="inputBox">
                            <p class="inputCaption">학년/반</p>
                            <div class="inputsAlign">
	                            <select name="" id="" class="smThinSelect">
	                                <option value="1">1</option>
	                                <option value="2">2</option>
	                            </select>
	                            <input type="text"  name="" id="" placeholder="내용을 입력하세요…" class="smThinInput">
                        	</div>
                        </div> 
                    </div>
                    <div class="inputsContainer">
                        <div class="inputBox">
                            <p class="inputCaption">스카우트직책</p>
                            <div class="inputsAlign">
                                <select name="" id="" class="lgThinSelect">
                                    <option value="N">비전종</option>
                                    <option value="Y">전종</option>
                                </select>
                                <select name="" id="" class="lgThinSelect">
                                    <option value="N">비전종</option>
                                    <option value="Y">전종</option>
                                </select>
                            </div>
                        </div>
                        <div class="inputBox">
                            <p class="inputCaption">스카우트반</p>
                            <input type="text"  name="" id="" placeholder="내용을 입력하세요…" class="smThinInput">
                        </div>
                    </div>
                </div>
            </div>
            <div class="paymentForm">
            <h3 class="subTitles" style="padding: 16px 24px 0 24px;">회비 정보</h3>
            <div class="inputsContainer inputsPd bottomBd gapRow">
                <div class="inputsContainer">
                    <div class="inputBox">
                        <p class="inputCaption">면제여부</p>
                            <div class="inputsAlign">
                            <div>
                                <input type="checkbox" name="" id="" class="circleCheck"><label for="">면제</label>
                            </div>
                            <select name="" id="" class="smThinSelect" disabled>
                                <option value="">비전종</option>
                                <option value="">전종</option>
                            </select>
                        </div>
                    </div>
                    <div class="inputBox">
                        <p class="inputCaption">회비정산입금일</p>
                            <div class="inputsAlign">
                            <input type="date" name="" id="" value="" class="lgThinInput">
                            <div>
                                <input type="checkbox" name="recived" id="recived" class="circleCheck"><label for="recived">납부완료</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="stackInputs">
                    <div class="inpustFlex" style="margin-bottom: 10px;">
                        <div class="mountResult">
                        	<p class="inputCaption mount">등록</p>
                            <p class="mountCaption">
                                <span>0</span>
                                원
                            </p>
                        </div>
                        <div class="inputBox">
                            <div class="inputsAlign">
                                <label for="">
                                    <input type="text" name="" id="" placeholder="0" class="smThinInput mountInput">
                                    <span class="mountCaption">원</span>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="stackInputs">
                    <div class="inpustFlex">
                        <div class="mountResult">
                        	<p class="inputCaption mount">안전활동부담금</p>
                            <div class="inputsAlign">
	                            <p class="mountCaption">
	                                <span>0</span>
	                                원
	                            </p>
                            </div>
                            <div style="position: absolute;right: -35px;">
                                <input type="checkbox" name="" id="" class="circleCheck"><label for="" class="lableOnly"></label>
                            </div>
                        </div>
                        <div class="inputBox">
                            <div class="inputsAlign">
                                <label for="">
                                    <input type="text" name="" id="" placeholder="0" class="smThinInput mountInput">
                                    <span class="mountCaption">원</span>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="stackInputs">
                    <div class="inpustFlex">
                        <div class="inputBox">
                            <div class="inputsAlign">
		                        <div class="mountResult">
                            		<p class="inputCaption mount">월간지</p>
		                            <p class="mountCaption">
		                                <span>0</span>
		                                원
		                            </p>
		                        </div>
                                <div>
                                    <input type="checkbox" name="" id="" class="circleCheck"><label for="" class="lableOnly"></label>
                                </div>
                                <div class="inputBox" style="position: relative; bottom: 9px;">
                                    <p class="inputCaption">부수</p>
                                    <div class="inputsAlign">
                                        <label for="">
                                            <input type="text" name="" id="" placeholder="00" class="smThinInput">
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="inputBox" style="margin-bottom: 10px;">
                            <div class="inputsAlign">
                                <label for="">
                                    <input type="text" name="" id="" placeholder="0" class="smThinInput mountInput">
                                    <span class="mountCaption">원</span>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="stackInputs">
                    <div class="inpustFlex">
                        <div class="mountResult">
                         	<p class="inputCaption mount">총계</p>
                            <p class="mountCaption">
                                <span>0</span>
                                원
                            </p>
                        </div>
                        <div class="inputBox">
                            <div class="inputsAlign">
                                <label for="">
                                    <input type="text" name="" id="" placeholder="0" class="smThinInput mountInput">
                                    <span class="mountCaption">원</span>
                                </label>
                            </div>
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
                        <input type="text" name="" id="" readonly placeholder="내용을 입력하세요…" class="lgThinInput">
                    </div>
                </div>
            </div>
            <div class="saveBox">
                <input type="checkbox" name="save" id="save"><label for="save">입력한 정보를 최신 신상정보로 갱신</label>
            </div>
            <div class="tableButtons" style="justify-content: flex-end; padding: 0 24px 60px 0;">
                <div class="buttons">
                    <a href="#lnk" class="smButton bigBtn">저장</a>
                </div>
            </div>
        </form>
    </div>
</div>