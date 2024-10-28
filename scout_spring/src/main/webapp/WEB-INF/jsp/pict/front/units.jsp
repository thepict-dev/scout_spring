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
	<%
		pageContext.setAttribute("session", session.getAttribute("associationcode"));
	%>
	<%@ include file="./include/lnb.jsp" %>
	<c:import url="./include/header.jsp">
		<c:param name="pageParent" value="스카우트 통합 관리"/>
    	<c:param name="pageTitle" value="단위대 통합 관리"/>
    </c:import>

    <div class="contentsContainer">
        <form action="" id="search_fm_units" name="search_fm_units" method="get" class="organSearchForm">
        	<input type="hidden" id="TROOPNO" name="TROOPNO">
        	<input type="hidden" id="TROOPNAME" name="TROOPNAME">
            <h2 class="subTitles">조회 조건</h2>
            <div class="organSearch">
                <div class="searchContainer">
                    <p class="inputCaption">연도</p>
                    <div class="inputsAlign">
                        <input type="text" name="search_year" id="search_year" value="${pictVO.search_year}" placeholder="내용을 입력하세요…" class="smThinInput">
                        <a href="#lnk" class="smButton bigWhiteBtn" onclick="fn_year_reset()">초기화</a>
                    </div>
                </div>
                <!--셀렉트 1개 컨테이너(관리지도자) -->
	           	<c:if test="${authority eq 'sub_admin'}">
	                <div class="searchContainer">
	                    <p class="inputCaption">단위대 리스트</p>
	                    <div class="inputsAlign">
	                        <select name="target_troopno" id="target_troopno" class="lgThinSelect">
	                            
	                        </select>
	                    </div>
	                </div>
                </c:if>
                <c:if test="${authority eq 'jeonjong'}">
	                <div class="searchContainer">
	                    <p class="inputCaption">연맹/지구</p>
	                    <div class="inputsAlign">
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
	                </div>
	                <!-- 
	                <div class="searchContainer">
	                    <p class="inputCaption">법정생년월일</p>
	                    <input type="date" name="search_birthday" id="search_birthday" value="${pictVO.search_birthday}" class="lgThinInput">
	                </div>
	                 -->
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
                </c:if>
            </div>
            <input type="hidden" id="type" name="type">
            <div class="btnContainer organ">
                <a href="#lnk" class="basicButton white"><img src="/front_img/reset.png" alt="">취소</a>
                <a href="#lnk" class="basicButton purple" onclick="fn_search()"><img src="/front_img/search.png" alt="">조회</a>
            </div>
        </form>
        <div class="formContainer organ">
            <div class="left">
                <div class="tableContainer">
                    <div class="tableTopButton">
                    	<h2 class="subTitles">단위대 목록</h2>
                    	<div class="topButtonWrapper">
                    		<a href="#lnk" class="smButton" onclick="fn_order('number')">대번호순</a>
                    		<a href="#lnk" class="smButton" onclick="fn_order('text')">가나다순</a>
                    	</div>
                    </div>
                    <div class="tableWrapper unitTableWrapper">
                        <table>
                            <colgroup>
                                <col width="15%" />
                                <col width="15%" />
                                <col width="22%" />
                                <col width="18%" />
                                <col width="15%" />
                                <col width="15%" />
                            </colgroup>
                            <thead>
                                <tr>
	                                <th rowspan="2">지구연합회</th>
	                                <th rowspan="2" style="left: 105px">대번호</th>
	                                <th rowspan="2">단위대명</th>
	                                <th rowspan="2">스카우트구분</th>
	                                <th rowspan="2">단위대구분</th>
	                                <th rowspan="2">상세</th>
                                </tr>

                            </thead>
                            <tbody id="unit_list">
	                            <c:forEach var="units_list" items="${units_list}" varStatus="status">
									<tr onclick="fn_get_units_info(${units_list.TROOPNO})">
										<td>${units_list.PARENTTROOPNAME}</td>
										<td style="left: 105px">${units_list.DISPTROOPNO}</td>
										<td>${units_list.TROOPNAME}</td>
										<td>${units_list.SCOUTCLSNAME}</td>
										<td>${units_list.TROOPCLSNAME}</td>
										<td>${units_list.DETAIL}</td>
									</tr>
								</c:forEach>
							</tbody>
                        </table>
                    </div>
                    <div class="tableButtons">
                        <p>${units_cnt}<span>rows</span></p>
                        <div class="buttons">
                            <a href="#lnk" class="smButton" onclick="units_excel()"><img src="/front_img/download.png" alt="">엑셀저장</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="resizer" id="dragMe"><button></button></div>
            <div class="right" style="background-color: var(--grey-50);">
                <div class="fomrTabContent active unitScroll" style="height: 100%;">
                    <form action="" class="organForm">
                        <h2 class="subTitles" style="padding: 16px 24px 0 24px;">단위대정보</h2>
                        <div class="stackInputs bottomBd" style="padding: 12px 24px 16px 24px;">
                            <div class="inputsContainer">
                                <div class="inputBox">
                                    <p class="inputCaption">대번호</p>
                                    <span class="bindingText bindingSm" id="span_disptroopno"></span>
                                </div>
                                <div class="inputBox">
                                    <p class="inputCaption">단위대명</p>
                                    <span class="bindingText" id="span_troopname"></span>
                                </div>
                                <div class="inputBox">
                                    <p class="inputCaption">단위대 구분</p>
                                    <span class="bindingText" id="span_troop"></span>
                                </div>
                                <div class="inputBox">
                                    <p class="inputCaption">스카우트 구분</p>
                                    <span class="bindingText" id="span_scoutclsname"></span>
                                </div>
                            </div>
                            <div class="inputsContainer">
                                <div class="inputBox">
                                    <p class="inputCaption">주소</p>
                                    <div class="inputsAlign">
                                        <div class="zip">
                                    		<span class="bindingText" style="width: 73px;" id="span_postcode"></span>
                                        </div>
                                   		<span class="bindingText" style="width: 443px;" id="span_addr"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="inputsContainer">
                                <div class="inputBox">
                                    <p class="inputCaption">대표관리지도자 성명</p>
                                    <span class="bindingText" id="span_leader_name"></span>
                                </div>
                                <div class="inputBox">
                                    <p class="inputCaption">대표관리지도자 연락처</p>
                                    <span class="bindingText" id="span_leader_mobile"></span>
                                </div>
                                <div class="inputBox">
                                    <p class="inputCaption">대표관리지도자 이메일</p>
                                    <span class="bindingText" id="span_leader_email"></span>
                                </div>
                            </div>
                            <div class="inputsContainer">
                                <div class="inputBox">
                                    <p class="inputCaption">지도자수</p>
                                    <div class="inputsAlign">
                                        <span class="bindingText" id="span_leadercnt"></span>
                                    </div>
                                </div>
                                <div class="inputBox">
                                    <p class="inputCaption">지도자수(남)</p>
                                    <div class="inputsAlign">
                                        <span class="bindingText" id="span_leadercnt_m"></span>
                                    </div>
                                </div>
                                <div class="inputBox">
                                    <p class="inputCaption">지도자수(여)</p>
                                    <div class="inputsAlign">
                                        <span class="bindingText" id="span_leadercnt_w"></span>
                                    </div>
                                </div>
							</div>
							<div class="inputsContainer">
                                <div class="inputBox">
                                    <p class="inputCaption">대원수</p>
                                    <div class="inputsAlign">
                                        <span class="bindingText" id="span_scoutcnt"></span>
                                    </div>
                                </div>
                                <div class="inputBox">
                                    <p class="inputCaption">대원수(남)</p>
                                    <div class="inputsAlign">
                                        <span class="bindingText" id="span_scoutcnt_m"></span>
                                    </div>
                                </div>
                                <div class="inputBox">
                                    <p class="inputCaption">대원수(여)</p>
                                    <div class="inputsAlign">
                                        <span class="bindingText" id="span_scoutcnt_w"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="inputsContainer">
                                <div class="inputBox">
                                    <p class="inputCaption">월간지(부)</p>
                                    <span class="bindingText" id="span_scoutmaga"></span>
                                </div>
                                <div class="inputBox">
                                    <p class="inputCaption">월간지(총액)</p>
                                    <span class="bindingText" id="span_scoutmaga_won"></span>
                                </div>
                            </div>
		                    <div class="tableButtons rights" style="justify-content: flex-end;">
		                    	<a href="#lnk" onclick="fn_units_excel()" class="smButton"><img src="/front_img/download.png" alt="">전체 엑셀저장</a>
                                <a href="#lnk" class="smButton"><img src="/front_img/doc.png" alt="">청소년단체등록확인서</a>
                                <a href="#lnk" class="smButton"><img src="/front_img/doc.png" alt="">가맹등록신청서</a>
		                    </div>
                        </div>
                        <div class="tableContainer orgContainer unitTable bottomBd">
                            <h2 class="subTitles">지도자 <span id="leader_cnt"></span></h2>
                            <div class="tableWrapper" style="height: 250px;">
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
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th>회원번호</th>
                                            <th>승인여부</th>
                                            <th>성명</th>
                                            <th>구분</th>
                                            <th>연락처</th>
                                            <th>생년월일</th>
                                            <th>이메일</th>
                                            <th>평생회원</th>
                                            <th>등록비</th>
                                            <th>연맹지구독</th>
                                            <th>연공</th>
                                            <th>성별</th>
                                            <th>비고</th>
                                        </tr>
                                    </thead>
                                    <tbody id="unit_leader_list">
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tableContainer orgContainer unitTable">
                            <h2 class="subTitles">대원 <span id="scout_cnt"></span></h2>
                            <div class="tableWrapper" style="height: 250px;">
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
                                            <th>승인여부</th>
                                            <th>성명</th>
                                            <th>구분</th>
                                            <th>연락처</th>
                                            <th>생년월일</th>
                                            <th>이메일</th>
                                            <th>평생회원</th>
                                            <th>등록비</th>
                                            <th>연맹지구독</th>
                                            <th>연공</th>
                                            <th>성별</th>
                                            <th>학년</th>
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
			var year = '${pictVO.search_year}'
			if(year == null || year == undefined || year == '') year = '${current_year}'
		    $('#search_year').val(year)
		    var authority = '${authority}'
		    var login_associationcode = '${session}'
			if(login_associationcode != '200' && authority == 'jeonjong'){
				fn_troopclscode_search()
				var code = '${pictVO.search_associationcode}';
				
				$('#search_associationcode').val(code)
				$("select[name=search_associationcode]").attr("disabled", true);
				fn_get_unitylist_organ()
				$('.contentsContainer select').niceSelect('update')	
			}
		    if(authority == 'sub_admin'){
		    	var troopno = "${troopno}"
		    	var troopname = "${troopname}"
		    	var asso = "${asso}"
		    	
		    	$('#target_troopno').val(troopno)
		    	
		    	var html = '<option value="'+ troopno +'">'+ troopname +'</option>'
		    	$('#target_troopno').append(html)
		    	$("select[name=target_troopno]").attr("disabled", true);
		    	$('.contentsContainer select').niceSelect('update')	
		    	//fn_search()
		    	fn_get_units_info(troopno)
		    	
		    }
		});

		function fn_year_reset(){
			$('#search_year').val('${current_year}')
		}

		function fn_order(type){

			$('#type').val(type);
			$("#search_fm_units").attr("action", "/admin/front/units");
			$("#search_fm_units").submit();

		}
		//단위대 엑셀
		function units_excel(){
			if(confirm("해당 리스트를 엑셀파일로 다운로드 하시겠습니까?")){
				$("#search_fm_units").attr("action", "/admin/units_excel");
				$("#search_fm_units").submit();
			}
			
		}
		
		//단위대 소속 엑셀
		function fn_units_excel(){
			if(confirm("해당 단위대 소속 회원 리스트를 엑셀파일로 다운로드 하시겠습니까?")){
				$("#search_fm_units").attr("action", "/admin/fn_units_excel");
				$("#search_fm_units").submit();
			}
			
		}
		
		function fn_search(type){
			$('#type').val('number');
			$("#search_fm_units").attr("action", "/admin/front/units");
			$("#search_fm_units").submit();
		}
		
		function fn_get_units_info(troopno){
			$('#initial-loading').css('display', 'flex')
			//엑셀 다운받기 위함
			$('#TROOPNO').val(troopno)
			var param = {
				troopno : troopno+"",
				year : $('#search_year').val(),
			}
			$('#unit_leader_list').children().remove();
			$('#unit_scout_list').children().remove();
			$.ajax({
				url : "/admin/fn_get_units_info"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, success : function(data, status, xhr) {
					console.log(data)
					if(data.rst){
						$('#span_disptroopno').text(data.rst.disptroopno)
						$('#span_troopname').text(data.rst.troopname)
						
						//엑셀 다운받기 위함
						$('#TROOPNAME').val(data.rst.troopname)
						
						var troopclsname = ""
						if(data.rst.troopclscode1 == '01') troopclsname = '학교대'
						if(data.rst.troopclscode1 == '02') troopclsname = '지역대'
						if(data.rst.troopclscode1 == '03') troopclsname = '동우대'
						if(data.rst.troopclscode1 == '04') troopclsname = '특수대'
						$('#span_troop').text(troopclsname + " > " + data.rst.troopclsname)
						$('#span_scoutclsname').text(data.rst.scoutclsname)
						$('#span_postcode').text(data.rst.postcode)
						$('#span_addr').text(data.rst.addr)
						
						//$('#span_leaderinfo').text(data.rst.leaderinfotext)	//얘 왜안댈까
						var leader_name = ''
						var leader_mobile = ''
						var leader_email = ''
						if(data.rst.leaderinfotext){
							var arr = data.rst.leaderinfotext.split(',')
							if(arr[0]) leader_name = arr[0]
							if(arr[1]) leader_mobile = arr[1]
							if(arr[2]) leader_email = arr[2]
						}
						//$('#span_leader_name').text(data.rst.leaderinfotext)	//얘 왜안댈까
						$('#span_leader_name').text(leader_name)
						$('#span_leader_mobile').text(leader_mobile)
						$('#span_leader_email').text(leader_email)
						
						
						$('#span_leadercnt').text(Number(data.rst.leadermcnt) + Number(data.rst.leaderwcnt))
						$('#span_leadercnt_m').text(data.rst.leadermcnt)
						$('#span_leadercnt_w').text(data.rst.leaderwcnt)
						
						
						$('#span_scoutcnt').text(Number(data.rst.scoutmcnt) + Number(data.rst.scoutwcnt))
						$('#span_scoutcnt_m').text(data.rst.scoutmcnt)
						$('#span_scoutcnt_w').text(data.rst.scoutwcnt)
						
						$('#span_scoutmaga').text(Number(data.rst.leadermagazinecnt) + Number(data.rst.scoutmagazinecnt))
						var won = Number(data.rst.leadermagazinefee) + Number(data.rst.scoutmagazinefee);
						$('#span_scoutmaga_won').text(won.toLocaleString('ko-KR'))
						
						
					}
					if(data.leader_list.length > 0){
						console.log("리더 있어")
						var arr = data.leader_list;
						var leader_html = ""
						for(var i=0; i<arr.length; i++){
							var sex = "";
							if(arr[i].sex == 'M') sex = "남";
							if(arr[i].sex == 'W') sex = "여";
							
							leader_html += '<tr>'+
								'<td>' + arr[i].memberno + '</td>' +
								'<td>' + arr[i].confirmy + '</td>'+
								'<td>' + arr[i].kname + '</td>'+
								'<td>' + arr[i].leaderpositionname + '</td>'+
								'<td>' + arr[i].mobile + '</td>'+
								'<td>' + arr[i].birthday + '</td>'+
								'<td>' + arr[i].email + '</td>'+
								'<td>' + arr[i].lifemembery + '</td>'+
								'<td>' + arr[i].entryfee + '</td>'+
								'<td>' + arr[i].scoutmagacnt + '</td>'+
								'<td>' + arr[i].leadercnt + '</td>'+
								'<td>' + sex + '</td>'+
								'<td></td>'+
								'</tr>';
						}
						$('#unit_leader_list').append(leader_html)
						$('.contentsContainer select').niceSelect('update')
					}
					if(data.scout_list.length > 0){
						console.log("대원 있어")
						var arr = data.scout_list
						var scout_html = ""
						
						for(var i=0; i<arr.length; i++){
							var sex = "";
							if(arr[i].sex == 'M') sex = "남";
							if(arr[i].sex == 'W') sex = "여";
							
							scout_html += '<tr>'+
							'<td>' + arr[i].memberno + '</td>' +
							'<td>' + arr[i].confirmy + '</td>'+
							'<td>' + arr[i].kname + '</td>'+
							'<td>' + arr[i].scoutclsname + '</td>'+
							'<td>' + arr[i].mobile + '</td>'+
							'<td>' + arr[i].birthday + '</td>'+
							'<td>' + arr[i].email + '</td>'+
							'<td>' + arr[i].lifemembery + '</td>'+
							'<td>' + arr[i].entryfee + '</td>'+
							'<td>' + arr[i].scoutmagacnt + '</td>'+
							'<td>' + arr[i].scoutcnt + '</td>'+
							'<td>' + sex + '</td>'+
							'<td>' + arr[i].scoutschoolyear + '</td>'+
							'</tr>';
						}
						
						
						//총건 데이터 바인딩
						$('#leader_cnt').text('(' + data.leader_list.length + '건)')
						$('#scout_cnt').text('(' + data.scout_list.length + '건)')
						
						$('#unit_scout_list').append(scout_html)
						$('.contentsContainer select').niceSelect('update')
					}
					$('#initial-loading').css('display', 'none')
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
					$('#initial-loading').css('display', 'none')
					$('#error').css('display', 'flex')
				}
			});
		}
		
		function fn_get_unitylist_organ(){
			var param = {
					associationcode : $('#search_associationcode').val(),
			}
			$.ajax({
				url : "/admin/get_unity_list"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : true
				, success : function(data, status, xhr) {
					var html ='<option value="">전체</option>';
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
				url : "/admin/troopclscode1_search"
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