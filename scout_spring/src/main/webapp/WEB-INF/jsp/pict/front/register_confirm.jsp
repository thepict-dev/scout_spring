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
                        <div class="registrationWrap">
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
	                            </div>
                            </div>
                        </div>
                        <div class="tableButtons inputsPd topBd" style="justify-content: flex-end;">
                            <div class="btnContainer organ">
                                <a href="#lnk" class="normalButton purple">승인</a>
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