<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<div id="groupPopup" class="modalContainer">
    <div class="modalInner lg">
        <button type="button"><img src="/front_img/close.png" alt=""></button>
        <div class="modalTit">
            <p>지도자 소속 변경</p>
        </div>
        <form action="">
            <div class="basicInfo1 inputsPd bottomBd">
                <div class="stackInputs">
                    <h3 class="subTitles">기본정보</h3>
                    <div class="inputsContainer">
                        <div class="inputBox">
                            <p class="inputCaption">학교/단체</p>
                            <div class="inputsAlign">
                                <input type="text"  name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
                                <a href="#lnk" class="smButton searches" style="margin-right: 12px;"><img src="/front_img/search2.png" alt="">조회</a>
                            </div>
                        </div>
                        <div class="inputBox">
                            <p class="inputCaption">조직직책</p>
                            <select name="" id="" class="smThinSelect">
                                <option value="1"></option>
                                <option value="2"></option>
                                <option value="3"></option>
                            </select>
                        </div>
                    </div>
	                <div class="inputsContainer">
	                    <div class="inputBox">
	                        <p class="inputCaption">시작일</p>
	                            <div class="inputsAlign">
	                            <input type="date" name="" id="" value="" class="lgThinInput">
	                        </div>
	                    </div>
	                    <div class="inputBox">
	                        <p class="inputCaption">마감일</p>
	                            <div class="inputsAlign">
	                            <input type="date" name="" id="" value="" disabled class="lgThinInput">
	                        </div>
	                    </div>
                    </div>
                </div>
            </div>
            <h3 class="subTitles" style="padding: 16px 24px 0 24px;">학교/단체 검색</h3>
            <div class="inputsContainer inputsPd bottomBd">
                <div class="inputsContainer">
                    <div class="inputsContainer">
                        <div class="inputBox">
                            <p class="inputCaption">연맹</p>
                            <select name="" id="" class="lgThinSelect">
                                <option value="1"></option>
                                <option value="2"></option>
                                <option value="3"></option>
                            </select>
                        </div>
                        <div class="inputBox">
                            <p class="inputCaption">구분</p>
                            <div class="inputsAlign">   
                                <select name="" id="" class="lgThinSelect">
                                    <option value="1"></option>
                                    <option value="2"></option>
                                    <option value="3"></option>
                                </select>
                                <select name="" id="" class="lgThinSelect">
                                    <option value="1"></option>
                                    <option value="2"></option>
                                    <option value="3"></option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="inputsContainer">
                    <div class="inputBox">
                        <p class="inputCaption">관할교육청</p>
                        <select name="" id="" class="lgThinSelect">
                            <option value="1"></option>
                            <option value="2"></option>
                            <option value="3"></option>
                        </select>
                    </div>
                    <div class="inputBox">
                        <p class="inputCaption">학교/단체명</p>
                        <select name="" id="" class="lgThinSelect">
                            <option value="1"></option>
                            <option value="2"></option>
                            <option value="3"></option>
                        </select>
                    </div>
                </div>
	            <div class="tableButtons" style="justify-content: flex-end;">
	                <div class="buttons">
	                    <a href="#lnk" class="smButton"><img src="/front_img/search2.png" alt="">조회</a>
	                </div>
	            </div>
            </div>
            <div class="inputsContainer inputsPd bottomBd">
               <div class="tableContainer relationContainer" style="padding: 0;">
                  	<h3 class="subTitles">조회목록</h3>
                	<div class="tableWrapper" style="width: 572px; height: 150px; overflow-x: scroll;">
	                    <table>
	                        <colgroup>
	                            <col width="10%" />
	                            <col width="15%" />
	                            <col width="20%" />
	                            <col width="20%" />
	                            <col width="15%" />
	                        </colgroup>
	                        <thead>
	                            <tr>
	                                <th>No</th>
	                                <th>연맹</th>
	                                <th>구분1</th>
	                                <th>구분2</th>
	                                <th>학교/단체명</th>
	                            </tr>
	                        </thead>
	                        <tbody id="group_list"></tbody>
	                    </table>
                   	</div>
               	</div>
            </div>
            <div class="tableButtons" style="justify-content: flex-end; padding: 40px 24px 60px 0;">
                <div class="buttons">
                    <a href="#lnk" class="smButton bigBtn">저장</a>
                </div>
            </div>
        </form>
    </div>
</div>
<script>
	function fn_orgnize(){
		console.log("akjsbdakjbdkajsbdkjb")
	}
</script>
