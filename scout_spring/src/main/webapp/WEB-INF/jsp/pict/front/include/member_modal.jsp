<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<div id="joinMemPopup" class="modalContainer">
    <div class="modalInner lg">
        <button type="button"><img src="/front_img/close.png" alt=""></button>
        <div class="modalTit">
            <p>대원 가입</p>
        </div>
        <form action="">
            <div class="basicInfo1 inputsPd bottomBd">
                <div class="stackInputs">
                    <h3 class="subTitles">회원정보</h3>
                    <div class="inputsContainer">
                        <div class="inputBox">
                            <p class="inputCaption">성명</p>
                            <input type="text" name="dmyKNAME_SCOUT" id="dmyKNAME_SCOUT" readonly placeholder="내용을 입력하세요…" class="lgThinInput">
                        </div>
                        <div class="inputBox">
                            <p class="inputCaption">연차년도</p>
                            <select name="YEAR_SCOUT" id="YEAR_SCOUT" class="smThinSelect">
                                <option value="2027">2027</option>
                                <option value="2026">2026</option>
                                <option value="2025">2025</option>
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
                            <select name="CONFIRMY_SCOUT" id="CONFIRMY_SCOUT" class="smThinSelect">
                                <option value="Y">승인</option>
                                <option value="N">미승인</option>
                            </select>
                        </div>
                    </div>
                    <div class="inputsContainer">
                        <div class="inputBox">
                            <p class="inputCaption">연맹/연합회</p>
                            <div class="inputsAlign">   
                                <select name="associationcode_scout" id="associationcode_scout" onchange="fn_get_unitylist_scout()" class="smThinSelect">
                             		<c:forEach var="association_list" items="${association_list}" varStatus="status">
	                                	<option value="${association_list.ASSOCIATIONCODE}"> ${association_list.ASSOCIATIONNAME}</option>
	                                </c:forEach>
                                </select>
                                
                                <select name="unitycode_scout" id="unitycode_scout" class="smThinSelect" onchange="fn_get_trooplist_scout()">
	                            	<option value="">전체</option>
									<c:forEach var="unity_list" items="${unity_list}" varStatus="status">
										<option value="${unity_list.TROOPNO}">${unity_list.TROOPNAME}</option>
									</c:forEach>
	                            </select>
                            </div>
                        </div>
                        <div class="inputBox">
                            <p class="inputCaption">단위대</p>
                            <select name="troop_scout" id="troop_scout" class="lgThinSelect"></select>
                        </div>
                    </div>  
                    <div class="inputsContainer">
                        <div class="inputBox">
                            <p class="inputCaption">소속학교</p>
                            <div class="inputsAlign">
                                <input type="text"  name="scout_orgname" id="scout_orgname" placeholder="내용을 입력하세요…" class="lgThinInput">
                                <input type="hidden"  name="scout_orgno" id="scout_orgno" placeholder="내용을 입력하세요…" class="lgThinInput">
                                <a href="#groupPopup" onclick="fn_orgnize('modal_scout')" class="smButton searches" style="margin-right: 12px;"><img src="/front_img/search2.png" alt="">조회</a>
                            </div>
                        </div>
                        <div class="inputBox">
                            <p class="inputCaption">학년/반</p>
                            <div class="inputsAlign">
	                            <select name="SCOUTSCHOOLYEAR_SCOUT" id="SCOUTSCHOOLYEAR_SCOUT" class="smThinSelect">
	                                <option value="">-----</option>
	                                <option value="1">1</option>
	                                <option value="2">2</option>
	                                <option value="3">3</option>
	                                <option value="4">4</option>
	                                <option value="5">5</option>
	                                <option value="6">6</option>
	                            </select>
	                            <input type="text" name="SCOUTSCHOOLBAN_SCOUT" id="SCOUTSCHOOLBAN_SCOUT" class="smThinInput">
                        	</div>
                        </div> 
                    </div>
                    <div class="inputsContainer">
                        <div class="inputBox">
                            <p class="inputCaption">스카우트직책</p>
                            <div class="inputsAlign">
                                <select name="SCOUTCLSCODE" id="SCOUTCLSCODE" class="lgThinSelect" onchange="fn_get_scoutclscode()">
                                	<option value="">-----</option>
                                	<option value="01">비버</option>
                                	<option value="02">컵</option>
                                	<option value="03">스카우트</option>
                                	<option value="04">벤처</option>
                                	<option value="05">로버</option>
                                	<option value="06">기타</option>
                                	<option value="99">복합</option>
                                </select>
                                <select name="SCOUTPOSITIONCODE" id="SCOUTPOSITIONCODE" class="lgThinSelect"></select>
                            </div>
                        </div>
                        <div class="inputBox">
                            <p class="inputCaption">스카우트반</p>
                            <input type="text" name="SCOUTBAN" id="SCOUTBAN" placeholder="내용을 입력하세요…" class="smThinInput">
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
	                                <input type="checkbox" name="FEEEXCLUDE_SCOUT" id="FEEEXCLUDE_SCOUT" class="circleCheck"><label for="FEEEXCLUDE_SCOUT">면제</label>
	                            </div>
	                            <select name="FEEEXCLUDCODE_SCOUT" id="FEEEXCLUDCODE_SCOUT" class="smThinSelect">
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
	                            <input type="date" name="BANKDAY_SCOUT" id="BANKDAY_SCOUT" class="lgThinInput">
	                            <div>
	                                <input type="checkbox" name="PAYY_SCOUT" id="PAYY_SCOUT" class="circleCheck" value="Y"><label for="PAYY_SCOUT">납부완료</label>
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
	                                    <input type="text" name="ENTRYFEE_SCOUT" id="ENTRYFEE_SCOUT" class="smThinInput mountInput" onchange="calculate_scout()">
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
	                                    <input type="text" name="INSURANCEFEE_SCOUT" id="INSURANCEFEE_SCOUT" class="smThinInput mountInput" onchange="calculate_scout()">
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
	                                            <input type="text" name="SCOUTMAGACNT_SCOUT" id="SCOUTMAGACNT_SCOUT"  class="smThinInput" onchange="calculate_boo_scout()">
	                                        </label>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="inputBox" style="margin-bottom: 10px;">
	                            <div class="inputsAlign">
	                                <label for="">
	                                    <input type="text" name="SCOUTMAGAFEE_SCOUT" id="SCOUTMAGAFEE_SCOUT" class="smThinInput mountInput" onchange="calculate_scout()">
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
	                                    <input type="text" name="total_amount_scout" id="total_amount_scout" class="smThinInput mountInput">
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
                        <input type="text" name="BIGO_SCOUT" id="BIGO_SCOUT" placeholder="내용을 입력하세요…" class="lgThinInput">
                    </div>
                </div>
            </div>
            <div class="saveBox">
                <input type="checkbox" name="save" id="save"><label for="save">입력한 정보를 최신 신상정보로 갱신</label>
            </div>
            <div class="tableButtons" style="justify-content: flex-end; padding: 0 24px 60px 0;">
                <div class="buttons">
                    <a href="#lnk" class="smButton lgBtn" onclick="scout_save()"><img src="/front_img/download.png" alt="">저장</a>
                </div>
            </div>
        </form>
    </div>
