<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>


<div id="relationPopup">
    <div class="popupInner">
        <button type="button"><img src="/front_img/close.png" alt=""></button>
           <form action="">
               <div class="tableContainer relationContainer bottomBd mb20">
                   <h2 class="subTitles">관계 목록</h2>
                   <div class="tableWrapper" style="height: 150px; overflow-x: scroll;">
                       <table style="min-width: 630px;">
                           <colgroup>
                               <col width="10%" />
                               <col width="15%" />
                               <col width="20%" />
                               <col width="20%" />
                               <col width="15%" />
                               <col width="20%" />
                           </colgroup>
                           <thead>
                               <tr>
                                   <th>코드</th>
                                   <th>관계</th>
                                   <th>회원명</th>
                                   <th>법정생년월일</th>
                                   <th>성별</th>
                                   <th>등록일</th>
                               </tr>
                           </thead>
                           <tbody>
                               <tr>
                                   <td>1</td>
                                   <td>지도자</td>
                                   <td>년도</td>
                                   <td>연맹</td>
                                   <td>년도</td>
                                   <td>연맹</td>
                               </tr>
                           </tbody>
                       </table>
                   </div>
                   <div class="tableButtons">
                       <p>0<span>rows</span></p>
                       <div class="buttons">
                           <a href="#relationPopup" class="smButton relationBtn"><img src="/front_img/reset.png" alt="">관계삭제</a>
                       </div>
                   </div>
               </div>	
               <h2 class="subTitles" style="padding: 0 24px;">관계 검색</h2>
               <div class="inputsContainer inputsPd">
                   <div class="inputBox">
                       <p class="inputCaption">회원명</p>
                       <input type="text" name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
                   </div>
                   <div class="inputBox">
                       <p class="inputCaption">회원번호</p>
                       <input type="text" class="lgThinInput" name="" id="" value="${pictVO.search_memberno_se}" onkeypress="if(event.keyCode == 13){search_list();}" placeholder="내용을 입력하세요…">
                   </div>
               </div>
              	<div class="inputsContainer" style="padding: 0 24px;">
                   <div class="inputBox genderContainer" style="align-items: center;">
                       <p class="inputCaption" style="margin: 0;">성별</p>
                       <div class="gender">
                           <input type="radio" name="SEX" value="" id="SEX">
                           <label for="SEX">전체</label>
                       </div>
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
                <div class="tableButtons addSearch bottomBd" style="padding:16px 24px;">
                    <div class="buttons">
                        <a href="#relationPopup" class="smButton relationBtn"><img src="/front_img/search2.png" alt="">조회</a>
                    </div>
                </div>
              	<div class="inputsContainer">
                <div class="inputBox">
                   	<div class="inputsAlign relationSearch">
	                     <select name="" id="" class="lgThinSelect">
	                         <option value="">자식이(가) 부모 등록</option>
	                     </select>
	                     <a href="#relationPopup" class="smButton relationBtn"><img src="/front_img/add.png" alt="">관계추가</a>
                	</div>
                </div>
               </div>
               <div class="tableContainer relationContainer bottomBd mb20">
                   <h2 class="subTitles">조회 결과</h2>
                   <div class="tableWrapper" style="height: 150px;">
                       <table>
                           <colgroup>
                               <col width="15%" />
                               <col width="20%" />
                               <col width="25%" />
                               <col width="15%" />
                               <col width="25%" />
                           </colgroup>
                           <thead>
                               <tr>
                                   <th>회원번호</th>
                                   <th>회원명</th>
                                   <th>법정생년월일</th>
                                   <th>성별</th>
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
                               </tr>
                           </tbody>
                       </table>
                   </div>
                   <div class="tableButtons">
                       <p>0<span>rows</span></p>
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