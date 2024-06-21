<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>	
<html lang="ko">
	<%@ include file="./include/head.jsp" %>
	<script src="/js/script_signup.js" defer></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<body>
		<%@ include file="./include/lnb.jsp" %>
		<c:import url="./include/header.jsp">
			<c:param name="pageParent" value="스카우트 통합관리"/>
	    	<c:param name="pageTitle" value="대원 일괄승인"/>
	    </c:import>
    <div class="contentsContainer">
        <div class="formContainer">
            <div class="joinContainer">
                <div class="fomrTabContent signContainer">
                    <form action="" id="register" name="register" method="post" enctype="multipart/form-data">
                        <h2 class="subTitles" style="padding: 16px 24px;">조회</h2>
                        <div class="regiSearch">
                            <div class="searchContainer">
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
                            <div class="searchContainer">
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
                            <div class="searchContainer">
                                <p class="inputCaption">단위대명</p>
                                <div class="inputsAlign">
                                    <input type="text"  name="TROOPNAME" id="TROOPNAME" placeholder="내용을 입력하세요…" class="lgThinInput">
                                </div>
                            </div>
                            <div class="btnContainer organ" style="justify-content: flex-start; margin-top: 5px;">
                                <a href="#lnk" class="smButton searches purple"><img src="/front_img/search2.png" alt="">조회</a>
                            </div>
                        </div>
                        <div class="registrationWrap">
                            <div class="tableContainer">
                                <h2 class="subTitles">작년도</h2>
                                <div class="tableWrapper">
                                    <table style="min-width: unset;">
                                        <colgroup>
                                            <col width="8%" />
                                            <col width="20%" />
                                            <col width="20%" />
                                            <col width="20%" />
                                            <col width="20%" />
                                            <col width="12%" />
                                        </colgroup>
                                        <thead>
                                            <tr>
                                                <th style="white-space: nowrap;">선택</th>
                                                <th style="position: unset;">연맹</th>
                                                <th>지구</th>
                                                <th>단위대</th>
                                                <th>이름</th>
                                                <th>회원</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td style="position: unset;">
                                                    <input type="checkbox" id="selection"><label for="selection" class="lableOnly"></label>
                                                </td>
                                                <td style="position: unset;">Cell02</td>
                                                <td>Cell03</td>
                                                <td>Cell04</td>
                                                <td>Cell05</td>
                                                <td>Cell06</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="tableButtons" style="justify-content: flex-end;">
                                    <div class="buttons">
                                        <a href="#lnk" onclick="fn_submit()" class="smButton"><img src="/front_img/download.png" alt="">엑셀 내려받기</a>
                                    </div>
                                </div>
                            </div>
                            <div class="buttonWrapper">
                                <a href="#lnk"><img src="/front_img/right-arr.png" alt=""></a>
                                <a href="#lnk"><img src="/front_img/left-arr.png" alt=""></a>
                            </div>
                            <div class="tableContainer">
                                <h2 class="subTitles">당해년도</h2>
                                <div class="tableWrapper">
                                    <table style="min-width: unset;">
                                        <colgroup>
                                            <col width="8%" />
                                            <col width="20%" />
                                            <col width="20%" />
                                            <col width="20%" />
                                            <col width="20%" />
                                            <col width="12%" />
                                        </colgroup>
                                        <thead>
                                            <tr>
                                                <th style="white-space: nowrap;">선택</th>
                                                <th style="position: unset;">연맹</th>
                                                <th>지구</th>
                                                <th>단위대</th>
                                                <th>이름</th>
                                                <th>회원</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td style="position: unset;">
                                                    <input type="checkbox" id="selection"><label for="selection" class="lableOnly"></label>
                                                </td>
                                                <td style="position: unset;">Cell02</td>
                                                <td>Cell03</td>
                                                <td>Cell04</td>
                                                <td>Cell05</td>
                                                <td>Cell06</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="tableButtons" style="justify-content: flex-end;">
                                    <div class="buttons">
                                        <a href="#lnk" onclick="fn_submit()" class="smButton"><img src="/front_img/download.png" alt="">엑셀 업로드</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tableButtons inputsPd topBd" style="justify-content: flex-end;">
                            <div class="btnContainer organ">
                                <a href="#lnk" class="normalButton white">초기화</a>
                                <a href="#lnk" class="normalButton purple">등록</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
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