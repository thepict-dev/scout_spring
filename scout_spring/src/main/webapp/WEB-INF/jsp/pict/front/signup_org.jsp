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
	        <div class="formContainer">
	            <div class="joinContainer">
	                <div class="fomrTabContent signContainer">
	                    <form action="" id="register_org" name="register_org" method="post" enctype="multipart/form-data">
	                        <h2 class="subTitles" style="padding: 16px 24px 0 24px;">기본정보</h2>
	                        <div class="stackInputs bottomBd" style="padding: 12px 24px 16px 24px;">
	                            <div class="inputsContainer">
	                                <div class="inputBox">
	                                    <p class="inputCaption">연맹/지구</p>
	                                    <div class="inputsAlign">
				                            <select name="ASSOCIATIONCODE" id="ASSOCIATIONCODE" onchange="fn_get_unitylist_org()" class="lgThinSelect">
				                                <c:forEach var="association_list" items="${association_list}" varStatus="status">
				                                	<option value="${association_list.ASSOCIATIONCODE}"> ${association_list.ASSOCIATIONNAME}</option>
				                                </c:forEach>
				                            </select>
	                                        <select name="PARENTTROOPNO" id="PARENTTROOPNO" class="smThinSelect">
	                                            <option value="">지구 선택</option>
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
					                        <select name="TROOPCLSCODE1" id="TROOPCLSCODE1" onchange="fn_troopclscode_org()" class="lgThinSelect">
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
	                                        <input type="text"  name="DISPTROOPNO" id="DISPTROOPNO" placeholder="내용을 입력하세요…" class="smThinInput">
	                                    </div>
	                                </div>
	                                <div class="inputBox">
	                                    <p class="inputCaption">결성일</p>
	                                    <input type="date" name="REGDAY" id="REGDAY" value="${pictVO.REGDAY}" class="lgThinInput">
	                                </div>
	                            </div>
	                            <div class="inputsContainer">
	                                <div class="inputBox">
	                                    <p class="inputCaption">영문명</p>
	                                    <input type="text"  name="ENGTROOPNAME" id="ENGTROOPNAME" placeholder="내용을 입력하세요…" class="lgThinInput">
	                                </div>
	                            </div>
	                            <div class="inputsContainer">
	                                <div class="inputBox">
	                                    <p class="inputCaption">단위대명</p>
	                                    <input type="text"  name="TROOPNAME" id="TROOPNAME" placeholder="내용을 입력하세요…" class="lgThinInput">
	                                </div>
	                                <div class="inputBox">
	                                    <p class="inputCaption">관할교육청</p>
	                                    <div class="inputsAlign">
	                                    	<span class="bindingText" id="SCHOOLHALL"></span>
                                			<a href="#groupPopup" class="smButton bigWhiteBtn groupBtn">육성단체지정</a>
                                			<input type="hidden" name="ORGNO" id="ORGNO">
                               			</div>
	                                </div>
	                            </div>
	                            <div class="inputsContainer">
	                                <div class="inputBox">
	                                    <p class="inputCaption">주소</p>
	                                    <div class="zip">
	                                        <input type="text" name="POSTCODE" id="POSTCODE" readonly class="lgThinInput">
	                                        <a href="#lnk" id="searchZip" class="normalButton white">우편번호 검색</a>
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
	                                    <input type="text" name="FAXNO" id="FAXNO" placeholder="내용을 입력하세요…" class="lgThinInput">
	                                </div>
	                            </div>
	                            <div class="inputsContainer">
	                                <div class="inputBox">
	                                    <p class="inputCaption">비고</p>
	                                    <textarea name="BIGO" id="BIGO" cols="100"></textarea>
	                                </div>
	                            </div>
		                        <div class="tableButtons inputsPd" style="justify-content: flex-end;">
		                            <div class="buttons">
		                                <a href="#lnk" onclick="fn_submit()" class="smButton"><img src="/front_img/sign.png" alt="">등록하기</a>
		                            </div>
		                        </div>
	                        </div>
	                    </form>
	                </div>
	            </div>
	        </div>
	    </div>
	     <!-- 학교검색 모달 -->
		<%@ include file="./include/group_modal.jsp" %>
	
	</body>
	<script>

		function fn_get_unitylist_org(){
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
					var html ="";
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
		function fn_troopclscode_org(){
			var param = {
				troopclscode1 : $('#TROOPCLSCODE1').val(),
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
		function fn_submit(){
			var text = "등록하시겠습니까?";


			if (confirm(text)) {
				$("#register_org").attr("action", "/new_org");
				$("#register_org").submit();
			}
		}
		
		window.onload = function(){
		    document.getElementById("searchZip").addEventListener("click", function(){ //주소입력칸을 클릭하면
		        //카카오 지도 발생
		        new daum.Postcode({
		            oncomplete: function(data) { //선택시 입력값 세팅
		                document.getElementById("POSTCODE").value = data.zonecode;
		                document.getElementById("ADDR").value = data.address; // 주소 넣기
		                document.getElementById("ADDR").focus();
		            }
		        }).open();
		    });
		}
	
	</script>
</html>