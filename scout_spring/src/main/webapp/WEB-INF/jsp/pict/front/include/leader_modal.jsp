<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<div id="joinPopup" class="modalContainer">
    <div class="modalInner lg">
        <button type="button"><img src="/front_img/close.png" alt=""></button>
        <div class="modalTit">
            <p>지도자 가입</p>
        </div>
        <form action="">
            <div class="basicInfo1 inputsPd bottomBd">
                <div class="stackInputs">
                    <h3 class="subTitles">회원정보</h3>
                    <div class="inputsContainer">
                        <div class="inputBox">
                            <p class="inputCaption">성명</p>
                            <input type="text" name="dmyKNAME" id="dmyKNAME" readonly placeholder="내용을 입력하세요…" class="lgThinInput" value="${pictVO.KNAME}">
                        </div>
                        <div class="inputBox">
                            <p class="inputCaption">연차년도</p>
                            <select name="YEAR" id="YEAR" class="smThinSelect">
                                <option value="2024" selected>2024</option>
                                <option value="2023">2023</option>
                                <option value="2022">2022</option>
                                <option value="2021">2021</option>
                                <option value="2020">2020</option>
                                <option value="2019">2019</option>
                                <option value="2018">2018</option>
                                <option value="2017">2017</option>
                                <option value="2016">2016</option>
                                <option value="2015">2015</option>
                                <option value="2014">2014</option>
                                <option value="2013">2013</option>
                                <option value="2012">2012</option>
                            </select>
                        </div>
                        <div class="inputBox">
                            <p class="inputCaption">승인여부</p>
                            <select name="CONFIRMY" id="CONFIRMY" class="smThinSelect">
                                <option value="Y">승인</option>
                                <option value="N">미승인</option>
                            </select>
                        </div>
                    </div>
                    <div class="inputsContainer">
                        <div class="inputBox">
                            <p class="inputCaption">연맹/연합회</p>
                            <div class="inputsAlign">   
                                <select name="associationcode_leader" id="associationcode_leader" onchange="fn_get_unitylist()" class="smThinSelect">
                             		<c:forEach var="association_list" items="${association_list}" varStatus="status">
	                                	<option value="${association_list.ASSOCIATIONCODE}"> ${association_list.ASSOCIATIONNAME}</option>
	                                </c:forEach>
                                </select>
                                
                                <select name="unitycode_leader" id="unitycode_leader" class="smThinSelect" onchange="fn_get_trooplist()">
	                            	<option value="">전체</option>
									<c:forEach var="unity_list" items="${unity_list}" varStatus="status">
										<option value="${unity_list.TROOPNO}">${unity_list.TROOPNAME}</option>
									</c:forEach>
	                            </select>
                            </div>
                        </div>
                        <div class="inputBox">
                            <p class="inputCaption">단위대</p>
                            <select name="troop_leader" id="troop_leader" class="lgThinSelect"></select>
                        </div>
                    </div>  
                    <div class="inputsContainer">
                        <div class="inputBox">
                            <p class="inputCaption">소속학교</p>
                            <div class="inputsAlign">
                                <input type="text" name="leader_orgname" id="leader_orgname" placeholder="내용을 입력하세요…" class="lgThinInput">
                                <input type="hidden" name="leader_orgno" id="leader_orgno">
                                <a href="#groupPopup" onclick="fn_orgnize('modal_leader')" class="smButton searches" style="margin-right: 12px;"><img src="/front_img/search2.png" alt="">조회</a>
                                <select name="LEADERORGPOSITIONCODE_LEADER" id="LEADERORGPOSITIONCODE_LEADER" class="smThinSelect">
                                    <option value="">------</option>
                                    <option value="01">교장</option>
                                    <option value="02">교감</option>
                                    <option value="03">교사</option>
                                    <option value="04">일반</option>
                                    <option value="05">없음</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="inputsContainer">
                        <div class="inputBox">
                            <p class="inputCaption">지도자직책</p>
                            <div class="inputsAlign">
                                <select name="LEADERPOSITIONCODE1" id="LEADERPOSITIONCODE1" class="lgThinSelect" onchange="fn_get_leaderposition()">
                                    <option value="">-----</option>
                                    <option value="01">협조</option>
                                    <option value="02">훈육</option>
                                    <option value="03">전종</option>
                                </select>
                                <select name="LEADERPOSITIONCODE2" id="LEADERPOSITIONCODE2" class="lgThinSelect">
                                    <option value="">-----</option>
                                </select>
                                <input type="checkbox" name="ADMINY" id="ADMINY" class="circleCheck" value="Y"><label for="ADMINY">관리지도자</label>
                            </div>
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
	                                <input type="checkbox" name="FEEEXCLUDE" id="FEEEXCLUDE" class="circleCheck"><label for="FEEEXCLUDE">면제</label>
	                            </div>
	                            <select name="FEEEXCLUDCODE" id="FEEEXCLUDCODE" class="smThinSelect">
	                            	<option value="">면제없음</option>
	                                <option value="01">연맹지원</option>
	                                <option value="02">신체장애</option>
	                                <option value="03">계속등록</option>
	                                <option value="04">조직변경</option>
	                                <option value="05">평생회원</option>
	                                <option value="06">육성단체대표</option>
	                                <option value="07">중복가입</option>
	                                <option value="08">다문화</option>
	                                <option value="99">기타</option>
	                            </select>
	                        </div>
	                    </div>
	                    <div class="inputBox">
	                        <p class="inputCaption">회비정산입금일</p>
	                            <div class="inputsAlign">
	                            <input type="date" name="BANKDAY" id="BANKDAY" class="lgThinInput" max="9999-12-31">
	                            <div>
	                                <input type="checkbox" name="PAYY" id="PAYY" class="circleCheck" value="Y"><label for="PAYY">납부완료</label>
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
	                                    <input type="text" name="ENTRYFEE" id="ENTRYFEE" class="smThinInput mountInput" onchange="calculate_leader()">
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
	                            <!-- 
	                            <div style="position: absolute;right: -35px;">
	                                <input type="checkbox" name="" id="" class="circleCheck"><label for="" class="lableOnly"></label>
	                            </div>
	                             -->
	                        </div>
	                        <div class="inputBox">
	                            <div class="inputsAlign">
	                                <label for="">
	                                    <input type="text" name="INSURANCEFEE" id="INSURANCEFEE" class="smThinInput mountInput" onchange="calculate_leader()">
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
			                        <!-- 
	                                <div>
	                                    <input type="checkbox" name="" id="" class="circleCheck"><label for="" class="lableOnly"></label>
	                                </div>
	                                 -->
	                                <div class="inputBox" style="position: relative; bottom: 9px;">
	                                    <p class="inputCaption">부수</p>
	                                    <div class="inputsAlign">
	                                        <label for="">
	                                            <input type="text" name="SCOUTMAGACNT" id="SCOUTMAGACNT"  class="smThinInput" onchange="calculate_boo_leader()">
	                                        </label>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="inputBox" style="margin-bottom: 10px;">
	                            <div class="inputsAlign">
	                                <label for="">
	                                    <input type="text" name="SCOUTMAGAFEE" id="SCOUTMAGAFEE" class="smThinInput mountInput" onchange="calculate_leader()">
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
	                            		<p class="inputCaption mount">격월간지</p>
			                            <p class="mountCaption">
			                                <span>0</span>
			                                원
			                            </p>
			                        </div>
			                        <!-- 
	                                <div>
	                                    <input type="checkbox" name="" id="" class="circleCheck"><label for="" class="lableOnly"></label>
	                                </div>
	                                 -->
	                                <div class="inputBox" style="position: relative; bottom: 9px;">
	                                    <p class="inputCaption">부수</p>
	                                    <div class="inputsAlign">
	                                        <label for="">
	                                            <input type="text" name="LEADERMAGACNT" id="LEADERMAGACNT"  class="smThinInput" onchange="calculate_boo_leader()">
	                                        </label>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="inputBox" style="margin-bottom: 10px;">
	                            <div class="inputsAlign">
	                                <label for="">
	                                    <input type="text" name="LEADERMAGAFEE" id="LEADERMAGAFEE" class="smThinInput mountInput" onchange="calculate_leader()">
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
	                                    <input type="text" name="total_amount" id="total_amount" class="smThinInput mountInput">
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
                        <input type="text" name="BIGO" id="BIGO" placeholder="내용을 입력하세요…" class="lgThinInput">
                    </div>
                </div>
            </div>
            <div class="saveBox">
                <input type="checkbox" id="save_leader"><label for="save_leader">입력한 정보를 최신 신상정보로 갱신</label>
            </div>
            <div class="tableButtons" style="justify-content: flex-end; padding: 0 24px 60px 0;">
                <div class="buttons">
                    <a href="#lnk" class="smButton lgBtn" onclick="leader_save()"><img src="/front_img/download.png" alt="">저장</a>
                </div>
            </div>
        </form>
    </div>
