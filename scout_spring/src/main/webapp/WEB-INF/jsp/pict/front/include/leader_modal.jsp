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
                            <input type="text" name="dmyKNAME" id="dmyKNAME" readonly placeholder="내용을 입력하세요…" class="lgThinInput">
                        </div>
                        <div class="inputBox">
                            <p class="inputCaption">연차년도</p>
                            <select name="STARTDAY" id="STARTDAY" class="smThinSelect">
                                <option value="2020-01-01">2020</option>
                                <option value="2021-01-01">2021</option>
                                <option value="2022-01-01">2022</option>
                                <option value="2023-01-01">2023</option>
                                <option value="2024-01-01">2024</option>
                                <option value="2025-01-01">2025</option>
                                <option value="2026-01-01">2026</option>
                                <option value="2027-01-01">2027</option>
                                <option value="2028-01-01">2028</option>
                                <option value="2029-01-01">2029</option>
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
	                                	<option value="${association_list.ASSOCIATIONCODE}" <c:if test="${association_list.ASSOCIATIONCODE eq pictVO.search_associationcode}">selected</c:if> > ${association_list.ASSOCIATIONNAME}</option>
	                                </c:forEach>
                                </select>
                                
                                <select name="unitycode_leader" id="unitycode_leader" class="smThinSelect" onchange="fn_get_trooplist()">
	                            	<option value="">전체</option>
									<c:forEach var="unity_list" items="${unity_list}" varStatus="status">
										<option value="${unity_list.TROOPNO}" <c:if test="${unity_list.PARENTTROOPNO eq pictVO.search_unitycode}">selected</c:if>>${unity_list.TROOPNAME}</option>
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
                                <input type="text"  name="KNAME" id="KNAME" placeholder="내용을 입력하세요…" class="lgThinInput">
                                <a href="#lnk" class="smButton searches" style="margin-right: 12px;"><img src="/front_img/search2.png" alt="">조회</a>
                                <select name="" id="" class="smThinSelect">
                                    <option value="N">비전종</option>
                                    <option value="Y">전종</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="inputsContainer">
                        <div class="inputBox">
                            <p class="inputCaption">지도자직책</p>
                            <div class="inputsAlign">
                                <select name="" id="" class="lgThinSelect">
                                    <option value="N">비전종</option>
                                    <option value="Y">전종</option>
                                </select>
                                <select name="" id="" class="lgThinSelect">
                                    <option value="N">비전종</option>
                                    <option value="Y">전종</option>
                                </select>
                                <input type="checkbox" name="ADMINY" id="ADMINY" class="circleCheck"><label for="ADMINY">관리지도자</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="paymentForm">
            <h3 class="subTitles" style="padding: 16px 24px 0 24px;">회비 정보</h3>
            <div class="inputsContainer inputsPd bottomBd">
                <div class="inputsContainer">
                    <div class="inputBox">
                        <p class="inputCaption">면제여부</p>
                            <div class="inputsAlign">
                            <div>
                                <input type="checkbox" name="FEEEXCLUDE" id="FEEEXCLUDE" class="circleCheck"><label for="FEEEXCLUDE">면제</label>
                            </div>
                            <select name="FEEEXCLUDCODE" id="FEEEXCLUDCODE" class="smThinSelect" disabled>
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
                            <input type="date" name="BANKDAY" id="BANKDAY" class="lgThinInput">
                            <div>
                                <input type="checkbox" name="PAYY" id="PAYY" class="circleCheck"><label for="PAYY">납부완료</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="stackInputs">
                    <div class="inpustFlex">
                        <div class="inputBox">
                            <p class="inputCaption">등록</p>
                            <div class="inputsAlign">
                                <label for="">
                                    <input type="text" name="ENTERFEE" id="ENTERFEE" placeholder="0" class="smThinInput mountInput">
                                    <span class="mountCaption">원</span>
                                </label>
                            </div>
                        </div>
                        <div class="mountResult">
                            <p class="mountCaption">
                                <span>0</span>
                                원
                            </p>
                        </div>
                    </div>
                </div>
                <div class="stackInputs">
                    <div class="inpustFlex">
                        <div class="inputBox">
                            <p class="inputCaption">안전활동부담금</p>
                            <div class="inputsAlign">
                                <label for="">
                                    <input type="text" name="INSURANCEFEE" id="INSURANCEFEE" placeholder="0" class="smThinInput mountInput">
                                    <span class="mountCaption">원</span>
                                </label>
                                <div>
                                    <input type="checkbox" name="" id="" class="circleCheck"><label for="" class="lableOnly"></label>
                                </div>
                            </div>
                        </div>
                        <div class="mountResult">
                            <p class="mountCaption">
                                <span>0</span>
                                원
                            </p>
                        </div>
                    </div>
                </div>
                <div class="stackInputs">
                    <div class="inpustFlex">
                        <div class="inputBox">
                            <p class="inputCaption">월간지</p>
                            <div class="inputsAlign">
                                <label for="">
                                    <input type="text" name="SCOUTMAGAFEE" id="SCOUTMAGAFEE" placeholder="0" class="smThinInput mountInput">
                                    <span class="mountCaption">원</span>
                                </label>
                                <div>
                                    <input type="checkbox" name="" id="" class="circleCheck"><label for="" class="lableOnly"></label>
                                </div>
                                <div class="inputBox" style="position: relative; bottom: 9px;">
                                    <p class="inputCaption">부수</p>
                                    <div class="inputsAlign">
                                        <label for="">
                                            <input type="text" name="SCOUTMAGACNT" id="SCOUTMAGACNT" placeholder="00" class="smThinInput">
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mountResult">
                            <p class="mountCaption">
                                <span>0</span>
                                원
                            </p>
                        </div>
                    </div>
                </div>
                <div class="stackInputs">
                    <div class="inpustFlex">
                        <div class="inputBox">
                            <p class="inputCaption">격월간지</p>
                            <div class="inputsAlign">
                                <label for="">
                                    <input type="text" name="LEADERMAGAFEE" id="LEADERMAGAFEE" placeholder="0" class="smThinInput mountInput">
                                    <span class="mountCaption">원</span>
                                </label>
                                <div>
                                    <input type="checkbox" name="" id="" class="circleCheck"><label for="" class="lableOnly"></label>
                                </div>
                                <div class="inputBox" style="position: relative; bottom: 9px;">
                                    <p class="inputCaption">부수</p>
                                    <div class="inputsAlign">
                                        <label for="">
                                            <input type="text" name="LEADERMAGACNT" id="LEADERMAGACNT" placeholder="00" class="smThinInput">
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mountResult">
                            <p class="mountCaption">
                                <span>0</span>
                                원
                            </p>
                        </div>
                    </div>
                </div>
                <div class="stackInputs">
                    <div class="inpustFlex">
                        <div class="inputBox">
                            <p class="inputCaption">총계</p>
                            <div class="inputsAlign">
                                <label for="">
                                    <input type="text" name="total_amount" id="total_amount" placeholder="0" class="smThinInput mountInput">
                                    <span class="mountCaption">원</span>
                                </label>
                            </div>
                        </div>
                        <div class="mountResult">
                            <p class="mountCaption">
                                <span>0</span>
                                원
                            </p>
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
                <input type="checkbox" name="save" id="save"><label for="save">입력한 정보를 최신 신상정보로 갱신</label>
            </div>
            <div class="tableButtons" style="justify-content: flex-end; padding: 0 24px 60px 0;">
                <div class="buttons">
                    <a href="#lnk" class="smButton" onclick="leader_save()"><img src="/front_img/download.png" alt="">저장</a>
                </div>
            </div>
        </form>
    </div>
