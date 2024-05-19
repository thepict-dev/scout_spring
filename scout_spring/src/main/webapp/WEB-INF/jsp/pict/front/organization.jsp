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
        <form action="" class="organSearchForm" onsubmit="return false;">
            <h2 class="subTitles">조회 조건</h2>
            <div class="organSearch">
                <div class="searchContainer">
                    <p class="inputCaption">연맹/지구</p>
                    <div class="inputsAlign">
                        <select name="associationcode_search" id="associationcode_search" onchange="fn_get_unitylist_organ()" class="lgThinSelect">
							<c:forEach var="association_list" items="${association_list}" varStatus="status">
								<option value="${association_list.ASSOCIATIONCODE}"> ${association_list.ASSOCIATIONNAME}</option>
							</c:forEach>
						</select>
						<select name="unitycode_search" id="unitycode_search" class="lgThinSelect">
							<option value="">전체</option>
							<c:forEach var="unity_list" items="${unity_list}" varStatus="status">
								<option value="${unity_list.TROOPNO}">${unity_list.TROOPNAME}</option>
							</c:forEach>
						</select>
                    </div>
                </div>
                <div class="searchContainer">
                    <p class="inputCaption">등급</p>
                    <div class="inputsAlign">
                        <select name="trooplevelcode_search" id="trooplevelcode_search" class="lgThinSelect">
                            <option value="01">중앙</option>
                            <option value="02">지방/특수연맹</option>
                            <option value="03">지구연합회</option>
                            <option value="04">단</option>
                            <option value="05" selected>단위대</option>
                        </select>
                    </div>
                </div>
                <div class="searchContainer">
                    <p class="inputCaption">단위대 구분</p>
                    <div class="inputsAlign">
                        <select name="troopclscode1_search" id="troopclscode1_search" class="lgThinSelect" onchange="fn_troopclscode_search()">
                        	<option value="">-----</option>
                            <option value="01">학교대</option>
                            <option value="02">지역대</option>
                            <option value="03">동우대</option>
                            <option value="04">특수대</option>
                        </select>
                        <select name="troopclscode2_search" id="troopclscode2_search" class="lgThinSelect">
                            <option value="">-----</option>
                        </select>
                    </div>
                </div>
                <div class="searchContainer">
                    <p class="inputCaption">관할교육청</p>
                    <div class="inputsAlign">
                        <select name="parentorgno_search" id="parentorgno_search" class="lgThinSelect">
                            <option value="">-----</option>
                        </select>
                    </div>
                </div>
                <div class="searchContainer">
                    <p class="inputCaption">스카우트구분</p>
                    <div class="inputsAlign">
                        <select name="scoutclscode_search" id="scoutclscode_search" class="lgThinSelect" style="margin-right: 50px;">
                            <option value="">-----</option>
                            <option value="01">비버</option>
                            <option value="02">컵</option>
                            <option value="03">스카우트</option>
                            <option value="04">벤처</option>
                            <option value="99">복합</option>
                            <option value="05">로버</option>
                            <option value="06">기타</option>
                        </select>
                        <select name="search_type" id="search_type" class="smThinSelect">
                            <option value="number">대번호</option>
                            <option value="text">단위대명</option>
                        </select>
                        <input type="text" name="search_text" id="search_text" class="smThinInput" placeholder="내용을 입력해주세요..." onkeypress="if(event.keyCode == 13){organ_search();}">
                    </div>
                </div>
            </div>
            <div class="btnContainer organ">
                <a href="#lnk" class="basicButton white"><img src="/front_img/reset.png" alt="">취소</a>
                <a href="#lnk" class="basicButton purple" onclick="organ_search()"><img src="/front_img/search.png" alt="">조회</a>
            </div>
        </form>
        <div class="formContainer organ">
            <div class="left">
                <div class="tableContainer">
                    <h2 class="subTitles">단위대 목록</h2>
                    <div class="tableWrapper orgTableWrapper">
                        <table>
                            <colgroup>
                                <col width="10%" />
                                <col width="8%" />
                                <col width="10%" />
                                <col width="9%" />
                                <col width="9%" />
                                <col width="10%" />
                                <col width="10%" />
                                <col width="10%" />
                                <col width="11%" />
                                <col width="11%" />
                            </colgroup>
                            <thead>
                                <tr>
	                                <th rowspan="2">지구연합회</th>
	                                <th rowspan="2" style="left: 95.5px;">대번호</th>
	                                <th rowspan="2">단위대명</th>
	                                <th rowspan="2">스카우트구분</th>
	                                <th rowspan="2">단위대구분</th>
	                                <th rowspan="2">최종대활동년도</th>
	                                <th colspan="4" style="border-bottom: 0;text-align: center;">최종활동년도</th>
                                </tr>
                                <tr>
                                	<th style="z-index: 2;">남자대원수</th>
                                	<th style="z-index: 2;">여자대원수</th>
                                	<th style="z-index: 2;">남자지도자수</th>
                                	<th style="z-index: 2;">여자지도자수</th>
                                </tr>
                            </thead>
                            <tbody id="org_list"></tbody>
                        </table>
                    </div>
                    <div class="tableButtons">
                        <p id="organ_cnt">0 rows</p>
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
                    <li>상세정보</li>
                </ul>
                <div class="fomrTabContent active">
                    <form action="" class="organForm">
                        <h2 class="subTitles" style="padding: 16px 24px 0 24px;">기본정보</h2>
                        <div class="stackInputs bottomBd" style="padding: 12px 24px 16px 24px;">
                            <div class="inputsContainer">
                                <div class="inputBox">
                                    <p class="inputCaption">연맹/지구</p>
                                    <div class="inputsAlign">
                                        <select name="ASSOCIATIONCODE" id="ASSOCIATIONCODE" onchange="fn_get_unitylist()" class="smThinSelect">
											<c:forEach var="association_list" items="${association_list}" varStatus="status">
												<option value="${association_list.ASSOCIATIONCODE}"> ${association_list.ASSOCIATIONNAME}</option>
											</c:forEach>
										</select>
										<select name="PARENTTROOPNO" id="PARENTTROOPNO" class="lgThinSelect">
											<option value="">전체</option>
											<c:forEach var="unity_list" items="${unity_list}" varStatus="status">
												<option value="${unity_list.TROOPNO}">${unity_list.TROOPNAME}</option>
											</c:forEach>
										</select>
                                    </div>
                                </div>
                                <div class="inputBox">
                                    <p class="inputCaption">등급</p>
                                    <select name="TROOPLEVELCODE" id="TROOPLEVELCODE" class="lgThinSelect">
			                            <option value="01">중앙</option>
			                            <option value="02">지방/특수연맹</option>
			                            <option value="03">지구연합회</option>
			                            <option value="04">단</option>
			                            <option value="05" selected>단위대</option>
			                        </select>
                                </div>
                                <div class="inputBox">
                                    <p class="inputCaption">단위대 구분</p>
                                    <div class="inputsAlign">
                                        <select name="TROOPCLSCODE1" id="TROOPCLSCODE1" class="lgThinSelect" onchange="fn_troopclscode()">
				                        	<option value="">-----</option>
				                            <option value="01">학교대</option>
				                            <option value="02">지역대</option>
				                            <option value="03">동우대</option>
				                            <option value="04">특수대</option>
				                        </select>
				                        <select name="TROOPCLSCODE2" id="TROOPCLSCODE2" class="lgThinSelect">
				                            <option value="">-----</option>
				                        </select>
                                    </div>
                                </div>
                                <div class="inputBox">
                                    <p class="inputCaption">스카우트 구분</p>
                                    <select name="SCOUTCLSCODE" id="SCOUTCLSCODE" class="lgThinSelect">
			                            <option value="">-----</option>
			                            <option value="01">비버</option>
			                            <option value="02">컵</option>
			                            <option value="03">스카우트</option>
			                            <option value="04">벤처</option>
			                            <option value="99">복합</option>
			                            <option value="05">로버</option>
			                            <option value="06">기타</option>
			                        </select>
                                </div>
                            </div>
                            <div class="inputsContainer">
                                <div class="inputBox">
                                    <p class="inputCaption">대번호</p>
                                    <div class="inputsAlign">
                                        <input type="text" name="DISPTROOPNO" id="DISPTROOPNO" placeholder="내용을 입력하세요…" class="smThinInput">
                                    </div>
                                </div>
                                <div class="inputBox">
                                    <p class="inputCaption">결성일</p>
                                    <input type="date" name="UNREGDAY" id="UNREGDAY" class="lgThinInput">
                                </div>
                            </div>
                            <div class="inputsContainer">
                                <div class="inputBox">
                                    <p class="inputCaption">영문명</p>
                                    <input type="text" name="ENGTROOPNAME" id="ENGTROOPNAME" placeholder="내용을 입력하세요…" class="lgThinInput">
                                </div>
                            </div>
                            <div class="inputsContainer">
                                <div class="inputBox">
                                    <p class="inputCaption">단위대명</p>
                                    <div class="inputsAlign">
                                        <input type="text" name="TROOPNAME" id="TROOPNAME" placeholder="내용을 입력하세요…" class="lgThinInput">
                                        <a href="#lnk" class="smButton bigWhiteBtn">육성단체지정</a>
                                    </div>
                                </div>
                                <div class="inputBox">
                                    <p class="inputCaption">관할교육청</p>
                                    <div class="inputsAlign">
                                		<span class="bindingText" id="SCHOOLHALL"></span>
                                		<input type="text" name="ORGNO" id="ORGNO" class="lgThinInput" readonly>
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="inputsContainer">
                                <div class="inputBox">
                                    <p class="inputCaption">집주소</p>
                                    <div class="zip">
                                        <input type="text" name="POSTCODE" id="POSTCODE" readonly class="lgThinInput">
                                        <a href="#lnk" class="normalButton white" id="searchZip">우편번호 검색</a>
                                    </div>
                                    <input type="text" name="ADDR" id="ADDR" class="lgThinInput post">
                                </div>
                            </div>
                            <div class="inputsContainer">
                                <div class="inputBox">
                                    <p class="inputCaption">전화</p>
                                    <input type="text" name="TELNO" id="TELNO" placeholder="내용을 입력하세요…" class="lgThinInput">
                                </div>
                                <div class="inputBox">
                                    <p class="inputCaption">팩스</p>
                                    <input type="text"  name="FAXNO" id="FAXNO" placeholder="내용을 입력하세요…" class="lgThinInput">
                                </div>
                            </div>
                            <div class="inputsContainer">
                                <div class="inputBox">
                                    <p class="inputCaption">비고</p>
                                    <textarea name="BIGO" id="BIGO" cols="100"></textarea>
                                </div>
                            </div>
	                        <div class="inputsContainer">
	                            <div class="inputBox">
	                                <p class="inputCaption">최종등록년도</p>
	                                <span class="bindingText"></span>
	                            </div>
	                            <div class="inputBox">
	                                <p class="inputCaption">대원수</p>
	                                <span class="bindingText"></span>
	                            </div>
	                            <div class="inputBox">
	                                <p class="inputCaption">남자</p>
	                                <span class="bindingText"></span>
	                            </div>
	                            <div class="inputBox">
	                                <p class="inputCaption">여자</p>
	                                <span class="bindingText"></span>
	                            </div>
	                        </div>
	                        <div class="inputsContainer">
	                            <div class="inputBox">
	                                <p class="inputCaption">최종등록일</p>
	                                <span class="bindingText"></span>
	                            </div>
	                            <div class="inputBox">
	                                <p class="inputCaption">지도자수</p>
	                                <span class="bindingText"></span>
	                            </div>
	                            <div class="inputBox">
	                                <p class="inputCaption">남자</p>
	                                <span class="bindingText"></span>
	                            </div>
	                            <div class="inputBox">
	                                <p class="inputCaption">여자</p>
	                                <span class="bindingText"></span>
	                            </div>
	                        </div>
		                    <div class="tableButtons rights">
	                            <a href="#lnk" class="smButton"><img src="/front_img/refresh.png" alt="">조직이전</a>
	                            <div class="buttons">
	                                <a href="#lnk" class="smButton"><img src="/front_img/doc.png" alt="">청소년단체등록확인서</a>
	                                <a href="#lnk" class="smButton"><img src="/front_img/doc.png" alt="">가맹등록확인서</a>
	                                <a href="#lnk" class="smButton"><img src="/front_img/download.png" alt="">수정</a>
	                            </div>
		                    </div>
                        </div>
                        <div class="tableContainer orgContainer bottomBd">
                            <h2 class="subTitles">관리지도자</h2>
                            <div class="tableWrapper">
                                <table>
                                    <colgroup>
                                        <col width="10%" />
                                        <col width="10%" />
                                        <col width="10%" />
                                        <col width="10%" />
                                        <col width="10%" />
                                        <col width="10%" />
                                        <col width="10%" />
                                        <col width="15%" />
                                        <col width="10%" />
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>회원번호</th>
                                            <th>지도자직책</th>
                                            <th>성명</th>
                                            <th>단위대직책</th>
                                            <th>집전화</th>
                                            <th>사무실전화</th>
                                            <th>이메일</th>
                                            <th>휴대전화</th>
                                        </tr>
                                    </thead>
                                    <tbody id="org_leader_list"></tbody>
                                </table>
                            </div>
                            <div class="tableButtons">
                                <p>0<span>rows</span></p>
                            </div>
                        </div>
                        <div class="tableContainer orgContainer">
                            <h2 class="subTitles">연소지도자</h2>
                            <div class="tableWrapper">
                                <table>
                                    <colgroup>
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
                                            <th>회원번호</th>
                                            <th>대원직책</th>
                                            <th>성명</th>
                                            <th>집전화</th>
                                            <th>사무실전화</th>
                                            <th>이메일</th>
                                            <th>휴대전화</th>
                                        </tr>
                                    </thead>
                                    <tbody id="org_scout_list"></tbody>
                                </table>
                            </div>
                            <div class="tableButtons">
                                <p>0<span>rows</span></p>
                            </div>
                        </div> 
                    </form>
                </div>
                <div class="fomrTabContent">2</div>

            </div>
        </div>
    </div>
	<%@ include file="./include/loading.jsp" %>
    <%@ include file="./include/error_page.jsp" %>
    
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		function fn_organ_info(troopno){
			
			
			var param = {
				troopno : troopno
			}
			
			$.ajax({
				url : "/organ_info"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, async : true
				, success : function(data, status, xhr) {
					var html ='';
					console.log(data)
					if(data.rst){
						$('#ASSOCIATIONCODE').val("");
						$('#PARENTTROOPNO').val("");
						$('#TROOPLEVELCODE').val("");
						$('#TROOPCLSCODE1').val("");
						$('#TROOPCLSCODE2').val("");
						$('#SCOUTCLSCODE').val("");
						$('#DISPTROOPNO').val("");
						$('#UNREGDAYE').val("");
						$('#ENGTROOPNAME').val("");
						
						$('#TROOPNAME').val("");
						$('#SCHOOLHALL').val("");
						$('#ORGNO').val("");
						
						$('#HPOSTCODE').val("");
						$('#ADDR').val("");
						$('#TELNO').val("");
						$('#FAXNO').val("");
						$('#BIGO').val("");
						
						
						$('#ASSOCIATIONCODE').val(data.rst.associationcode);
						fn_get_unitylist()
						$('#PARENTTROOPNO').val(data.rst.parenttroopno);
						
						$('#TROOPLEVELCODE').val(data.rst.trooplevelcode);
						$('#TROOPCLSCODE1').val(data.rst.troopclscode1);
						fn_troopclscode()
						$('#TROOPCLSCODE2').val(data.rst.troopclscode2);
						$('#SCOUTCLSCODE').val(data.rst.scoutclscode);
						
						
						$('#DISPTROOPNO').val(data.rst.disptroopno);
						$('#UNREGDAY').val(data.rst.unregday);
						$('#ENGTROOPNAME').val(data.rst.engtroopname);
						
						$('#TROOPNAME').val(data.rst.troopname);
						var parenttroopname =""
						if(data.rst.orgno != '' && data.rst.orgno != null && data.rst.orgno != undefined) parenttroopname = data.rst.parenttroopname
						$('#SCHOOLHALL').text(parenttroopname);
						$('#ORGNO').val(data.rst.orgno);
						
						$('#POSTCODE').val(data.rst.postcode);
						$('#ADDR').val(data.rst.addr);
						$('#TELNO').val(data.rst.telno);
						$('#FAXNO').val(data.rst.faxno);
						$('#BIGO').val(data.rst.bigo);

						$('.contentsContainer select').niceSelect('update')
					}
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
		}
		function fn_get_unitylist(){
			var param = {
					associationcode : $('#ASSOCIATIONCODE').val(),
			}
			$.ajax({
				url : "/get_unity_list"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : false
				, success : function(data, status, xhr) {
					var html ='<option value="">-----</option>';
					if(data.list){
						var arr = data.list;
						$('#PARENTTROOPNO').children().remove();
						for(var i=0; i<arr.length; i++){
							html += '<option value="'+ arr[i].troopno +'">'+ arr[i].troopname +'</option>'
						}
						$('#PARENTTROOPNO').append(html)
						$('.contentsContainer select').niceSelect('update')
					}
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
		}
		function fn_troopclscode(){
			var param = {
				troopclscode1 : $('#TROOPCLSCODE1').val(),
			}
			$.ajax({
				url : "/troopclscode1_search"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : false
				, success : function(data, status, xhr) {
					var html ='<option value="">-----</option>';
					if(data.list){
						var arr = data.list;
						$('#TROOPCLSCODE2').children().remove();
						for(var i=0; i<arr.length; i++){
							html += '<option value="'+ arr[i].troopclscode2 +'">'+ arr[i].troopclsname +'</option>'
						}
						$('#TROOPCLSCODE2').append(html)
						$('.contentsContainer select').niceSelect('update')
					}
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
		}
		function organ_search(){
			$('#organ_cnt').text("0 rows")
			$('#org_list').children().remove();
			
			var param = {
				associationcode : $('#associationcode_search').val(),
				parenttroopno : $('#unitycode_search').val(),
				trooplevelcode : $('#trooplevelcode_search').val(),
				troopclscode1 : $('#troopclscode1_search').val(),
				troopclscode2 : $('#troopclscode2_search').val(),
				parentorgno : $('#parentorgno_search').val(),
				scoutclscode : $('#scoutclscode_search').val(),
				search_type : $('#search_type').val(),
				search_text : $('#search_text').val(),
			}
			
			$.ajax({
				url : "/organ_search"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : true
				, success : function(data, status, xhr) {
					var html ='';
					if(data.list){
						var arr = data.list;
						$('#organ_cnt').text(arr.length + " rows")
						$('#org_list').children().remove();
						for(var i=0; i<arr.length; i++){
							html += '<tr onclick="fn_organ_info('+arr[i].troopno+')">'+
							'<td>' + arr[i].parenttroopname + '</td>' +
							'<td>' + arr[i].disptroopno + '</td>'+
							'<td>' + arr[i].troopname + '</td>'+
							'<td>' + arr[i].scoutclsname + '</td>'+
							'<td>' + arr[i].troopclsname + '</td>'+
							'<td>' + arr[i].lastregyear + '</td>'+
							'<td>' + arr[i].scoutmcnt + '</td>'+
							'<td>' + arr[i].scoutwcnt + '</td>'+
							'<td>' + arr[i].leadermcnt + '</td>'+
							'<td>' + arr[i].leaderwcnt + '</td>'+
							'</tr>'
						}
						$('#org_list').append(html)
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
				troopclscode1 : $('#troopclscode1_search').val(),
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
						$('#troopclscode2_search').children().remove();
						for(var i=0; i<arr.length; i++){
							html += '<option value="'+ arr[i].troopclscode2 +'">'+ arr[i].troopclsname +'</option>'
						}
						$('#troopclscode2_search').append(html)
						$('.contentsContainer select').niceSelect('update')
					}
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
		}
		function fn_get_unitylist_organ(){
			var param = {
					associationcode : $('#associationcode_search').val(),
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
						$('#unitycode_search').children().remove();
						for(var i=0; i<arr.length; i++){
							html += '<option value="'+ arr[i].troopno +'">'+ arr[i].troopname +'</option>'
						}
						$('#unitycode_search').append(html)
						$('.contentsContainer select').niceSelect('update')
					}
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
			
			
			
			$('#parentorgno_search').children().remove();
			if($('#associationcode_search').val() == '200'){
				$('#parentorgno_search').val("")
				var html2 ='<option value="">전체</option>';
				$('#parentorgno_search').append(html2)
				$('.contentsContainer select').niceSelect('update')
			}
			
			
			$.ajax({
				url : "/fn_get_parentorgno"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : false
				, success : function(data, status, xhr) {
					var html ='<option value="">전체</option>'
					if(data.list){
						var arr = data.list;
						$('#parentorgno_search').children().remove();
						for(var i=0; i<arr.length; i++){
							html += '<option value="'+ arr[i].orgno +'">'+arr[i].orgname +'</option>'
						}
						$('#parentorgno_search').append(html)
						$('.contentsContainer select').niceSelect('update')
					}
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
		}


		window.onload = function(){
		    document.getElementById("searchZip").addEventListener("click", function(){ //주소입력칸을 클릭하면
		        //카카오 지도 발생
		        new daum.Postcode({
		            oncomplete: function(data) { //선택시 입력값 세팅
		                document.getElementById("HPOSTCODE").value = data.zonecode;
		                document.getElementById("ADDR").value = data.address; // 주소 넣기
		                document.getElementById("ADDR").focus();
		            }
		        }).open();
		    });
		}    
		

	</script>
</body>
</html>