</div>
<script>
	function leader_add(){
		var memberno = $('#MEMBERNO').val();
		
		if (memberno == undefined || memberno == null || memberno == '' || memberno == 0) {
	        alert("회원을 선택해주세요.");
	        return false; // 모달을 열지 않음
	    }
	
	    let target = $('.joinBtn').attr("href");
	    $(target).addClass("active");
	    
		$('#joinPopup select').niceSelect('update')
	}
	

	function leader_mod(){
		var idx = $('#leader_idx').val();
		
		if (idx == undefined || idx == null || idx == '' || idx == 0) {
	        alert("선택할 연공 데이터를 선택해주세요");
	        return false; // 모달을 열지 않음
	    }
		
		else{
			let target = $('.joinModeBtn').attr("href");
		    $(target).addClass("active");
		    
			var param = {
				idx : idx,
				memberno : $('#MEMBERNO').val(),
			}
			$.ajax({
				url : "/admin/get_leader_mod"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : true
				, success : function(data, status, xhr) {
					console.log(data.rst)
					$('#YEAR').val(data.rst.startday.substring(0,4))
					$('#CONFIRMY').val(data.rst.confirmy)
					$('#associationcode_leader').val(data.rst.associationcode)
					fn_get_unitylist()
					$('#unitycode_leader').val(data.rst.parenttroopno)
					fn_get_trooplist()
					$('#troop_leader').val(data.rst.troopno)
					$('#leader_orgno').val(data.rst.leaderorgno)
					$('#leader_orgname').val(data.rst.orgname)
					$('#LEADERORGPOSITIONCODE_LEADER').val(data.rst.leaderorgpositioncode)
					$('#LEADERPOSITIONCODE1').val(data.rst.leaderpositioncode1)
					
					debugger
					fn_get_leaderposition(data.rst.leaderpositioncode2)
					$('#LEADERPOSITIONCODE2').val(data.rst.leaderpositioncode2)
					
					if(data.rst.adminy == "Y") $(":checkbox[id='ADMINY']").attr("checked", true);
					if(data.rst.feeexcludecode != "") $(":checkbox[id='FEEEXCLUDE']").attr("checked", true);
					if(data.rst.payy == "Y") $(":checkbox[id='PAYY']").attr("checked", true);
					
					
					$('#FEEEXCLUDCODE').val(data.rst.feeexcludecode)
					$('#BANKDAY').val(data.rst.bankday)
					
					$('#ENTRYFEE').val(data.rst.entryfee)
					$('#INSURANCEFEE').val(data.rst.insurancefee)
					$('#SCOUTMAGACNT').val(data.rst.scoutmagacnt)
					$('#SCOUTMAGAFEE').val(data.rst.scoutmagafee)
					$('#LEADERMAGACNT').val(data.rst.leadermagacnt)
					$('#LEADERMAGAFEE').val(data.rst.leadermagafee)
					$('#BIGO').val(data.rst.bigo)
					calculate_leader()
					//상단 항목 리드온리
				    //$("select[name=YEAR]").attr("disabled", true);
				    //$("select[name=CONFIRMY]").attr("disabled", true);
				    //$("select[name=associationcode_leader]").attr("disabled", true);
				    //$("select[name=unitycode_leader]").attr("disabled", true);
				    //$("select[name=troop_leader]").attr("disabled", true);
				    
					$('#joinPopup select').niceSelect('update')
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
		}
	}
	function fn_get_unitylist(){
		var param = {
				associationcode : $('#associationcode_leader').val(),
		}
		$.ajax({
			url : "/admin/get_unity_list"
			, type : "POST"
			, data : JSON.stringify(param)
			, contentType : "application/json"
			, dataType : "json"
			, async : false
			, success : function(data, status, xhr) {
				var html ="";
				if(data.list){
					var arr = data.list;
					$('#unitycode_leader').children().remove();
					for(var i=0; i<arr.length; i++){
						html += '<option value="'+ arr[i].troopno +'">'+arr[i].disptroopno +" " + arr[i].troopname +'</option>'
					}
					$('#unitycode_leader').append(html)
					$('#joinPopup select').niceSelect('update')
				}
			}
			, error : function(xhr, status, error) {
				console.log(xhr)
				console.log("에러")
			}
		});
		
		//최초등록일때만 최초금액 설정
		if($('#leader_idx').val() == '' || $('#leader_idx').val() == undefined || $('#leader_idx').val() == null){
			var param_price = {
					associationcode : $('#associationcode_leader').val(),
					year : $('#YEAR').val()
			}
			$.ajax({
				url : "/admin/association_price"
				, type : "POST"
				, data : JSON.stringify(param_price)
				, contentType : "application/json"
				, dataType : "json"
				, async : false
				, success : function(data, status, xhr) {
					var html ="";
					if(data && data.rst) $('#ENTRYFEE').val(data.rst.cls99new)
					else $('#ENTRYFEE').val(0)
					calculate_leader()	
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});	
		}
		
		
	}
	function fn_get_trooplist(){
		var param = {
				associationcode : $('#associationcode_leader').val(),
				parenttroopno : $('#unitycode_leader').val()
		}
		$.ajax({
			url : "/admin/get_troop_list_leader"
			, type : "POST"
			, data : JSON.stringify(param)
			, contentType : "application/json"
			, dataType : "json"
			, async : false
			, success : function(data, status, xhr) {
				var html ="";
				if(data.list){
					var arr = data.list;
					$('#troop_leader').children().remove();
					for(var i=0; i<arr.length; i++){
						html += '<option value="'+ arr[i].troopno +'">'+ arr[i].disptroopno + " " + arr[i].troopname +'</option>'
					}
					$('#troop_leader').append(html)
					$('#joinPopup select').niceSelect('update')
				}
				else{
					html += '<option value="0">개인등록</option>'
					$('#troop_leader').append(html)
					$('#joinPopup select').niceSelect('update')
				}
			}
			, error : function(xhr, status, error) {
				console.log(xhr)
				console.log("에러")
			}
		});
	}
	
	function fn_get_leaderposition(leaderpositioncode2){
		$('#LEADERPOSITIONCODE2').children().remove();
		
		if($('#LEADERPOSITIONCODE1').val() == ''){
			console.log("여기를 와야해")
			$('#LEADERPOSITIONCODE2').val("")
			var html2 ='<option value="">-----</option>';
			$('#LEADERPOSITIONCODE2').append(html2)
			$('#joinPopup select').niceSelect('update')
		}
		var param = {
			leaderpositioncode1: $('#LEADERPOSITIONCODE1').val(),
		}
		
		$.ajax({
			url : "/admin/fn_get_leaderposition"
			, type : "POST"
			, data : JSON.stringify(param)
			, contentType : "application/json"
			, dataType : "json"
			, async : true
			, success : function(data, status, xhr) {
				var html ='<option value="">-----</option>';
				if(data.list){
					var arr = data.list;
					
					for(var i=0; i<arr.length; i++){
						html += '<option value="'+ arr[i].leaderpositioncode2 +'">'+arr[i].leaderpositionname +'</option>'
					}
					$('#LEADERPOSITIONCODE2').append(html)
					if(leaderpositioncode2 != null && leaderpositioncode2 != '' && leaderpositioncode2 != undefined){
						$('#LEADERPOSITIONCODE2').val(leaderpositioncode2)
					}
					$('#joinPopup select').niceSelect('update')
				}
			}
			, error : function(xhr, status, error) {
				console.log(xhr)
				console.log("에러")
			}
		});
		
		//최초등록일때만 최초금액 설정
		if($('#leader_idx').val() == '' || $('#leader_idx').val() == undefined || $('#leader_idx').val() == null){
			var param_price = {
					associationcode : $('#associationcode_leader').val(),
					year : $('#YEAR').val()
			}
			$.ajax({
				url : "/admin/association_price"
				, type : "POST"
				, data : JSON.stringify(param_price)
				, contentType : "application/json"
				, dataType : "json"
				, async : true
				, success : function(data, status, xhr) {
					var html ="";
					if(data && data.rst) $('#ENTRYFEE').val(data.rst.cls99new)
					else $('#ENTRYFEE').val(0)
					calculate_leader()	
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});	
		}
	}
	
	function leader_save(){
		var adminy = "N"
		if(document.getElementById("ADMINY").checked) adminy = "Y";
		var payy = "N"
		if(document.getElementById("PAYY").checked) payy = "Y";
		
		
		var param = {
			memberno : $('#MEMBERNO').val(),
			startday : $('#YEAR').val()+ "-01-01",
			endday : $('#YEAR').val()+ "-12-31",
			confirmy : $('#CONFIRMY').val(),
			associationcode: $('#associationcode_leader').val(),
			parenttroopno : $('#unitycode_leader').val(),
			troopno : $('#troop_leader').val(),
			leaderorgno : $('#leader_orgno').val(),
			leaderorgpositioncode : $('#LEADERORGPOSITIONCODE_LEADER').val(),
			leaderpositioncode1 :$('#LEADERPOSITIONCODE1').val(),
			leaderpositioncode2 :$('#LEADERPOSITIONCODE2').val(),
			adminy : adminy,
			
			feeexcludcode : $('#FEEEXCLUDCODE').val(),
			bankday : $('#BANKDAY').val(),
			payy : payy,
			entryfee : $('#ENTRYFEE').val(),
			insurancefee : $('#INSURANCEFEE').val(),
			scoutmagacnt : $('#SCOUTMAGACNT').val(),
			scoutmagafee : $('#SCOUTMAGAFEE').val(),
			leadermagacnt : $('#LEADERMAGACNT').val(),
			ledermagafee : $('#LEADERMAGAFEE').val(),
			leader_idx : $('#leader_idx').val(),
			savetype : "update",
			kname : $('#KNAME').val()
		}
		
		if($('#YEAR').val() == null || $('#YEAR').val() == '' || $('#YEAR').val() == undefined){
			alert("연차 년도를 입력해주세요.")
			return false;
		}
		
		if($('#CONFIRMY').val() == null || $('#CONFIRMY').val() == '' || $('#CONFIRMY').val() == undefined){
			alert("승인여부를 입력해주세요.")
			return false;
		}
		
		var text ="선택한 연공을 수정하시겠습니까?";
		if($('#leader_idx').val() == '' || $('#leader_idx').val() == undefined || $('#leader_idx').val() == null){
			text ="신규 연공을 등록하시겠습니까?";
			param.savetype = "insert"
			param.leader_idx = "0"
			
			if(confirm (text)){
				$('#leader_list').children().remove();
				debugger
				$.ajax({
					url : "/admin/leader_save"
					, type : "POST"
					, data : JSON.stringify(param)
					, contentType : "application/json"
					, async : true
					, success : function(data, status, xhr) {
						console.log(data)
						alert("정상적으로 저장되었습니다.")
						
						var arr = data.list;
						var html = ""

						$('#leader_date').text(data.info.enterdate)
						$('#leader_whole_incnt').text(arr.length)
						$('#leader_incnt').text(data.info.leaderincnt)
						
						
						$('#year_cnt_leader').text(arr.length + " rows")
						for(var i=0; i<arr.length; i++){
							html += '<tr id="leader_list_row_'+arr[i].idx+'" onclick="fn_leader_info('+arr[i].idx+')">'+
								'<td>' + Number(i+1) + '</td>' +
								'<td>' + arr[i].adminy + '</td>'+
								'<td>' + arr[i].year + '</td>'+
								'<td>' + arr[i].associationname + '</td>'+
								'<td>' + arr[i].unity + '</td>'+
								'<td>' + arr[i].troopname + '</td>'+
								'<td>' + arr[i].leaderposition + '</td>'+
								'<td>' + arr[i].leaderpositionname + '</td>'+
								'<td>' + arr[i].orgname  + '</td>'+
								'<td>' + arr[i].scoutmagacnt  + '</td>'+
								'<td>Y</td>'+
								'<td>' + arr[i].confirmy + '</td>'+
								'<td>' + arr[i].payy + '</td>'+
								'<td>' + arr[i].enterdate.substring(0,11) + '</td>'+
								'<td></td>'+
								'<td></td>'+
								'<td>' + arr[i].leaderorgpositionname + '</td>'+
								'<td>' + arr[i].entryfee + '</td>'+
								'<td>' + Number(arr[i].scoutmagacnt) * 10000  + '</td>'+
								'<td>X</td>'+
								'<td>X</td>'+
								'<td>' + arr[i].year + '-01-01 ~ ' + arr[i].year + '-12-31' + '</td>'+
								'</tr>';
						}
						$('#leader_list').append(html)
						
						
						$('#joinPopup').removeClass('active');
						
					}
					, error : function(xhr, status, error) {
						console.log(xhr)
						console.log("에러")
					}
				});
			}
		}
		else{
			if(confirm (text)){
				$('#leader_list').children().remove();
				$.ajax({
					url : "/admin/leader_update"
					, type : "POST"
					, data : JSON.stringify(param)
					, contentType : "application/json"
					, async : true
					, success : function(data, status, xhr) {
						console.log(data)
						alert("정상적으로 저장되었습니다.")
						
						var arr = data.list;
						var html = ""

						$('#leader_date').text(data.info.enterdate)
						$('#leader_whole_incnt').text(arr.length)
						$('#leader_incnt').text(data.info.leaderincnt)
						
						
						$('#year_cnt_leader').text(arr.length + " rows")
						for(var i=0; i<arr.length; i++){
							html += '<tr id="leader_list_row_'+arr[i].idx+'" onclick="fn_leader_info('+arr[i].idx+')">'+
								'<td>' + Number(i+1) + '</td>' +
								'<td>' + arr[i].adminy + '</td>'+
								'<td>' + arr[i].year + '</td>'+
								'<td>' + arr[i].associationname + '</td>'+
								'<td>' + arr[i].unity + '</td>'+
								'<td>' + arr[i].troopname + '</td>'+
								'<td>' + arr[i].leaderposition + '</td>'+
								'<td>' + arr[i].leaderpositionname + '</td>'+
								'<td>' + arr[i].orgname  + '</td>'+
								'<td>' + arr[i].scoutmagacnt  + '</td>'+
								'<td>Y</td>'+
								'<td>' + arr[i].confirmy + '</td>'+
								'<td>' + arr[i].payy + '</td>'+
								'<td>' + arr[i].enterdate.substring(0,11) + '</td>'+
								'<td></td>'+
								'<td></td>'+
								'<td>' + arr[i].leaderorgpositionname + '</td>'+
								'<td>' + arr[i].entryfee + '</td>'+
								'<td>' + Number(arr[i].scoutmagacnt) * 10000  + '</td>'+
								'<td>X</td>'+
								'<td>X</td>'+
								'<td>' + arr[i].year + '-01-01 ~ ' + arr[i].year + '-12-31' + '</td>'+
								'</tr>';
						}
						$('#leader_list').append(html)
						$('#joinPopup').removeClass('active');
						
						//리드온리 해제
						//$("select[name=YEAR]").attr("disabled", false);
					    //$("select[name=CONFIRMY]").attr("disabled", false);
					    //$("select[name=associationcode_leader]").attr("disabled", false);
					    //$("select[name=unitycode_leader]").attr("disabled", false);
					    //$("select[name=troop_leader]").attr("disabled", false);
					    
						$('#joinPopup select').niceSelect('update')
						
					}
					, error : function(xhr, status, error) {
						console.log(xhr)
						console.log("에러")
					}
				});
			}
		}
	}
	
	function calculate_leader(){
		var ENTRYFEE = $('#ENTRYFEE').val()
		var INSURANCEFEE = $('#INSURANCEFEE').val()
		var SCOUTMAGAFEE = $('#SCOUTMAGAFEE').val()
		var LEADERMAGAFEE = $('#LEADERMAGAFEE').val()
		
		var total_amount = Number(ENTRYFEE) + Number(INSURANCEFEE) + Number(SCOUTMAGAFEE) + Number(LEADERMAGAFEE)
		
		$('#total_amount').val(total_amount)
		
	}
	function calculate_boo_leader(){
		var ENTRYFEE = $('#ENTRYFEE').val()
		var INSURANCEFEE = $('#INSURANCEFEE').val()
		
		var SCOUTMAGACNT = $('#SCOUTMAGACNT').val()
		var SCOUTMAGAFEE = Number(SCOUTMAGACNT) * 10000
		$('#SCOUTMAGAFEE').val(SCOUTMAGAFEE)
		
		var LEADERMAGACNT = $('#LEADERMAGACNT').val()
		var LEADERMAGAFEE = Number(LEADERMAGACNT) * 10000
		$('#LEADERMAGAFEE').val(LEADERMAGAFEE);
		
		var total_amount = Number(ENTRYFEE) + Number(INSURANCEFEE) + Number(SCOUTMAGAFEE) + Number(LEADERMAGAFEE)
		
		$('#total_amount').val(total_amount)
		
	}
	
	
	
</script>
