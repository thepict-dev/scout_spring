<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>	
<html lang="ko">
	<%@ include file="./include/head.jsp" %>
	<script src="/js/script_signup.js" defer></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<body>
	<%
		pageContext.setAttribute("session", session.getAttribute("associationcode"));

	%>
	<%@ include file="./include/lnb.jsp" %>
	<c:import url="./include/header.jsp">
		<c:param name="pageParent" value="회원등록"/>
    	<c:param name="pageTitle" value="대승인"/>
    </c:import>
    <div class="contentsContainer">
        <div class="formContainer scroller">
            <div class="joinContainer">
                <div class="fomrTabContent signContainer" style="border-top: 0;">
                    <form action="" id="register" name="register" method="post" enctype="multipart/form-data">
                        <div class="registrationWrap">
                            <div class="doubleTable">
	                            <div class="tableContainer">
	                                <div class="tableWrapper" style="height: 300px;">
	                                    <table style="min-width: unset;">
	                                        <colgroup>
	                                            <col width="10%" />
	                                            <col width="10%" />
	                                            <col width="10%" />
	                                            <col width="10%" />
	                                            <col width="10%" />
	                                            <col width="10%" />
	                                            <col width="10%" />
	                                            <col width="20%" />
	                                        </colgroup>
	                                        <thead>
	                                            <tr>
	                                                <th rowspan="2">연맹</th>
	                                                <th rowspan="2">단위대</th>
	                                                <th rowspan="2">일괄승인</th>
	                                                <th colspan="5" style="text-align:center">승인 신청 현황</th>
	                                                <th rowspan="2" style="text-align:center">최종승인일</th>
	                                            </tr>
	                                            <tr>
	                                                <th style="top: 44px; text-align:center">지도자</th>
	                                                <th style="top: 44px; text-align:center">대원</th>
	                                                <th style="top: 44px; text-align:center">연맹지</th>
	                                                <th style="top: 44px; text-align:center">금액</th>
	                                                <th style="top: 44px; text-align:center">신청일</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody id="leader_target_list">
	                                            <c:forEach var="mergedList" items="${mergedList}" varStatus="status">
		                                            <tr onclick="fn_troop_person_list('${mergedList.TROOPNO}')">
			                                            <td>${mergedList.ASSOCIATIONNAME}</td>
			                                            <td>${mergedList.TROOPNAME}</td>
			                                            <td><input type="checkbox" class="check" name="troop_check" title="단위대선택" id="troop_chk_${mergedList.TROOPNO}" data-id="${mergedList.TROOPNO}"><label for="troop_chk_${mergedList.TROOPNO}" class="lableOnly"></label></td>
			                                            <td style="text-align:center"><fmt:formatNumber value="${mergedList.LEADERCNT}" maxFractionDigits="0" /></td>
			                                            <td style="text-align:center"><fmt:formatNumber value="${mergedList.SCOUTCNT}" maxFractionDigits="0" /></td>
			                                            <td style="text-align:center"><fmt:formatNumber value="${mergedList.SCOUTMAGACNT + mergedList.LEADERMAGACNT}" maxFractionDigits="0" /></td>
			                                            <td style="text-align:center"><fmt:formatNumber value="${mergedList.SCOUTPRICE + mergedList.LEADERPRICE}" maxFractionDigits="0" /></td>
			                                            <td style="text-align:center">${fn:substring(mergedList.ENTERDATE,0,11)}</td>
			                                            <td style="text-align:center">${fn:substring(mergedList.CONFIRMDATE,0,11)}</td>
		                                            </tr>
		                                        </c:forEach>
	                                        </tbody>
	                                    </table>
	                                </div>
	                            </div>
	                            <div class="tableButtons inputsPd topBd" style="justify-content: flex-end;">
		                            <div class="btnContainer organ">
		                                <a href="#lnl" id="" class="normalButton purple" onclick="whole_confirm()">승인</a>
		                            </div>
		                        </div>
	                            <textarea id="hiddenTextarea" style="display:none;"></textarea>
	                            <div class="tableContainer">
	                            	<h2 class="subTitles">상세리스트</h2>
	                                <div class="tableWrapper" style="height: 300px;">
	                                    <table style="min-width: unset;">
	                                        <colgroup>
	                                            <col width="10%" />
	                                            <col width="8%" />
	                                            <col width="8%" />
	                                            <col width="10%" />
	                                            <col width="10%" />
	                                            <col width="10%" />
	                                            <col width="8%" />
	                                            <col width="10%" />
	                                            <col width="10%" />
	                                            <col width="8%" />
	                                            <col width="8%" />
	                                            <col width="8%" />
	                                        </colgroup>
	                                        <thead>
	                                            <tr>
	                                               	<th>단위대</th>
	                                               	<th>개별체크</th>
	                                               	<th>구분</th>
	                                               	<th>회원번호</th>
	                                               	<th>성명</th>
	                                               	<th>생년월일</th>
	                                               	<th>성별</th>
	                                               	<th>직책1</th>
	                                               	<th>직책2</th>
	                                               	<th>등록비</th>
	                                               	<th>연맹지</th>
	                                               	<th>계</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody id="scout_target_list">

	                                        </tbody>
	                                    </table>
	                                </div>
	                            </div>
                            </div>
                        </div>
                        <div class="tableButtons inputsPd topBd" style="justify-content: flex-end;">
                            <div class="btnContainer organ">
                            	<a href="#lnk" class="normalButton purple" onclick="fn_cancel()">등록취소</a>
								<a href="#lnk" class="normalButton purple" onclick="fn_confirm()">승인</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- 최종팝업 -->
    <div id="regiConfirmPopup" class="modalContainer">
        <div class="modalInner lg">
            <button type="button"><img src="/front_img/close.png" alt=""></button>
            <div class="modalTit">
                <p>대승인 리스트 확인</p>
            </div>
            <form action="">
                <div class="regiConTop">
                    <p id="final_sosok"></p>
                </div>
                <div class="tableContainer">
                    <h2 class="subTitles">대승인 리스트</h2>
                    <div class="tableWrapper" style="height: 500px;">
                        <table style="min-width: unset;">
                            <colgroup>
                                <col width="10%" />
                                <col width="15%" />
                                <col width="10%" />
                                <col width="15%" />
                                <col width="15%" />
                                <col width="10%" />
                                <col width="15%" />
                                <col width="10%" />
                            </colgroup>
                            <thead>
                            	<tr>
                            		<th>지도자/대원</th>
                            		<th>단위대명</th>
                            		<th>평생회원</th>
                            		<th>직책/스카우트</th>
                            		<th>직책</th>
                            		<th>등록비</th>
                            		<th>이름</th>
                            		<th>연맹지구독</th>
                            	</tr>
                            </thead>
                            <tbody id="final_list">
                                
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="regiConBottom">
                    <p id="price_text"></p>
                </div>
                <div class="tableButtons" style="justify-content: flex-end; padding: 0 24px 60px 0;">
                    <div class="buttons">
                        <a href="#lnk" class="white normalButton" onclick="final_submit()">제출</a>
                        <script>
	                        function final_submit(){
	                			var data = JSON.parse($('#hiddenTextarea').val());
	                			var text = "";
	                			var param = {}
	                			if(data.type == 'person') {
	                				text ="선택하신 회원의 연공을 개별 승인 하시겠습니까?"
	                				param.scout_list = data.scout_list;
	                				param.leader_list = data.leader_list
	                			}

                				if (confirm(text)) {
           							$.ajax({
           								url : "/admin/whole_register_confirm"
           								, type : "POST"
           								, data : JSON.stringify(param)
           								, contentType : "application/json"
           								, dataType : "json"
           								, async : true
           								, success : function(data, status, xhr) {
           									alert("개별승인이 완료되었습니다.");
           									location.reload();
           								}, error : function(xhr, status, error) {
           									console.log(xhr)
           									console.log(error)
           									console.log("에러")
           									alert("오류가 발생하였습니다.")
           								}
           							});
                				}
	                		}
                        </script>
                    </div>
                </div>
            </form>
        </div>
    </div>
    
	
	
    <%@ include file="./include/loading.jsp" %>
	<%@ include file="./include/error_page.jsp" %>
	</body>
	<script>
		
		$('#regiConfirmButton').click(function(){
			$('#regiConfirmPopup').addClass('active');
		});

		
		//일괄승인
		function whole_confirm(){
			if(confirm("선택하신 단위대 연공을 일괄 승인하시겠습니까?")){
				var check_list = []
				$('#initial-loading').css('display', 'block')
				$('#final_list').children().remove();
				
				$("input[name='troop_check']:checked").each(function (e){
					var troopno = $(this).data("id");
					check_list.push(troopno)
				})
				
				var param = {
					troop_list : check_list
				}
				$.ajax({
					url : "/admin/get_register_troop_list"
					, type : "POST"
					, data : JSON.stringify(param)
					, contentType : "application/json"
					, dataType : "json"
					, async : true
					, success : function(data, status, xhr) {
						if(data.result == 'Y'){
							$('#initial-loading').css('display', 'none')
							alert("일괄승인이 완료되었습니다.");
							location.reload();
						}
						
					}
					, error : function(xhr, status, error) {
						console.log(xhr)
						console.log(error)
						console.log("에러")
						alert("오류가 발생하였습니다.")
					}
				});
			}
		}
		
		//개별승인
		function fn_confirm(){
			var check_list = []
			var check_list2 = []
			$('#initial-loading').css('display', 'block')
			$('#final_list').children().remove();
			
			$("input[name='person_chk']:checked").each(function (e){
				var idx= $(this).data("id");
				if(idx.includes("leader_")){
					check_list.push(idx.split('_')[1])	
				}
				if(idx.includes("scout_")){
					check_list2.push(idx.split('_')[1])	
				}
				
			})
			var json = {}
			json.leader_list = check_list;
			json.scout_list = check_list2;
			json.type = "person"
			$('#regiConfirmPopup').addClass('active');
			
			$('#hiddenTextarea').val(JSON.stringify(json))
			debugger
			var param = {
				leader_list : check_list,
				scout_list : check_list2
			}
			$.ajax({
				url : "/admin/get_register_person_list"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : true
				, success : function(data, status, xhr) {
					console.log(data)
					var leader_list = data.leader_list;
					var scout_list = data.scout_list
					
					var whole_price = 0
					var html = ""
					
					for(var i=0; i<leader_list.length; i++){
						var total_price = Number(leader_list[i].entryfee) + Number(leader_list[i].scoutmagafee)
						total_price = total_price+''
						var leader_life = "Y"
						if(leader_list[i].lifemembery == '' || leader_list[i].lifemembery == undefined || leader_list[i].lifemembery == null || leader_list[i].lifemembery == 'N') leader_life = 'N' 
						var maga = leader_list[i].scoutmagacnt == "1" ? "Y" : "N"
						
							html += '<tr>'+
					            '<td style="position: unset;">지도자</td>'+
					            '<td>'+leader_list[i].troopname+'</td>'+
					            '<td>'+leader_life+'</td>'+
					            '<td>'+leader_list[i].leaderposition+'</td>'+
					            '<td>'+leader_list[i].leaderpositionname+'</td>'+
					            '<td>'+total_price.replace(/\B(?=(\d{3})+(?!\d))/g, ",")+'</td>'+
					            '<td>'+leader_list[i].kname+'</td>'+
					            '<td>'+maga+'</td>'+
					        	'</tr>'
						
					
						whole_price += Number(total_price)
					}
					
					for(var i=0; i<scout_list.length; i++){
						var total_price = Number(scout_list[i].entryfee) + Number(scout_list[i].scoutmagafee)
						total_price = total_price+''
						var scout_life = "N"
						if(scout_list[i].lifemembery == '' || scout_list[i].lifemembery == undefined || scout_list[i].lifemembery == null || scout_list[i].lifemembery == 'N') scout_life = 'N'
						var maga = scout_list[i].scoutmagacnt == "1" ? "Y" : "N"
							html += '<tr>'+
				            '<td style="position: unset;">대원</td>'+
				            '<td>'+scout_list[i].troopname+'</td>'+
				            '<td>'+scout_life+'</td>'+
				            '<td>'+scout_list[i].scoutclsname+'</td>'+
				            '<td>'+scout_list[i].scoutpositionname+'</td>'+
				            '<td>'+total_price.replace(/\B(?=(\d{3})+(?!\d))/g, ",")+'</td>'+
				            '<td>'+scout_list[i].kname+'</td>'+
				            '<td>'+maga+'</td>'+
				        	'</tr>'
						
						whole_price += Number(total_price)
					}
					$('#price_text').text('대승인 가입비 : '+whole_price.toLocaleString('ko-KR')+'원')
					
					$('#final_list').append(html)
					$('#initial-loading').css('display', 'none')
					
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
					alert("오류가 발생하였습니다.")
				}
			});
		}
		
		//개별취소
		function fn_cancel(){
			var check_list = []
			var check_list2 = []
			$("input[name='person_chk']:checked").each(function (e){
				var idx= $(this).data("id");
				if(idx.includes("leader_")){
					check_list.push(idx.split('_')[1])	
				}
				if(idx.includes("scout_")){
					check_list2.push(idx.split('_')[1])	
				}
				
			})
			var param = {
				leader_list : check_list,
				scout_list : check_list2
			}
			if(confirm("선택한 회원들의 연공들을 삭제하시겠습니까?")){
				$.ajax({
					url : "/admin/register_delete"
					, type : "POST"
					, data : JSON.stringify(param)
					, contentType : "application/json"
					, dataType : "json"
					, async : true
					, success : function(data, status, xhr) {
						
						if(data.result == 'Y'){
							alert("정상적으로 연공이 삭제되었습니다.")
							location.reload();
						}
					}
					, error : function(xhr, status, error) {
						console.log(xhr)
						console.log("에러")
						alert("오류가 발생하였습니다.")
					}
				});
			}
		}
		
		
		function fn_troop_person_list(troopno){
			var param = {
					troopno : troopno,
				}
			
			$.ajax({
				url : "/admin/current_troop_info"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : true
				, success : function(data, status, xhr) {
					$('#scout_target_list').children().remove();
					var leader_html = ""
					var scout_html = ""
					var leader_list = data.leader_list
					var scout_list = data.scout_list
					if(data.leader_list && data.leader_list.length > 0){
						for(var i=0; i<leader_list.length; i++){
							var total_price = 0;
							total_price = Number(leader_list[i].entryfee) + (Number(leader_list[i].scoutmagacnt) * 10000)
							total_price = total_price +''
							var sex = "";
							if(leader_list[i].sex == 'W') sex = '여'
							if(leader_list[i].sex == 'M') sex = '남'
							var maga = "N"
							if(leader_list[i].scoutmagacnt >= '1') maga = ""
							leader_html +=
								'<tr>'+
								'<td>'+leader_list[i].troopname+ '</td>' +
		                    	'<td style="position: unset;">'+
		                        '<input type="checkbox" class="check" title="사람선택" name="person_chk" id="person_chk_'+leader_list[i].idx+'" data-id="leader_'+leader_list[i].idx+'"><label for="person_chk_'+leader_list[i].idx+'" class="lableOnly"></label>'+
		                    	'</td>'+
		                    	'<td>지도자</td>'+
		                    	'<td>'+leader_list[i].memberno+'</td>'+
		                    	'<td>'+leader_list[i].kname+'</td>'+
		                    	'<td>'+leader_list[i].birthday+'</td>'+
		                    	'<td>'+sex+'</td>'+
		                    	'<td>'+leader_list[i].leaderposition+'</td>'+
		                    	'<td>'+leader_list[i].leaderpositionname+'</td>'+
		                    	'<td>'+leader_list[i].entryfee.replace(/\B(?=(\d{3})+(?!\d))/g, ",")+'</td>'+
		                    	'<td>'+leader_list[i].scoutmagacnt+'</td>'+
		                    	'<td>'+total_price.replace(/\B(?=(\d{3})+(?!\d))/g, ",")+'</td>'+
		                		'</tr>'
						}
						$('#scout_target_list').append(leader_html)
						$('.contentsContainer select').niceSelect('update')
					}
					if(data.scout_list && data.scout_list.length > 0){
						for(var i=0; i<scout_list.length; i++){
							var total_price = 0;
							total_price = Number(scout_list[i].entryfee) + (Number(scout_list[i].scoutmagacnt) * 10000)
							var sex = "";
							if(scout_list[i].sex == 'W') sex = '여'
							if(scout_list[i].sex == 'M') sex = '남'
							total_price = total_price +''
							var maga = "N"
							if(scout_list[i].scoutmagacnt >= '1') maga = "Y"
							scout_html +=
								'<tr>'+
								'<td>'+scout_list[i].troopname+ '</td>' +
		                    	'<td style="position: unset;">'+
		                        '<input type="checkbox" class="check" title="사람선택" name="person_chk" id="person_chk_'+scout_list[i].idx+'" data-id="scout_'+scout_list[i].idx+'"><label for="person_chk_'+scout_list[i].idx+'" class="lableOnly"></label>'+
		                    	'</td>'+
		                    	'<td>대원</td>'+
		                    	'<td>'+scout_list[i].memberno+'</td>'+
		                    	'<td>'+scout_list[i].kname+'</td>'+
		                    	'<td>'+scout_list[i].birthday+'</td>'+
		                    	'<td>'+sex+'</td>'+
		                    	'<td>'+scout_list[i].scoutclsname+'</td>'+
		                    	'<td>'+scout_list[i].scoutpositionname+'</td>'+
		                    	'<td>'+scout_list[i].entryfee.replace(/\B(?=(\d{3})+(?!\d))/g, ",")+'</td>'+
		                    	'<td>'+scout_list[i].scoutmagacnt+'</td>'+
		                    	'<td>'+total_price.replace(/\B(?=(\d{3})+(?!\d))/g, ",")+'</td>'+
		                		'</tr>'
						}
						
						$('#scout_target_list').append(scout_html)
						
						
						$('.contentsContainer select').niceSelect('update')
					}
				}
				
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
					alert("오류가 발생하였습니다.")
				}
			});
		}
		
		// 팝업닫기
		$("#regiConfirmPopup button").click(function(){
		    $("#regiConfirmPopup").removeClass("active");
		});
		
		
	</script>
</html>