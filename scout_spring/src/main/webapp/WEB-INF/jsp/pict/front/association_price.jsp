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
			<c:param name="pageParent" value="기본설정관리"/>
	    	<c:param name="pageTitle" value="연맹별납부액"/>
	    </c:import>
    <div class="contentsContainer">
        <div class="formContainer scroller">
            <div class="joinContainer">
                <div class="fomrTabContent signContainer">
                    <form action="" id="register" name="register" method="post" enctype="multipart/form-data">
                        <h2 class="subTitles" style="padding: 16px 24px;">납부액 정보</h2>
                        <div class="regiSearch">
                            <div class="searchContainer">
                                <p class="inputCaption">연맹</p>
                                <div class="inputsAlign">
                                    <select name="ASSOCIATIONCODE" id="ASSOCIATIONCODE" class="lgThinSelect">
                                        <c:forEach var="association_list" items="${association_list}" varStatus="status">
                                            <option value="${association_list.ASSOCIATIONCODE}"> ${association_list.ASSOCIATIONNAME}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="searchContainer">
                                <p class="inputCaption">납부년도</p>
                                <div class="inputsAlign">
                                    <select name="" id="" class="smThinSelect">
                                        <option value="">2024</option>
                                    </select>
                                </div>
                            </div>
                            <div class="searchContainer">
                                <p class="inputCaption">납부종류</p>
                                <div class="inputsAlign">
                                    <select name="" id="" class="lgThinSelect">
                                    	<option value=""></option>
                                    </select>
                                </div>
                            </div>
                            <div class="searchContainer">
                                <p class="inputCaption">스카우트 구분</p>
                                <div class="inputsAlign">
                                    <select name="" id="" class="lgThinSelect">
                                    	<option value=""></option>
                                    </select>
                                </div>
                            </div>
                            <div class="btnContainer organ" style="justify-content: flex-start; margin-top: 5px;">
                                <a href="#regiSearchPopup" class="smButton searches purple regiSearch"><img src="/front_img/search2.png" alt="">조회</a>
                            </div>
                        </div>
                        <div class="registrationWrap">
                        	<div class="doubleTable">
	                            <div class="tableContainer">
	                                <h2 class="subTitles">연맹코드 조회 내용</h2>
	                                <div class="tableWrapper">
	                                    <table style="min-width: 1280px;">
	                                        <colgroup>
	                                            <col width="9%" />
	                                            <col width="10%" />
	                                            <col width="17%" />
	                                            <col width="15%" />
	                                            <col width="15%" />
	                                            <col width="14%" />
	                                            <col width="20%" />
	                                        </colgroup>
	                                        <thead>
	                                            <tr>
	                                                <th style="white-space: nowrap;">No</th>
	                                                <th style="left: unset;">연맹</th>
	                                                <th>납부구분</th>
	                                                <th>납부종류</th>
	                                                <th>스카우트구분</th>
	                                                <th>납부액</th>
	                                                <th>비고</th>
	                                            </tr>
	                                        </thead>
	                                        <tbody>
	                                            <tr>
	                                                <td style="position: unset;">No</td>
	                                                <td style="position: unset;">Cell01</td>
	                                                <td>Cell02</td>
	                                                <td>Cell03</td>
	                                                <td>Cell04</td>
	                                                <td><input type="text"  name="" id="" class="amoutInput"></td>
	                                                <td><input type="text"  name="" id="" class="amoutInput"></td>
	                                            </tr>
	                                        </tbody>
	                                    </table>
	                                </div>
	                            </div>
                            </div>
                        </div>
                        <div class="tableButtons inputsPd topBd" style="justify-content: flex-end;">
                            <div class="btnContainer organ">
                                <a href="#lnk" class="normalButton purple">저장</a>
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
	</script>
</html>