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
		function fn_leader_info(idx){
			$('#leader_idx').val(idx)
			console.log(idx)
		}
		function fn_scout_info(idx){
			$('#scout_idx').val(idx)
			console.log(idx)
		}
		
		function leader_del(){
			var text ="해당 연공 데이터를 삭제하시겠습니까?";
			if(confirm (text)){
				var param = {
					idx : $('#leader_idx').val(),
					memberno : $('#MEMBERNO').val()
				}
				
				$.ajax({
					url : "/leader_del"
					, type : "POST"
					, data : JSON.stringify(param)
					, contentType : "application/json"
					, async : true
					, success : function(data, status, xhr) {
				
						alert("삭제되었습니다.");
					},
					error : function(err){
						console.log(err)
					}
					
				});
			}
		}
		function scout_del(){
			var text ="해당 연공 데이터를 삭제하시겠습니까?";
			if(confirm (text)){
				var param = {
					idx : $('#scout_idx').val(),
					memberno : $('#MEMBERNO').val()
				}
				
				$.ajax({
					url : "/scout_del"
					, type : "POST"
					, data : JSON.stringify(param)
					, contentType : "application/json"
					, async : true
					, success : function(data, status, xhr) {
				
						alert("삭제되었습니다.");
					},
					error : function(err){
						console.log(err)
					}
					
				});
			}
		}
		
		
		$("#attach_file").change(function(){
			var memberno = $("#MEMBERNO").val()
			if(memberno == '' || memberno == undefined || memberno == null){
				alert("회원을 선택해주세요.")
				return false;
			}
			else{
				 var requestData = {
			        memberno : $("#MEMBERNO").val(),
			    }
			 
				var form = $('#attach_file')[0].files[0];
				var formData = new FormData();
				formData.append('img', form);
				formData.append("request", new Blob([JSON.stringify(requestData)], {type: "application/json"}));
				
				$.ajax({
					url: '/profile_img',
					processData : false,
					contentType : false,
					data : formData,
					type : 'POST',
					success : function(result){
						alert("Uploaded");
						
					},
					error : function(err){
						console.log(err)
					}
					
				});
			}
			
		})
		
		function person_save(){
			var sex = "M"
			if(document.getElementById("SEX_W").checked) sex = "W";
			
			var param = {
				MEMBERNO : $('#MEMBERNO').val(),
				KNAME : $('#KNAME').val(),
				MEMCLSCODE : $('#MEMCLSCODE').val(),
				MEMGRADECODE : $('#MEMGRADECODE').val(),
				BIRTHDAY : $('#BIRTHDAY').val(),
				KNAME : $('#KNAME').val(),
				ENAME : $('#ENAME').val(),
				SEX : sex,
				HTELNO : $('#HTELNO').val(),
				MOBILE : $('#MOBILE').val(),
				EMAIL : $('#EMAIL').val(),
				SMSYN : document.getElementById("SMSYN").checked ? "Y" : "N",
				EMAILYN : document.getElementById("EMAILYN").checked ? "Y" : "N",
				JOBCODE : $('#JOBCODE').val(),
				HPOSTCODE : $('#HPOSTCODE').val(),
				HADDR : $('#HADDR').val(),
				EMPLOYEEY : $('#EMPLOYEEY').val(),
				LEADERSCORE : $('#LEADERSCORE').val(),
				SCOUTSCHOOLYEAR : $('#SCOUTSCHOOLYEAR').val(),
				SCOUTSCHOOLBAN : $('#SCOUTSCHOOLBAN').val(),
			}
			
			var text ="등록하시겠습니까?";
			if(confirm (text)){
				$('#initial-loading').css('display', 'flex')
				
				$.ajax({
					url : "/person_save"
					, type : "POST"
					, data : JSON.stringify(param)
					, contentType : "application/json"
					, async : true
					, success : function(data, status, xhr) {
						alert("정상적으로 저장되었습니다.")
						$('#initial-loading').css('display', 'none')
					},
					error : function(err){
						console.log("에러가 났어")
						console.log(err)
						$('#initial-loading').css('display', 'none')
						$('#error').css('display', 'flex')
					}
				})
				
			}
		}
	
	
		function search_reset(){
			$("#search_birthday").val("");
			
			$("#search_history option:eq('')").attr("selected", "selected");
			$("#search_kname").val("");
			$("#search_memclscode").val("1");
			$("#search_start").val("");
			$("#search_end").val("");
			$('#search_memgradecode').val("");
			
			$('.contentsContainer select').niceSelect('update')
			
		}
		function search_list_memberno(){
			$('#initial-loading').css('display', 'flex')
			$("#search_fm_memberno").attr("action", "/front/users");
			$("#search_fm_memberno").submit();
			$('#initial-loading').css('display', 'none')

		}
		function search_list(){
			$('#initial-loading').css('display', 'flex')
			$("#search_fm").attr("action", "/front/users");
			$("#search_fm").submit();
			$('#initial-loading').css('display', 'none')
		}
		function fn_info(memberno, kname, scouty, leadery){
			$('#initial-loading').css('display', 'flex')
			var param = {
				memberno : memberno,
				kname : kname,
				scouty : scouty,
				leadery : leadery,
			}

			
			$.ajax({
				url : "/get_per_info"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : true
				, success : function(data, status, xhr) {
					console.log(data)
					console.log("성공")
					
					$('#leader_idx').val("")
					$('#scout_idx').val("")
					
					$('#MEMBERNO').val(data.info.memberno)
					$('#MEMCLSCODE').val(data.info.memclscode)//셀렉트
					
					var memgradecode = "";
					if(data.info.memgradecode == null || data.info.memgradecode == undefined || data.info.memgradecode == "null") memgradecode = "0"
					else memgradecode = data.info.memgradecode
					
					$('#BIRTHDAY').val(data.info.birthday)
					
					$('#KNAME').val(data.info.kname)
					$('#ENAME').val(data.info.ename)
					
					$("#EMPLOYEEY").val(data.info.employeey).prop("selected", true);
					
					$("#MEMGRADECODE").val(memgradecode).prop("selected", true);
					$("#EMPLOYEEY").val(data.info.employeey).prop("selected", true);
			
					
					
					
					if(data.info.sex == "M") $(":radio[id='SEX_M']").attr("checked", true);
					else $(":radio[id='SEX_W']").attr("checked", true);
					
					$("#HTELNO").val(data.info.htelno)
					$("#MOBILE").val(data.info.mobile)
					$("#EMAIL").val(data.info.email)
					$("#HPOSTCODE").val(data.info.hpostcode)
					$("#HADDR").val(data.info.haddr)
					$("#JOBCODE").val(data.info.jobcode).prop("selected", true);
					
					
					$('#LEADERSCORE').val(data.info.leaderscore)
					$('#SCOUTSCHOOLYEAR').val(data.info.scoutschoolyear)
					$('#SCOUTSCHOOLBAN').val(data.info.scoutschoolban)
					
					
					$('.contentsContainer select').niceSelect('update')
					
					if(data.info.smsyn == "Y") $("input:checkbox[id=SMSYN]").attr("checked", true);
					if(data.info.emailyn == "Y") $("input:checkbox[id=EMAILYN]").attr("checked", true);
					
					//프로필이미지 바인딩
					$('#profile_img').attr("src",data.info.picimg)
					
					
					//지도자 단체
					$('#main_scout_org').val(data.info.scoutorgname)
					
					//대원 단체
					var leaderorgpositionname = ""
					if(data.info.leaderorgpositioncode == '01') leaderorgpositionname = "교장"
					if(data.info.leaderorgpositioncode == '02') leaderorgpositionname = "교감"
					if(data.info.leaderorgpositioncode == '03') leaderorgpositionname = "교사"
					if(data.info.leaderorgpositioncode == '04') leaderorgpositionname = "일반"
					if(data.info.leaderorgpositioncode == '05') leaderorgpositionname = "없음"
					
					var leaderorgname =""
					if(data.info.leaderorgname != ''){
						leaderorgname = data.info.leaderorgname
					}
					if(leaderorgpositionname != ''){
						leaderorgname += "(" +leaderorgpositionname + ")"
					}
					$('#main_leader_org').val(leaderorgname)
					
					var html ="";
					var relation_html = "";
					var arr = data.list;
					var relation_arr = data.relation_list;
					$('#leader_list').children().remove();
					$('#scout_list').children().remove();
					$('#main_relation').children().remove();
					$('#relation_list').children().remove();
					
					
					
					//연공이력 개수
					$('#year_cnt_leader').text('0 rows')
					$('#year_cnt_scout').text('0 rows')
					
					
					//가입정보 초기화
					$('#leader_date').text("")
					$('#leader_whole_incnt').text("")
					$('#leader_incnt').text("")
					$('#scout_date').text("")
					$('#scout_whole_incnt').text("")
					$('#scout_incnt').text("")
					
					
					
					if(leadery == 'Y'){//지도자일경우
						//가입정보 기입
						$('#leader_date').text(data.info.enterdate)
						$('#leader_whole_incnt').text(arr.length)
						$('#leader_incnt').text(data.info.leaderincnt)
						
						
						$('#year_cnt_leader').text(arr.length + " rows")
						for(var i=0; i<arr.length; i++){
							html += '<tr onclick="fn_leader_info('+arr[i].idx+')">'+
								'<td>' + Number(i+1) + '</td>' +
								'<td>' + arr[i].adminy + '</td>'+
								'<td>' + arr[i].year + '</td>'+
								'<td>' + arr[i].associationname + '</td>'+
								'<td>' + arr[i].unity + '</td>'+
								'<td>' + arr[i].troopname + '</td>'+
								'<td>' + arr[i].leaderposition + '</td>'+
								'<td>' + arr[i].leaderpositionname + '</td>'+
								'<td>' + arr[i].orgname  + '</td>'+
								'</tr>';
						}
						$('#leader_list').append(html)
						
					}
					else{//대원일경우
						$('#scout_date').text(data.info.enterdate)
						$('#scout_whole_incnt').text(arr.length)
						$('#scout_incnt').text(data.info.scoutincnt)
						$('#year_cnt_scout').text(arr.length + " rows")
						for(var i=0; i<arr.length; i++){
							html += '<tr onclick="fn_scout_info('+arr[i].idx+')">'+
								'<td>' + Number(i+1) + '</td>' +
								'<td>' + arr[i].year + '</td>'+
								'<td>' + arr[i].associationname + '</td>'+
								'<td>' + arr[i].unity + '</td>'+
								'<td>' + arr[i].troopname + '</td>'+
								'<td>' + arr[i].orgname + '</td>'+
								'<td>' + arr[i].scoutschoolyear + '</td>'+
								'<td>' + arr[i].scoutban + '</td>'+
								'</tr>';
							
						}
						$('#scout_list').append(html)
					}
					
					//관계연결
					var relation_popup = ""
					var target_memberno = $('#MEMBERNO').val()
					for(var i=0; i<relation_arr.length; i++){
						var relationname = ""
						if(target_memberno == relation_arr[i].frommemberno) relationname = relation_arr[i].relationname2
						if(target_memberno == relation_arr[i].tomemberno) relationname = relation_arr[i].relationname1
						
						relation_html += '<tr>'+
						'<td>' + relation_arr[i].relationinfo.split(',')[0] + '</td>' +
						'<td>' + relation_arr[i].relationinfo.split(',')[1] + '</td>'+
						'<td>' + relationname + '</td>'+
						'<td>' + relation_arr[i].bigo + '</td>'+
						'</tr>'
						
						var sex = "남"
						if(relation_arr[i].relationinfo.split(',')[4] == 'W') sex = "여"
						
						relation_popup += '<tr>'+
						'<td>' + relation_arr[i].relationcode + '</td>' +
						'<td>' + relationname + '</td>'+
						'<td>' + relation_arr[i].relationinfo.split(',')[1] + '</td>'+
						'<td>' + relation_arr[i].relationinfo.split(',')[2] + '</td>'+
						'<td>' + sex + '</td>'+
						'<td>' + relation_arr[i].relationinfo.split(',')[3] + '</td>'+
						'</tr>'
					
					}
					
					$('#main_relation').append(relation_html)
					$('#relation_list').append(relation_popup)
					
					$('#initial-loading').css('display', 'none')
					
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
					//지현이 에러
					$('#initial-loading').css('display', 'none')
				}
			})
	
		}

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
</body>
</html>