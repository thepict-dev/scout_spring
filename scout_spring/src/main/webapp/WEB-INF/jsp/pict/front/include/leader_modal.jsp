<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<div id="joinPopup">
    <div class="popupInner">
        <button type="button"><img src="/front_img/close.png" alt=""></button>
           <form action="">
               <div class="basicInfo1 inputsPd">
                   <div class="stackInputs">
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
                           <div class="inputBox">
                               <p class="inputCaption">연맹</p>
                               <select name="" id="" class="smThinSelect">
                                   <option value="1">대원</option>
                                   <option value="2">지도자</option>
                                   <option value="3">평생회원</option>
                               </select>
                           </div>
                           <div class="inputBox">
                               <p class="inputCaption">연합회</p>
                               <select name="" id="" class="smThinSelect">
                                   <option value="1">대원</option>
                                   <option value="2">지도자</option>
                                   <option value="3">평생회원</option>
                               </select>
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
                                <input type="text"  name="KNAME" id="KNAME" placeholder="내용을 입력하세요…" class="lgThinInput">
                               	<a href="#lnk" class="smButton"><img src="/front_img/search2.png" alt="">조회</a>
                                <select name="LEADER" id="LEADER" class="lgThinSelect">
                                    <option value="N">비전종</option>
                                    <option value="Y">전종</option>
                                </select>
                              	</div>
                           </div>
                       </div>
                       <div class="inputsContainer">
                           <div class="inputBox">
                               <p class="inputCaption">지도자직책</p>
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
                       </div>
                   </div>
               </div>
               <div class="inputsContainer inputsPd_">
                   <div class="inputBox">
                       <p class="inputCaption">관리지도자</p>
                       <div class="recive">
                           <input type="checkbox" name="admin" id="admin"><label for="admin">관리지도자</label>
                       </div>
                   </div>
               </div>
               <div class="inputsContainer inputsPd_ bottomBd">
                   <div class="inputBox">
                       <p class="inputCaption">회비면제</p>
                      	<div class="inputsAlign">
                        <div>
                            <input type="checkbox" name="free" id="free"><label for="free">면제</label>
                        </div>
                        <select name="" id="" class="lgThinSelect">
                            <option value="N">비전종</option>
                            <option value="Y">전종</option>
                        </select>
                       </div>
                   </div>
                   <div class="inputBox">
                       <p class="inputCaption">회비정산입금일</p>
                      	<div class="inputsAlign">
                       	<input type="date" name="" id="" value="" class="lgThinInput">
                        <div>
                            <input type="checkbox" name="recived" id="recived"><label for="recived">납부완료</label>
                        </div>
                       </div>
                   </div>
               </div>
               <div class="paymentForm">
               	<h3 class="subTitles" style="padding: 16px 24px 0 24px;">회비</h3>
                <div class="inputsContainer inputsPd bottomBd">
                    <div class="inputBox">
                        <p class="inputCaption">등록</p>
                      		<div class="inputsAlign">
							<input type="text" name="" id="" placeholder="내용을 입력하세요…" class="smThinInput">
	                        <p class="inputCaption" style="margin-top:7px;">원</p>
                        </div>
                    </div>
                    <div class="inputBox">
                        <p class="inputCaption">안전활동부담금</p>
                      		<div class="inputsAlign">
							<input type="text" name="" id="" placeholder="내용을 입력하세요…" class="smThinInput">
	                        <p class="inputCaption" style="margin-top:7px;">원</p>
                        </div>
                    </div>
                    <div class="inputBox">
                    	<div class="inputsAlign">
                        	<p class="inputCaption">월간지</p>
                        	<input type="checkbox" name="" id=""><label for="" style="margin-bottom:8px;width: 10px;height: 13px;"></label>
                      		</div>
                      		<div class="inputsAlign">
							<input type="text" name="" id="" placeholder="내용을 입력하세요…" class="smThinInput">
	                        <p class="inputCaption" style="margin-top:7px;">부</p>
                        </div>
                    </div>
                    <div class="inputBox">
                    	<div class="inputsAlign">
                        	<p class="inputCaption">격월간지</p>
                        	<input type="checkbox" name="" id=""><label for="" style="margin-bottom:8px;width: 10px;height: 13px;"></label>
                      		</div>
                      		<div class="inputsAlign">
							<input type="text" name="" id="" placeholder="내용을 입력하세요…" class="smThinInput">
	                        <p class="inputCaption" style="margin-top:7px;">부</p>
                        </div>
                    </div>
                    <div class="inputBox">
                        <p class="inputCaption">총계</p>
                      		<div class="inputsAlign">
							<input type="text" name="" id="" readonly class="smThinInput">
	                        <p class="inputCaption" style="margin-top:7px;">원</p>
                        </div>
                    </div>
                </div>
               </div>
               <div class="inputsContainer inputsPd bottomBd">
                   <div class="inputBox">
                       <p class="inputCaption">비고</p>
                       <textarea name="" id="" cols="100"></textarea>
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
               <div class="inputsContainer inputsPd bottomBd">
                   <div class="inputBox">
                       <p class="inputCaption">승인</p>
                       <input type="text" name="" id="" readonly placeholder="내용을 입력하세요…" class="lgThinInput">
                   </div>
               </div>
               <div class="saveBox">
               	<input type="checkbox" name="save" id="save"><label for="save">입력한 정보를 최신 신상정보로 갱신</label>
               </div>
               <div class="tableButtons" style="justify-content: flex-end; padding: 16px 24px 60px 0;">
                   <div class="buttons">
                       <a href="#lnk" class="smButton"><img src="/front_img/download.png" alt="">저장</a>
                   </div>
               </div>
           </form>
		</div>
</div>