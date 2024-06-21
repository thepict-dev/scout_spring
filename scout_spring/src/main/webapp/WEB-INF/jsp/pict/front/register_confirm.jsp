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
	    	<c:param name="pageTitle" value="대원 일괄등록"/>
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
                                <a href="#regiSearchPopup" class="smButton searches purple regiSearch"><img src="/front_img/search2.png" alt="">조회</a>
                            </div>
                        </div>
                        <div class="registrationWrap">
                        	<div class="doubleTable">
	                            <div class="tableContainer">
	                                <h2 class="subTitles">작년도</h2>
	                                <div class="tableWrapper" style="height: 300px;">
	                                    <table style="min-width: unset;">
	                                        <colgroup>
	                                            <col width="8%" />
	                                            <col width="16%" />
	                                            <col width="11%" />
	                                            <col width="15%" />
	                                            <col width="15%" />
	                                            <col width="15%" />
	                                            <col width="20%" />
	                                        </colgroup>
	                                        <thead>
	                                            <tr>
	                                                <th style="white-space: nowrap;">선택</th>
	                                                <th style="left: unset;">관리지도자여부</th>
	                                                <th>이름</th>
	                                                <th>평생회원여부</th>
	                                                <th>지도자직책1</th>
	                                                <th>지도자직책2</th>
	                                                <th>연맹지구독여부</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody>
	                                            <tr>
	                                                <td style="position: unset; vertical-align: middle;">
	                                                    <input type="checkbox" id="selection_leader"><label for="selection_leader" class="lableOnly"></label>
	                                                </td>
	                                                <td style="position: unset; vertical-align: middle;">
							                            <select name="ADMINY" id="ADMINY" class="tableSelect" style="width: 100%; height: 100%;">
							                                <option value="Y">Y</option>
							                                <option value="N">N</option>
							                            </select>
	                                                </td>
	                                                <td style="vertical-align: middle;">홍길동</td>
	                                                <td>
							                            <select name="" id="" class="tableSelect" style="width: 100%; height: 100%;">
							                                <option value="Y">Y</option>
							                                <option value="N">N</option>
							                            </select>
	                                                </td>
	                                                <td>
							                            <select name="" id="" class="tableSelect" style="width: 100%; height: 100%;">
							                                <option value="Y">Y</option>
							                                <option value="N">N</option>
							                            </select>
	                                                </td>
	                                                <td>
							                            <select name="" id="" class="tableSelect" style="width: 100%; height: 100%;">
							                                <option value="Y">Y</option>
							                                <option value="N">N</option>
							                            </select>
	                                                </td>
	                                                <td style="vertical-align: middle;">
	                                                	<input type="checkbox" id=""><label for="" class="lableOnly"></label>
	                                                </td>
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
	                            <div class="tableContainer">
	                                <div class="tableWrapper" style="height: 300px;">
	                                    <table style="min-width: unset;">
	                                        <colgroup>
	                                            <col width="8%" />
	                                            <col width="15%" />
	                                            <col width="15%" />
	                                            <col width="15%" />
	                                            <col width="15%" />
	                                            <col width="22%" />
	                                        </colgroup>
	                                        <thead>
	                                            <tr>
	                                                <th style="white-space: nowrap;">선택</th>
	                                                <th style="left: unset;">이름</th>
	                                                <th>평생회원여부</th>
	                                                <th>스카우트구분</th>
	                                                <th>스카우트직책</th>
	                                                <th>연맹지구독여부</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody>
	                                            <tr>
	                                                <td style="position: unset; vertical-align: middle;">
	                                                    <input type="checkbox" id="selection_scout"><label for="selection_scout" class="lableOnly"></label>
	                                                </td>
	                                                <td style="left:unset; vertical-align: middle;">홍길동</td>
	                                                <td>
							                            <select name="" id="" class="tableSelect" style="width: 100%; height: 100%;">
							                                <option value="Y">Y</option>
							                                <option value="N">N</option>
							                            </select>
						                            </td>
	                                                <td>
							                            <select name="" id="" class="tableSelect" style="width: 100%; height: 100%;">
							                                <option value="Y">Y</option>
							                                <option value="N">N</option>
							                            </select>
	                                                </td>
	                                                <td>
							                            <select name="SCOUTCLSCODE" id="SCOUTCLSCODE" class="tableSelect" style="width: 100%; height: 100%;">
							                                <option value="">-----</option>
						                                	<option value="01">비버</option>
						                                	<option value="02">컵</option>
						                                	<option value="03">스카우트</option>
						                                	<option value="04">벤처</option>
						                                	<option value="05">로버</option>
						                                	<option value="06">기타</option>
						                                	<option value="99">복합</option>
							                            </select>
	                                                </td>
	                                                <td style="vertical-align: middle;">
	                                                	<input type="checkbox" id=""><label for="" class="lableOnly"></label>
	                                                </td>
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
                            </div>
                            <div class="buttonWrapper">
                                <a href="#lnk"><img src="/front_img/right-arr.png" alt=""></a>
                                <a href="#lnk"><img src="/front_img/left-arr.png" alt=""></a>
                            </div>
                            <div class="doubleTable">
	                            <div class="tableContainer">
	                                <h2 class="subTitles">당해년도</h2>
	                                <div class="tableWrapper" style="height: 300px;">
	                                    <table style="min-width: unset;">
	                                        <colgroup>
	                                            <col width="8%" />
	                                            <col width="16%" />
	                                            <col width="11%" />
	                                            <col width="15%" />
	                                            <col width="15%" />
	                                            <col width="15%" />
	                                            <col width="20%" />
	                                        </colgroup>
	                                        <thead>
	                                            <tr>
	                                                <th style="white-space: nowrap;">선택</th>
	                                                <th style="left: unset;">관리지도자여부</th>
	                                                <th>이름</th>
	                                                <th>평생회원여부</th>
	                                                <th>지도자직책1</th>
	                                                <th>지도자직책2</th>
	                                                <th>연맹지구독여부</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody>
	                                            <tr>
	                                                <td style="position: unset;">
	                                                    <input type="checkbox" id="selection"><label for="selection" class="lableOnly"></label>
	                                                </td>
	                                                <td style="position: unset;">Cell01</td>
	                                                <td>Cell02</td>
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
	                            <div class="tableContainer">
	                                <div class="tableWrapper" style="height: 300px;">
	                                    <table style="min-width: unset;">
	                                        <colgroup>
	                                            <col width="8%" />
	                                            <col width="15%" />
	                                            <col width="15%" />
	                                            <col width="15%" />
	                                            <col width="15%" />
	                                            <col width="22%" />
	                                        </colgroup>
	                                        <thead>
	                                            <tr>
	                                                <th style="white-space: nowrap;">선택</th>
	                                                <th style="left: unset;">이름</th>
	                                                <th>평생회원여부</th>
	                                                <th>스카우트구분</th>
	                                                <th>스카우트직책</th>
	                                                <th>연맹지구독여부</th>
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
                        </div>
                        <div class="tableButtons inputsPd topBd" style="justify-content: flex-end;">
                            <div class="btnContainer organ">
                                <a href="#regiConfirmPopup" class="normalButton purple regiButton">등록</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    <div id="regiSearchPopup" class="modalContainer">
        <div class="modalInner lg">
            <button type="button"><img src="/front_img/close.png" alt=""></button>
            <div class="modalTit">
                <p>단위대 리스트 조회</p>
            </div>
            <form action="">
                <div class="tableContainer">
                    <h2 class="subTitles">단위대 리스트</h2>
                    <div class="tableWrapper" style="height: 500px;">
                        <table style="min-width: unset;">
                            <colgroup>
                                <col width="16%" />
                                <col width="21%" />
                                <col width="21%" />
                                <col width="21%" />
                                <col width="21%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th style="white-space: nowrap;">선택</th>
                                    <th style="position: unset;">연맹</th>
                                    <th>지구연합회</th>
                                    <th>단위대번호</th>
                                    <th>단위대명</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td style="position: unset;">
                                        <input type="radio" id="selection_list"><label for="selection_list" class="lableOnly"></label>
                                    </td>
                                    <td style="position: unset;">Cell02</td>
                                    <td>Cell03</td>
                                    <td>Cell04</td>
                                    <td>Cell05</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tableButtons" style="justify-content: flex-end; padding: 0 24px 60px 0;">
                    <div class="buttons">
                        <a href="#lnk" class="white normalButton">선택</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div id="regiConfirmPopup" class="modalContainer">
        <div class="modalInner lg">
            <button type="button"><img src="/front_img/close.png" alt=""></button>
            <div class="modalTit">
                <p>대원 리스트 확인</p>
            </div>
            <form action="">
                <div class="regiConTop">
                    <p>소속연맹 / 지구 / 단위대</p>
                </div>
                <div class="tableContainer">
                    <h2 class="subTitles">대원 리스트</h2>
                    <div class="tableWrapper" style="height: 500px;">
                        <table style="min-width: unset;">
                            <colgroup>
                                <col width="16%" />
                                <col width="21%" />
                                <col width="21%" />
                                <col width="21%" />
                                <col width="21%" />
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td style="position: unset;">지도자</td>
                                    <td>평생회원</td>
                                    <td>20,000</td>
                                    <td>한지현</td>
                                    <td>연맹지구독여부</td>
                                </tr>
                                <tr>
                                    <td style="position: unset;">대원</td>
                                    <td>평생회원</td>
                                    <td>20,000</td>
                                    <td>한지현</td>
                                    <td>연맹지구독여부</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="regiConBottom">
                    <p>2025년도 대등록 가입비 : 700,000원</p>
                </div>
                <div class="tableButtons" style="justify-content: flex-end; padding: 0 24px 60px 0;">
                    <div class="buttons">
                        <a href="#lnk" class="white normalButton">제출</a>
                    </div>
                </div>
            </form>
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



		//대등록 리스트 찾기
		// 팝업 열기
		$(document).on("click", ".regiSearch", function (e){
		    let target = $(this).attr("href");
		    $(target).addClass("active");
		});
		// 팝업닫기
		$("#regiSearchPopup button").click(function(){
		    $("#regiSearchPopup").removeClass("active");
		});

		//대등록 확정 팝업
		// 팝업 열기
		$(document).on("click", ".regiButton", function (e){
		    let target = $(this).attr("href");
		    $(target).addClass("active");
		});
		// 팝업닫기
		$("#regiConfirmPopup button").click(function(){
		    $("#regiConfirmPopup").removeClass("active");
		});
	</script>
</html>