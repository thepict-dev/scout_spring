<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>	
<html lang="ko">
	<%@ include file="./include/head.jsp" %>
	<script src="/js/script.js" defer></script>
<body>
	<%@ include file="./include/lnb.jsp" %>
	<%@ include file="./include/header.jsp" %>

    <div class="contentsContainer">
        <form action="" id="search_fm_units" name="search_fm_units" method="get" class="organSearchForm">
            <h2 class="subTitles">조회 조건</h2>
            <div class="organSearch">
                <div class="searchContainer">
                    <p class="inputCaption">연도</p>
                    <div class="inputsAlign">
                        <input type="text"  name="YEAR" id="" placeholder="내용을 입력하세요…" class="smThinInput">
                        <a href="#lnk" class="smButton bigWhiteBtn">초기화</a>
                    </div>
                </div>
                <div class="searchContainer">
                    <p class="inputCaption">연맹/지구</p>
                    <select name="search_associationcode" id="search_associationcode" onchange="fn_get_unitylist_organ()" class="smThinSelect">
						<c:forEach var="association_list" items="${association_list}" varStatus="status">
							<option value="${association_list.ASSOCIATIONCODE}" <c:if test="${association_list.ASSOCIATIONCODE eq pictVO.search_associationcode}">selected</c:if>> ${association_list.ASSOCIATIONNAME}</option>
						</c:forEach>
					</select>
					<select name="search_parenttroopno" id="search_parenttroopno" class="smThinSelect">
						<option value="">전체</option>
						<c:forEach var="unity_list" items="${unity_list}" varStatus="status">
							<option value="${unity_list.TROOPNO}" <c:if test="${unity_list.TROOPNO eq pictVO.search_parenttroopno}">selected</c:if>>${unity_list.TROOPNAME}</option>
						</c:forEach>
					</select>
                </div>
                <div class="searchContainer">
                    <p class="inputCaption">법정생년월일</p>
                    <input type="date" name="search_birthday" id="search_birthday" value="${pictVO.search_birthday}" class="lgThinInput">
                </div>
                <div class="searchContainer">
                    <p class="inputCaption">단위대 구분</p>
                    <div class="inputsAlign">
                        <select name="search_troopcls" id="search_troopcls" class="lgThinSelect" onchange="fn_troopclscode_search()">
                        	<option value="" <c:if test="${pictVO.search_troopcls eq ''}">selected</c:if>>-----</option>
                            <option value="01" <c:if test="${pictVO.search_troopcls eq '01'}">selected</c:if>>학교대</option>
                            <option value="02" <c:if test="${pictVO.search_troopcls eq '02'}">selected</c:if>>지역대</option>
                            <option value="03" <c:if test="${pictVO.search_troopcls eq '03'}">selected</c:if>>동우대</option>
                            <option value="04" <c:if test="${pictVO.search_troopcls eq '04'}">selected</c:if>>특수대</option>
                        </select>
                        <select name="search_troopcls2" id="search_troopcls2" class="lgThinSelect">
                            <option value="">-----</option>
                        </select>
                        <select name="search_type" id="search_type" class="smThinSelect">
                            <option value="name" <c:if test="${pictVO.search_type eq 'name'}">selected</c:if>>성명</option>
                            <option value="memberno" <c:if test="${pictVO.search_type eq 'memberno'}">selected</c:if>>회원번호</option>
                        </select>
                        <input type="text" name="search_text" id="" class="smThinInput" placeholder="내용을 입력해주세요..." value="${pictVO.search_text}">
                    </div>
                </div>
                <div class="searchContainer">
                    <p class="inputCaption">스카우트구분</p>
                    <div class="inputsAlign">
                        <select name="search_level" id="search_level" class="lgThinSelect" style="margin-right: 50px;">
                            <option value="" <c:if test="${pictVO.search_level eq ''}">selected</c:if>>-----</option>
                            <option value="01" <c:if test="${pictVO.search_level eq '01'}">selected</c:if>>비버</option>
                            <option value="02" <c:if test="${pictVO.search_level eq '02'}">selected</c:if>>컵</option>
                            <option value="03" <c:if test="${pictVO.search_level eq '03'}">selected</c:if>>스카우트</option>
                            <option value="04" <c:if test="${pictVO.search_level eq '04'}">selected</c:if>>벤처</option>
                            <option value="99" <c:if test="${pictVO.search_level eq '99'}">selected</c:if>>복합</option>
                            <option value="05" <c:if test="${pictVO.search_level eq '05'}">selected</c:if>>로버</option>
                            <option value="06" <c:if test="${pictVO.search_level eq '06'}">selected</c:if>>기타</option>
                        </select>
                        <select name="search_type2" id="search_type2" class="smThinSelect">
                            <option value="name" <c:if test="${pictVO.search_type2 eq 'name'}">selected</c:if>>대이름</option>
                            <option value="number" <c:if test="${pictVO.search_type2 eq 'number'}">selected</c:if>>대번호</option>
                        </select>
                        <input type="text" name="search_text2" id="search_text2" class="lgThinInput" placeholder="내용을 입력해주세요..." value="${pictVO.search_text2}">
                    </div>
                </div>
            </div>
            <div class="btnContainer organ">
                <a href="#lnk" class="basicButton white"><img src="/front_img/reset.png" alt="">취소</a>
                <a href="#lnk" class="basicButton purple" onclick="fn_search()"><img src="/front_img/search.png" alt="">조회</a>
            </div>
        </form>
        <div class="formContainer organ">
            <div class="left">
                <div class="tableContainer">
                    <h2 class="subTitles">단위대 목록</h2>
                    <div class="tableWrapper unitTableWrapper">
                        <table>
                            <colgroup>
                                <col width="5.2%" />
                                <col width="5.2%" />
                                <col width="5.2%" />
                                <col width="5.2%" />
                                <col width="5.2%" />
                                <col width="4.5%" />
                                <col width="5.9%" />
                                <col width="5.2%" />
                                <col width="5.2%" />
                                <col width="5.2%" />
                                <col width="5.2%" />
                                <col width="5.2%" />
                                <col width="5.2%" />
                                <col width="5.2%" />
                                <col width="5.2%" />
                                <col width="5.2%" />
                                <col width="5.2%" />
                                <col width="5.2%" />
                                <col width="5.2%" />
                            </colgroup>
                            <thead>
                                <tr>
	                                <th rowspan="2">지구연합회</th>
	                                <th rowspan="2" style="left: 95.5px;">대번호</th>
	                                <th rowspan="2">단위대명</th>
	                                <th rowspan="2">스카우트구분</th>
	                                <th rowspan="2">단위대구분</th>
	                                <th rowspan="2">상세</th>
	                                <th rowspan="2">최종대활동년도</th>
	                                <th colspan="2" style="border-bottom: 0">2023년도 승인자수</th>
	                                <th colspan="2" style="border-bottom: 0">2024년도 승인자수</th>
	                                <th colspan="2" style="border-bottom: 0">당해년도 납부자수</th>
	                                <th colspan="2" style="border-bottom: 0">지도자등록유형(승인)</th>
	                                <th colspan="3" style="border-bottom: 0">대원등록유형(승인)</th>
	                                <th rowspan="2">지구연합회</th>
                                </tr>
                                <tr>
                                	<th style="position: unset; z-index: 2;">남자대원수</th>
                                	<th style="position: unset; z-index: 2;">여자대원수</th>
                                	<th style="position: unset; z-index: 2;">남자대원수</th>
                                	<th style="position: unset; z-index: 2;">여자대원수</th>
                                	<th style="position: unset; z-index: 2;">남자대원수</th>
                                	<th style="position: unset; z-index: 2;">여자대원수</th>
                                	<th style="position: unset; z-index: 2;">남자대원수</th>
                                	<th style="position: unset; z-index: 2;">여자대원수</th>
                                	<th style="position: unset; z-index: 2;">남자대원수</th>
                                	<th style="position: unset; z-index: 2;">여자대원수</th>
                                	<th style="position: unset; z-index: 2;">여자대원수</th>
                                </tr>
                            </thead>
                            <tbody id="unit_list"></tbody>
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
                <div class="fomrTabContent active unitScroll" style="height: 100%;">
                    <form action="" class="organForm">
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
                        <div class="tableContainer orgContainer unitTable bottomBd">
                            <h2 class="subTitles">지도자</h2>
                            <div class="tableWrapper">
                                <table>
                                    <colgroup>
                                        <col width="5%" />
                                        <col width="7.1%" />
                                        <col width="7.1%" />
                                        <col width="7.1%" />
                                        <col width="7.1%" />
                                        <col width="7.1%" />
                                        <col width="7.1%" />
                                        <col width="8.2%" />
                                        <col width="7.1%" />
                                        <col width="8.1%" />
                                        <col width="7.1%" />
                                        <col width="7.1%" />
                                        <col width="7.1%" />
                                        <col width="7.1%" />
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th>회원번호</th>
                                            <th>성명</th>
                                            <th>지도자직책</th>
                                            <th>단위대직책</th>
                                            <th>면제코드</th>
                                            <th>월간지구독부수</th>
                                            <th>휴대전화</th>
                                            <th>이메일</th>
                                            <th>연공</th>
                                            <th>훈련과정</th>
                                            <th>포상</th>
                                            <th>평생회원</th>
                                            <th>승인여부</th>
                                            <th>관리자지도여부</th>
                                        </tr>
                                    </thead>
                                    <tbody id="unit_leader_list"></tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tableContainer orgContainer unitTable">
                            <h2 class="subTitles">대원</h2>
                            <div class="tableWrapper">
                                <table>
                                    <colgroup>
                                        <col width="5.2%" />
                                        <col width="7.6%" />
                                        <col width="7.6%" />
                                        <col width="7.6%" />
                                        <col width="7.6%" />
                                        <col width="7.6%" />
                                        <col width="7.6%" />
                                        <col width="7.6%" />
                                        <col width="10%" />
                                        <col width="7.6%" />
                                        <col width="7.6%" />
                                        <col width="7.6%" />
                                        <col width="7.6%" />
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th>회원번호</th>
                                            <th>성명</th>
                                            <th>스카우트구분</th>
                                            <th>스카우트직책</th>
                                            <th>면제코드</th>
                                            <th>월간지구독부수</th>
                                            <th>학년</th>
                                            <th>휴대전화</th>
                                            <th>이메일</th>
                                            <th>연공</th>
                                            <th>승인여부</th>
                                            <th>진급신청내역</th>
                                            <th>진급승인내역</th>
                                        </tr>
                                    </thead>
                                    <tbody id="unit_scout_list"></tbody>
                                </table>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
	<%@ include file="./include/loading.jsp" %>
    <%@ include file="./include/error_page.jsp" %>
    
	
    
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		$(document).ready(function() {
		    fn_troopclscode_search()
		});
		
		function fn_search(){
			$("#search_fm_units").attr("action", "/front/units");
			$("#search_fm_units").submit();
		}
		function fn_get_unitylist_organ(){
			var param = {
					associationcode : $('#search_associationcode').val(),
			}
			$.ajax({
				url : "/get_unity_list"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : true
				, success : function(data, status, xhr) {
					var html ='<option value="">-----</option>';
					if(data.list){
						var arr = data.list;
						$('#search_parenttroopno').children().remove();
						for(var i=0; i<arr.length; i++){
							html += '<option value="'+ arr[i].troopno +'">'+ arr[i].troopname +'</option>'
						}
						$('#search_parenttroopno').append(html)
						$('.contentsContainer select').niceSelect('update')
					}
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
		}
		function fn_troopclscode_search(){
			var param = {
				troopclscode1 : $('#search_troopcls').val(),
			}
			$.ajax({
				url : "/troopclscode1_search"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : true
				, success : function(data, status, xhr) {
					var html ='<option value="">-----</option>';
					if(data.list){
						var arr = data.list;
						$('#search_troopcls2').children().remove();
						var vo_value = '${pictVO.search_troopcls2}'
						var select = ""
						
						for(var i=0; i<arr.length; i++){
							if(vo_value == arr[i].troopclscode2) select = "selected"
							else select = ""
							html += '<option value="'+ arr[i].troopclscode2 +'" '+select+'>'+ arr[i].troopclsname +'</option>'
						}
						$('#search_troopcls2').append(html)
						$('.contentsContainer select').niceSelect('update')
					}
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
		}
	</script>
</body>
</html>