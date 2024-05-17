<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>	
<html lang="ko">
	<%@ include file="./include/head.jsp" %>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<body>
		<%@ include file="./include/lnb.jsp" %>
		<%@ include file="./include/header.jsp" %>    
		<div class="contentsContainer">
	        <form action="" class="organSearchForm">
	            <h2 class="subTitles">조회 조건</h2>
	            <div class="organSearch">
	                <div class="searchContainer">
	                    <p class="inputCaption">연도</p>
	                    <div class="inputsAlign">
	                        <input type="text"  name="" id="" placeholder="내용을 입력하세요…" class="smThinInput">
	                        <a href="#lnk" class="smButton bigWhiteBtn">초기화</a>
	                    </div>
	                </div>
	                <div class="searchContainer">
	                    <p class="inputCaption">연맹/지구</p>
	                    <div class="inputsAlign">
	                        <select name="" id="" class="smThinSelect">
	                            <option value="1">중앙본부</option>
	                        </select>
	                        <select name="" id="" class="smThinSelect">
	                            <option value="">지구 선택</option>
	                        </select>
	                    </div>
	                </div>
	                <div class="searchContainer">
	                    <p class="inputCaption">법정생년월일</p>
	                    <input type="date" name="" id="" value="${pictVO.search_birthday}" class="lgThinInput">
	                </div>
	                <div class="searchContainer">
	                    <p class="inputCaption">단위대 구분</p>
	                    <div class="inputsAlign">
	                        <select name="" id="" class="lgThinSelect">
	                            <option value="1">중앙본부</option>
	                        </select>
	                        <select name="" id="" class="lgThinSelect">
	                            <option value="">-</option>
	                        </select>
	                        <select name="" id="" class="smThinSelect">
	                            <option value="1">성명</option>
	                        </select>
	                        <input type="text" name="" id="" class="smThinInput" placeholder="내용을 입력해주세요...">
	                    </div>
	                </div>
	                <div class="searchContainer">
	                    <p class="inputCaption">스카우트구분</p>
	                    <div class="inputsAlign">
	                        <select name="" id="" class="lgThinSelect" style="margin-right: 50px;">
	                            <option value="1">중앙본부</option>
	                        </select>
	                        <select name="" id="" class="smThinSelect">
	                            <option value="">대번호</option>
	                        </select>
	                        <input type="text" name="" id="" class="lgThinInput" placeholder="내용을 입력해주세요...">
	                    </div>
	                </div>
	            </div>
	            <div class="btnContainer organ">
	                <a href="#lnk" class="basicButton white"><img src="/front_img/reset.png" alt="">취소</a>
	                <a href="#lnk" class="basicButton purple"><img src="/front_img/search.png" alt="">조회</a>
	            </div>
	        </form>
	        <div class="formContainer organ">
	            <div class="left">
	                <div class="tableContainer">
	                    <h2 class="subTitles">단위대 목록</h2>
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
	                                <tr>
	                                    <td>Cell01</td>
	                                    <td>Cell02</td>
	                                    <td>Cell03</td>
	                                    <td>Cell04</td>
	                                    <td>Cell05</td>
	                                    <td>Cell06</td>
	                                    <td>Cell07</td>
	                                    <td>Cell08</td>
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
	            <div class="right" style="background-color: var(--grey-50);">
	                <div class="fomrTabContent active">
	                    <form action="" class="organForm" style="background-color: #fff;">
	                        <h2 class="subTitles" style="padding: 16px 24px 0 24px;">단위대정보</h2>
	                        <div class="stackInputs bottomBd" style="padding: 12px 24px 16px 24px;">
	                            <div class="inputsContainer">
	                                <div class="inputBox">
	                                    <p class="inputCaption">대번호</p>
	                                    <input type="text"  name="" id="" placeholder="내용을 입력하세요…" class="smThinInput">
	                                </div>
	                                <div class="inputBox">
	                                    <p class="inputCaption">단위대명</p>
	                                    <input type="text"  name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
	                                </div>
	                                <div class="inputBox">
	                                    <p class="inputCaption">단위대 구분</p>
	                                    <select name="" id="" class="lgThinSelect">
	                                        <option value="1">중앙본부</option>
	                                    </select>
	                                </div>
	                                <div class="inputBox">
	                                    <p class="inputCaption">스카우트 구분</p>
	                                    <select name="" id="" class="lgThinSelect">
	                                        <option value="1"></option>
	                                        <option value="2"></option>
	                                        <option value="3"></option>
	                                    </select>
	                                </div>
	                            </div>
	                            <div class="inputsContainer">
	                                <div class="inputBox">
	                                    <p class="inputCaption">주소</p>
	                                    <div class="inputsAlign">
	                                        <div class="zip">
	                                            <input type="text" name="HPOSTCODE" id="HPOSTCODE" readonly class="lgThinInput" placeholder="00000">
	                                        </div>
	                                        <input type="text" name="get_post" id="get_post" class="lgThinInput post" style="margin-top: 0;" placeholder="내용을 입력하세요…">
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="inputsContainer">
	                                <div class="inputBox">
	                                    <p class="inputCaption">대표관리지도자</p>
	                                    <input type="text"  name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
	                                </div>
	                            </div>
	                            <div class="inputsContainer">
	                                <div class="inputBox">
	                                    <p class="inputCaption">지도자수</p>
	                                    <div class="inputsAlign">
	                                        <input type="text"  name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
	                                        <input type="text"  name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
	                                    </div>
	                                </div>
	                                <div class="inputBox">
	                                    <p class="inputCaption">대원수</p>
	                                    <div class="inputsAlign">
	                                        <input type="text"  name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
	                                        <input type="text"  name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="inputsContainer">
	                                <div class="inputBox">
	                                    <p class="inputCaption">월간지</p>
	                                    <input type="text"  name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
	                                </div>
	                            </div>
	                        </div>
	                        <div class="tableContainer relationContainer bottomBd">
	                            <h2 class="subTitles">지도자</h2>
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
	                                        <tr>
	                                            <td>1</td>
	                                            <td>지도자</td>
	                                            <td>년도</td>
	                                            <td>연맹</td>
	                                        </tr>
	                                    </tbody>
	                                </table>
	                            </div>
	                        </div>
	                        <div class="tableContainer relationContainer">
	                            <h2 class="subTitles">대원</h2>
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
	                        </div>
	                    </form>
	                </div>
	            </div>
	        </div>
	    </div>
	</body>
	<script>
		function fn_submit(){
		
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
</html>