</div>
<script>
	function scout_add(){
		var memberno = $('#MEMBERNO').val();
		
		if (memberno == undefined || memberno == null || memberno == '' || memberno == 0) {
	        alert("회원을 선택해주세요.");
	        return false; // 모달을 열지 않음
	    }
	
	    let target = $('.scoutJoinBtn').attr("href");
	    $(target).addClass("active");
	    
		$('#joinMemPopup select').niceSelect('update')
	}
	
	
	function scout_mod(){
		var idx = $('#scout_idx').val();
		
		if (idx == undefined || idx == null || idx == '' || idx == 0) {
	        alert("선택할 연공 데이터를 선택해주세요");
	        return false; // 모달을 열지 않음
	    }
		
		else{
			let target = $('.scoutJoinMemBtn').attr("href");
		    $(target).addClass("active");
		    
			var param = {
				idx : idx,
				memberno : $('#MEMBERNO').val(),
			}
			$.ajax({
				url : "/get_scout_mod"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : true
				, success : function(data, status, xhr) {
					console.log(data.rst)
					$('#YEAR_SCOUT').val(data.rst.startday.substring(0,4))
					$('#CONFIRMY_SCOUT').val(data.rst.confirmy)
					$('#associationcode_scout').val(data.rst.associationcode)
					fn_get_unitylist_scout()
					$('#unitycode_scout').val(data.rst.parenttroopno)
					fn_get_trooplist_scout()
					$('#troop_scout').val(data.rst.troopno)
					$('#scout_orgno').val(data.rst.scoutorgno)
					$('#scout_orgname').val(data.rst.orgname)
					

					$('#SCOUTSCHOOLYEAR_SCOUT').val(data.rst.scoutschoolyear)					
					$('#SCOUTSCHOOLBAN_SCOUT').val(data.rst.scoutschoolban)
					
					$('#SCOUTCLSCODE').val(data.rst.scoutclscode)
					fn_get_scoutclscode()
					$('#SCOUTPOSITIONCODE').val(data.rst.scoutpositioncode)
					
					$('#SCOUTBAN').val(data.rst.scoutban)
					
					if(data.rst.feeexcludecode != "") $(":checkbox[id='FEEEXCLUDE_SCOUT']").attr("checked", true);
					if(data.rst.payy == "Y") $(":checkbox[id='PAYY_SCOUT']").attr("checked", true);
					
					$('#FEEEXCLUDCODE_SCOUT').val(data.rst.feeexcludecode)
					$('#BANKDAY_SCOUT').val(data.rst.bankday)
					
					$('#ENTRYFEE_SCOUT').val(data.rst.entryfee)
					$('#INSURANCEFEE_SCOUT').val(data.rst.insurancefee)
					$('#SCOUTMAGACNT_SCOUT').val(data.rst.scoutmagacnt)
					$('#SCOUTMAGAFEE_SCOUT').val(data.rst.scoutmagafee)
					$('#BIGO_SCOUT').val(data.rst.bigo)
					calculate_scout()
					
					//상단 항목 리드온리
				    $("select[name=YEAR_SCOUT]").attr("disabled", true);
				    $("select[name=CONFIRMY_SCOUT]").attr("disabled", true);
				    $("select[name=associationcode_scout]").attr("disabled", true);
				    $("select[name=unitycode_scout]").attr("disabled", true);
				    $("select[name=troop_scout]").attr("disabled", true);
					
					$('#joinMemPopup select').niceSelect('update')
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
		}
	}
	
	function fn_get_unitylist_scout(){
		var param = {
				associationcode : $('#associationcode_scout').val(),
		}
		$.ajax({
			url : "/get_unity_list"
			, type : "POST"
			, data : JSON.stringify(param)
			, contentType : "application/json"
			, dataType : "json"
			, async : false
			, success : function(data, status, xhr) {
				var html ="";
				if(data.list){
					var arr = data.list;
					$('#unitycode_scout').children().remove();
					for(var i=0; i<arr.length; i++){
						html += '<option value="'+ arr[i].troopno +'">'+arr[i].disptroopno +" " + arr[i].troopname +'</option>'
					}
					$('#unitycode_scout').append(html)
					$('#joinMemPopup select').niceSelect('update')
				}
			}
			, error : function(xhr, status, error) {
				console.log(xhr)
				console.log("에러")
			}
		});
	}
	function fn_get_trooplist_scout(){
		var param = {
			associationcode : $('#associationcode_scout').val(),
			parenttroopno : $('#unitycode_scout').val()
		}
		$.ajax({
			url : "/get_troop_list_leader"
			, type : "POST"
			, data : JSON.stringify(param)
			, contentType : "application/json"
			, dataType : "json"
			, async : false
			, success : function(data, status, xhr) {
				var html ="";
				if(data.list){
					var arr = data.list;
					$('#troop_scout').children().remove();
					for(var i=0; i<arr.length; i++){
						html += '<option value="'+ arr[i].troopno +'">'+ arr[i].disptroopno + " " + arr[i].troopname +'</option>'
					}
					$('#troop_scout').append(html)
					$('#joinMemPopup select').niceSelect('update')
				}
			}
			, error : function(xhr, status, error) {
				console.log(xhr)
				console.log("에러")
			}
		});
	}
	
	function fn_get_scoutclscode(){
		$('#SCOUTPOSITIONCODE').children().remove();
		
		if($('#SCOUTCLSCODE').val() == '01' || $('#SCOUTCLSCODE').val() == '05' || $('#SCOUTCLSCODE').val() == '06' || $('#SCOUTCLSCODE').val() == '99'){
			$('#SCOUTPOSITIONCODE').val("")
			var html2 ='<option value="">-----</option>';
			$('#SCOUTPOSITIONCODE').append(html2)
			$('#joinMemPopup select').niceSelect('update')
		}
		
		var param = {
			scoutclscode : $('#SCOUTCLSCODE').val()
		}
		
		$.ajax({
			url : "/fn_get_scoutpositioncode"
			, type : "POST"
			, data : JSON.stringify(param)
			, contentType : "application/json"
			, dataType : "json"
			, async : false
			, success : function(data, status, xhr) {
				var html ='<option value="">-----</option>'
				if(data.list){
					var arr = data.list;
					$('#SCOUTPOSITIONCODE').children().remove();
					for(var i=0; i<arr.length; i++){
						html += '<option value="'+ arr[i].scoutpositioncode +'">'+arr[i].scoutpositionname +'</option>'
					}
					$('#SCOUTPOSITIONCODE').append(html)
					$('#joinMemPopup select').niceSelect('update')
				}
			}
			, error : function(xhr, status, error) {
				console.log(xhr)
				console.log("에러")
			}
		});
	}
	
	function scout_save(){
		var payy = "N"
		if(document.getElementById("PAYY_SCOUT").checked) payy = "Y";
		
		
		var param = {
			memberno : $('#MEMBERNO').val(),
			startday : $('#YEAR_SCOUT').val()+ "-01-01",
			endday : $('#YEAR_SCOUT').val()+ "-12-31",
			confirmy : $('#CONFIRMY_SCOUT').val(),
			associationcode: $('#associationcode_scout').val(),
			parenttroopno : $('#unitycode_scout').val(),
			troopno : $('#troop_scout').val(),
			
			scoutorgno : $('#scout_orgno').val(),
			scoutschoolyear : $('#SCOUTSCHOOLYEAR').val(),
			scoutschoolban :$('#SCOUTSCHOOLBAN').val(),
			
			scoutclscode :$('#SCOUTCLSCODE').val(),
			scoutpositioncode :$('#SCOUTPOSITIONCODE').val(),
			scoutban :$('#SCOUTBAN').val(),
			
			feeexcludcode : $('#FEEEXCLUDCODE_SCOUT').val(),
			bankday : $('#BANKDAY_SCOUT').val(),
			payy : payy,
			entryfee : $('#ENTRYFEE_SCOUT').val(),
			insurancefee : $('#INSURANCEFEE_SCOUT').val(),
			scoutmagacnt : $('#SCOUTMAGACNT_SCOUT').val(),
			scoutmagafee : $('#SCOUTMAGAFEE_SCOUT').val(),
			scout_idx : $('#scout_idx').val(),
			savetype : "update"
		}
		debugger
		var text ="선택한 연공을 수정하시겠습니까?";
		if($('#scout_idx').val() == '' || $('#scout_idx').val() == undefined || $('#scout_idx').val() == null){
			text ="신규 연공을 등록하시겠습니까?";
			param.savetype = "insert"
			param.scout_idx = "0"
			
			if(confirm (text)){
				$.ajax({
					url : "/scout_save"
					, type : "POST"
					, data : JSON.stringify(param)
					, contentType : "application/json"
					, async : true
					, success : function(data, status, xhr) {
						console.log(data)
						alert("정상적으로 저장되었습니다.")
						$('#joinMemPopup').removeClass('active');
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
				$.ajax({
					url : "/scout_update"
					, type : "POST"
					, data : JSON.stringify(param)
					, contentType : "application/json"
					, async : true
					, success : function(data, status, xhr) {
						console.log(data)
						alert("정상적으로 저장되었습니다.")
						$('#joinMemPopup').removeClass('active');
					}
					, error : function(xhr, status, error) {
						console.log(xhr)
						console.log("에러")
					}
				});
			}
		}
	}
	
	function calculate_scout(){
		var ENTRYFEE = $('#ENTRYFEE_SCOUT').val()
		var INSURANCEFEE = $('#INSURANCEFEE_SCOUT').val()
		var SCOUTMAGAFEE = $('#SCOUTMAGAFEE_SCOUT').val()
		var total_amount = Number(ENTRYFEE) + Number(INSURANCEFEE) + Number(SCOUTMAGAFEE)
		
		$('#total_amount_scout').val(total_amount)
		
	}
	function calculate_boo_scout(){
		var ENTRYFEE = $('#ENTRYFEE_SCOUT').val()
		var INSURANCEFEE = $('#INSURANCEFEE_SCOUT').val()
		
		var SCOUTMAGACNT = $('#SCOUTMAGACNT_SCOUT').val()
		var SCOUTMAGAFEE = Number(SCOUTMAGACNT) * 10000
		$('#SCOUTMAGAFEE_SCOUT').val(SCOUTMAGAFEE)
		

		var total_amount = Number(ENTRYFEE) + Number(INSURANCEFEE) + Number(SCOUTMAGAFEE)
		
		$('#total_amount_scout').val(total_amount)
		
	}
</script>