</div>
<script>
	function fn_get_unitylist(){
		var param = {
				associationcode : $('#associationcode_leader').val(),
		}
		$.ajax({
			url : "/get_unity_list"
			, type : "POST"
			, data : JSON.stringify(param)
			, contentType : "application/json"
			, dataType : "json"
			, async : false
			, success : function(data, status, xhr) {
				console.log(data.list)
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
	}
	function fn_get_trooplist(){
		var param = {
				associationcode : $('#associationcode_leader').val(),
				parenttroopno : $('#unitycode_leader').val()
		}
		$.ajax({
			url : "/get_troop_list_leader"
			, type : "POST"
			, data : JSON.stringify(param)
			, contentType : "application/json"
			, dataType : "json"
			, async : false
			, success : function(data, status, xhr) {
				console.log(data.list)
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
			}
			, error : function(xhr, status, error) {
				console.log(xhr)
				console.log("에러")
			}
		});
	}
	function leader_save(){
		var param = {
			memberno : $('#memberno').val(),
			startday : $('#STARTDAY').val(),
			associationcode : $('#associationcode_leader').val(),
			parenttroopno : $('#unitycode_leader').val()
		}
		$.ajax({
			url : "/"
			, type : "POST"
			, data : JSON.stringify(param)
			, contentType : "application/json"
			, dataType : "json"
			, async : false
			, success : function(data, status, xhr) {
				console.log(data.list)
				
			}
			, error : function(xhr, status, error) {
				console.log(xhr)
				console.log("에러")
			}
		});
	}
	
	
	
</script>