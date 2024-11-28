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
		<%@ include file="./include/lnb.jsp" %>
		<c:import url="./include/header.jsp">
			<c:param name="pageParent" value="회원등록관리"/>
	    	<c:param name="pageTitle" value="연맹별 등록 리스트"/>
	    </c:import>
        <div class="contentsContainer">
	        <div class="statsWrapper">
	            <div class="fomrTabContent active">
	                <form action="" class="organSearchForm stats" id="search_form" name="search_form" method="post" enctype="multipart/form-data">
	                    <h2 class="subTitles">조회 결과</h2>
	                    <div class="organSearch stats">
	                        <div class="searchContainer">
			                    <p class="inputCaption">연도</p>
			                    <div class="inputsAlign">
				                    <input type="text" id="search_year" name="search_year" value="${pictVO.search_year }">
								</div>
		                	</div>
		                	
		                	<div class="searchContainer">
			                    <p class="inputCaption">연맹</p>
			                    <div class="inputsAlign">
				                    <select name="ASSOCIATIONCODE" id="ASSOCIATIONCODE" onchange="fn_get_trooplist()" class="smThinSelect">
				                    	<option value="">전체</option>
										<c:forEach var="association_list" items="${association_list}" varStatus="status">
											<option value="${association_list.ASSOCIATIONCODE}" <c:if test="${association_list.ASSOCIATIONCODE eq pictVO.ASSOCIATIONCODE}">selected</c:if>> ${association_list.ASSOCIATIONNAME}</option>
										</c:forEach>
									</select>
								</div>
		                	</div>
		                	
		                	<div class="searchContainer">
			                    <p class="inputCaption">단위대</p>
			                    <div class="inputsAlign">
				                    <select class="js-example-basic-single" name="TROOPNO" id="TROOPNO">
									  	<option value="">단위대를 검색하세요.</option>
									</select>
								</div>
		                	</div>
		                	
	                        <a href="#lnk" onclick="fn_search()" class="basicButton purple" style="height:35px; margin-top:20px"><img src="/front_img/search.png" alt="">조회</a>
	                    </div>
	                </form>
	                <div class="tableContainer bottomBd">
	                    <h2 class="subTitles">상세 리스트</h2> <br>
	                    <h2 class="subTitles">지도자 수 : <fmt:formatNumber value="${leader}" maxFractionDigits="0" /> 대원 수 : <fmt:formatNumber value="${scout}" maxFractionDigits="0" /> 총 인원 : <fmt:formatNumber value="${whole}" maxFractionDigits="0" /></h2>
	                    
                    	<a href="#lnk" class="smButton" onclick="excel()" style="position:relative; float : right; margin-bottom : 15px"><img src="/front_img/download.png" alt="">엑셀저장</a>
	                    <div class="tableWrapper stats" style="height : 900px">
	                        <table>
	                            <colgroup>
	                                <col width="14.285%" />
	                                <col width="14.285%" />
	                                <col width="14.285%" />
	                                <col width="14.285%" />
	                                <col width="14.285%" />
	                                <col width="14.285%" />
	                                <col width="14.285%" />
	                            </colgroup>
	                            <thead>
	                                <tr>
	                                    <th>지도자/대원</th>
	                                    <th>연맹</th>
	                                    <th>단위대명</th>
	                                    <th>성명</th>
	                                    <th>연락처</th>
	                                    <th>생년월일</th>
	                                    <th>성별</th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                            	<c:forEach var="resultList" items="${resultList}" varStatus="status">
		                                <tr>
		                                    <td>${resultList.type}</td>
		                                    <td>${resultList.ASSOCIATIONNAME}</td>
		                                    <td>${resultList.TROOPNAME}</td>
		                                    <td>${resultList.KNAME}</td>
		                                    <td>${resultList.MOBILE}</td>
		                                    <td>${resultList.BIRTHDAY}</td>
		                                    <td>
		                                    	<c:if test="${resultList.SEX eq 'M'}">남</c:if>
		                                    	<c:if test="${resultList.SEX eq 'W'}">여</c:if>
	                                    	</td>
	                                    </tr>
	                                </c:forEach>
	                            </tbody>
	                        </table>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</body>
	<script>
		function fn_get_trooplist(){
			var param = {
				associationcode : $('#ASSOCIATIONCODE').val(),
			}
			console.log($('#ASSOCIATIONCODE').val())
			$.ajax({
				url : "/admin/get_login_troop"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : false
				, success : function(data, status, xhr) {
					var html ="";
					if(data.list){
						console.log()
						var arr = data.list;
						$('#TROOPNO').children().remove();
						html += '<option value="">전체</option>'
						for(var i=0; i<arr.length; i++){
							html += '<option value="'+ arr[i].troopno +'">'+arr[i].troopname+"(" + arr[i].disptroopno +')</option>'
							
						}
						$('#TROOPNO').append(html)
					}
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
		}
	
		function excel(){
			if(confirm("상세 리스트를 엑셀 다운로드 하시겠습니까?")){
				var code = '${pictVO.ASSOCIATIONCODE}'
				$("#search_form").attr("action", "/admin/front/stats_detail_excel");
				$("#search_form").submit();
			}
		}
		function fn_search(){
			var code = '${pictVO.ASSOCIATIONCODE}'
			$("#search_form").attr("action", "/admin/front/stats_detail_list");
			$("#search_form").submit();
		}	
	</script>
</html>