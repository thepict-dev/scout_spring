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
		<%
			pageContext.setAttribute("session", session.getAttribute("associationcode"));
		%>
		<%@ include file="./include/lnb.jsp" %>
		<c:import url="./include/header.jsp">
			<c:param name="pageParent" value="홈페이지 관리"/>
	    	<c:param name="pageTitle" value="지방·특수 게시물관리"/>
	    </c:import>
	    <div class="contentsContainer">
	        <div class="listContainer">
	            <div class="listInner">
	                <form action="" id="search_fm" name="search_fm" method="get" class="countList">
	                    <p>총 <span>${board_cnt}</span>개</p>
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                        	<select name="ASSOCIATIONCODE" id="ASSOCIATIONCODE" class="lgThinInput" onchange="fn_change_associationcode()">
		                        	<option value="011" <c:if test="${pictVO.ASSOCIATIONCODE eq '011'}">selected</c:if>>서울북부</option>
									<option value="012" <c:if test="${pictVO.ASSOCIATIONCODE eq '012'}">selected</c:if>>서울남부</option>
									<option value="020" <c:if test="${pictVO.ASSOCIATIONCODE eq '020'}">selected</c:if>>부산</option>
									<option value="030" <c:if test="${pictVO.ASSOCIATIONCODE eq '030'}">selected</c:if>>대구</option>
									<option value="040" <c:if test="${pictVO.ASSOCIATIONCODE eq '040'}">selected</c:if>>인천</option>
									<option value="050" <c:if test="${pictVO.ASSOCIATIONCODE eq '050'}">selected</c:if>>광주</option>
									<option value="060" <c:if test="${pictVO.ASSOCIATIONCODE eq '060'}">selected</c:if>>대전</option>
									<option value="070" <c:if test="${pictVO.ASSOCIATIONCODE eq '070'}">selected</c:if>>울산</option>
									<option value="100" <c:if test="${pictVO.ASSOCIATIONCODE eq '100'}">selected</c:if>>경기북부</option>
									<option value="110" <c:if test="${pictVO.ASSOCIATIONCODE eq '110'}">selected</c:if>>경기남부</option>
									<option value="120" <c:if test="${pictVO.ASSOCIATIONCODE eq '120'}">selected</c:if>>강원</option>
									<option value="130" <c:if test="${pictVO.ASSOCIATIONCODE eq '130'}">selected</c:if>>충북</option>
									<option value="140" <c:if test="${pictVO.ASSOCIATIONCODE eq '140'}">selected</c:if>>충남세종</option>
									<option value="150" <c:if test="${pictVO.ASSOCIATIONCODE eq '150'}">selected</c:if>>전북</option>
									<option value="160" <c:if test="${pictVO.ASSOCIATIONCODE eq '160'}">selected</c:if>>전남</option>
									<option value="170" <c:if test="${pictVO.ASSOCIATIONCODE eq '170'}">selected</c:if>>경북</option>
									<option value="180" <c:if test="${pictVO.ASSOCIATIONCODE eq '180'}">selected</c:if>>경남</option>
									<option value="190" <c:if test="${pictVO.ASSOCIATIONCODE eq '190'}">selected</c:if>>제주</option>
									<option value="210" <c:if test="${pictVO.ASSOCIATIONCODE eq '210'}">selected</c:if>>가톨릭</option>
									<option value="220" <c:if test="${pictVO.ASSOCIATIONCODE eq '220'}">selected</c:if>>원불교</option>
									<option value="230" <c:if test="${pictVO.ASSOCIATIONCODE eq '230'}">selected</c:if>>불교</option>
									<option value="240" <c:if test="${pictVO.ASSOCIATIONCODE eq '240'}">selected</c:if>>기독교</option>
	                        	</select>
	                        	
	                        </div>
	                        <div class="inputBox">
	                            <select name="BRDNO" id="BRDNO" class="lgThinInput" >

	                            </select>
	                        </div>
	                        
	                        <div class="inputBox listSearch">
	                            <input type="text" name="search_text" id="search_text" placeholder="내용을 입력하세요…" value="${pictVO.search_text}">
	                            <a href="#lnk" onclick="fn_search()"><img src="/front_img/search2.png" alt=""></a>
	                        </div>
	                        
	                    </div>
	                </form>
	                <ul class="listHead2">
	                    <li>순서</li>
	                    <li>연맹</li>
	                    <li>카테고리</li>
	                    <li>제목</li>
	                    <li>작성자</li>
	                    <li>등록일</li>
	                    <li>숨김</li>
	                    <li>삭제</li>
	                </ul>
	                <ul class="listBody2">
	                	<c:forEach var="board_list" items="${board_list}" varStatus="status">
		                    <li>
		                        <p>
		                        	<c:if test="${pictVO.pageNumber eq 1}">
		                        		${board_cnt - status.index}
	                        		</c:if>
	                        		<c:if test="${pictVO.pageNumber ne 1}">
	                        			${board_cnt - (status.index +  ((pictVO.pageNumber - 1) * 20))}
	                        		</c:if>
		                        </p>
		                        <p>
		                        	<c:if test="${board_list.ASSOCIATIONCODE eq '011'}">서울북부</c:if>
									<c:if test="${board_list.ASSOCIATIONCODE eq '012'}">서울남부</c:if>
									<c:if test="${board_list.ASSOCIATIONCODE eq '020'}">부산</c:if>
									<c:if test="${board_list.ASSOCIATIONCODE eq '030'}">대구</c:if>
									<c:if test="${board_list.ASSOCIATIONCODE eq '040'}">인천</c:if>
									<c:if test="${board_list.ASSOCIATIONCODE eq '050'}">광주</c:if>
									<c:if test="${board_list.ASSOCIATIONCODE eq '060'}">대전</c:if>
									<c:if test="${board_list.ASSOCIATIONCODE eq '070'}">울산</c:if>
									<c:if test="${board_list.ASSOCIATIONCODE eq '100'}">경기북부</c:if>
									<c:if test="${board_list.ASSOCIATIONCODE eq '110'}">경기남부</c:if>
									<c:if test="${board_list.ASSOCIATIONCODE eq '120'}">강원</c:if>
									<c:if test="${board_list.ASSOCIATIONCODE eq '130'}">충북</c:if>
									<c:if test="${board_list.ASSOCIATIONCODE eq '140'}">충남세종</c:if>
									<c:if test="${board_list.ASSOCIATIONCODE eq '150'}">전북</c:if>
									<c:if test="${board_list.ASSOCIATIONCODE eq '160'}">전남</c:if>
									<c:if test="${board_list.ASSOCIATIONCODE eq '170'}">경북</c:if>
									<c:if test="${board_list.ASSOCIATIONCODE eq '180'}">경남</c:if>
									<c:if test="${board_list.ASSOCIATIONCODE eq '190'}">제주</c:if>
									<c:if test="${board_list.ASSOCIATIONCODE eq '210'}">가톨릭</c:if>
									<c:if test="${board_list.ASSOCIATIONCODE eq '220'}">원불교</c:if>
									<c:if test="${board_list.ASSOCIATIONCODE eq '230'}">불교</c:if>
									<c:if test="${board_list.ASSOCIATIONCODE eq '240'}">기독교</c:if>
		                        </p>
		                        <p>${board_list.title}</p>
		                        <a href="/admin/front/board_form_sub?BRDCTSNO=${board_list.BRDCTSNO}" class="title">${board_list.SUBJECT}</a>
		                        <p>
		                        	<c:if test="${board_list.register eq '' || board_list.register eq null || board_list.register eq undefined}">관리자</c:if>	
		                        	<c:if test="${board_list.register ne '' && board_list.register ne null && board_list.register ne undefined}">${board_list.register}</c:if>
		                        </p>
		                        <p>${fn:substring(board_list.ENTERDATE,0,11)}</p>
		                        <p><a href="#lnk" onclick="board_delete('${board_list.BRDCTSNO}', 'H')"><img src="/front_img/delete.png" alt="숨김"></a></p>
		                        <p><a href="#lnk" onclick="board_delete('${board_list.BRDCTSNO}', 'N')"><img src="/front_img/delete.png" alt="삭제"></a></p>
		                    </li>
	                    </c:forEach>
	                </ul>
	                <div class="listButton">
	                    <a href="/admin/front/board_form_sub"><img src="/front_img/add.png" alt="등록버튼">등록</a>
	                </div>
	                <div class="pagination">
		            	<c:if test="${pictVO.pageNumber ne 1}">
		            		<a href="/admin/front/board_list_sub?BRDNO=${pictVO.BRDNO}&pageNumber=1"><img src="/user_img/first.png" alt=""></a>
		            		<a href="/admin/front/board_list_sub?BRDNO=${pictVO.BRDNO}&pageNumber=${pictVO.pageNumber - 1 < 1 ? 1 : pictVO.pageNumber - 1}"><img src="/user_img/prev.png" alt=""></a>
		            	</c:if>
		            	
		            	
		            	<c:forEach var="i" begin="${pictVO.startPage}" end="${pictVO.endPage}">
							<c:if test="${i eq pictVO.pageNumber}">
								<a href="/admin/front/board_list_sub?BRDNO=${pictVO.BRDNO}&pageNumber=${i}" class="active">${i}</a>
							</c:if>
							<c:if test="${i ne pictVO.pageNumber}">
								<a href="/admin/front/board_list_sub?BRDNO=${pictVO.BRDNO}&pageNumber=${i}" >${i}</a>
							</c:if>
						</c:forEach>
		                
		                <c:if test="${pictVO.lastPage ne pictVO.pageNumber}">
							<li><a href="/admin/front/board_list_sub?BRDNO=${pictVO.BRDNO}&pageNumber=${pictVO.pageNumber + 1 > pictVO.lastPage ?  pictVO.lastPage : pictVO.pageNumber + 1}"><img src="/user_img/next.png" alt=""></a></li>
							<li><a href="/admin/front/board_list_sub?BRDNO=${pictVO.BRDNO}&pageNumber=${pictVO.lastPage}"><img src="/user_img/last.png" alt=""></a></li>
						</c:if>
		            </div>
	            </div>
	        </div>
        </div>
	</body>
	<form action="" id="register" name="register" method="post" enctype="multipart/form-data">
		<input type='hidden' name="BRDCTSNO" id="BRDCTSNO" value='' />
		<input type='hidden' name="USEAT" id="USEAT" value='' />
		<input type='hidden' name="type" id="type" value='' />
	</form>
	<script>
		$(document).ready(function(){
			var BRDNO = '${pictVO.BRDNO}'
			if(BRDNO != null && BRDNO != undefined && BRDNO != ''){
				fn_change_associationcode(BRDNO)
			}
			else{
				fn_change_associationcode()
				
			}
			var login_associationcode = ${session}
			if(login_associationcode != '200'){
				$("select[name=ASSOCIATIONCODE]").attr("disabled", true);
				$('.contentsContainer select').niceSelect('update')	
			}
			
		})
	
		$("#BRDNO").change(function(){
			$("#search_fm").attr("action", "/admin/front/board_list_sub");
			$("#search_fm").submit();
		});
		function fn_search(){
			$("#search_fm").attr("action", "/admin/front/board_list_sub");
			$("#search_fm").submit();
		}
		function board_delete(BRDCTSNO, flag) {
			if (confirm("삭제 하시겠습니까?")) {
				$('#BRDCTSNO').val(BRDCTSNO)
				$('#USEAT').val(flag)
				$("#register").attr("action", "/admin/front/board_delete_sub");
				$("#register").submit();
			}
		}
		
		function fn_change_associationcode(BRDNO){
			
			var param = {
					associationcode : $('#ASSOCIATIONCODE').val(),
			}
			$.ajax({
				url : "/admin/get_board_category"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, success : function(data, status, xhr) {
					var html ='<option value="">-----</option>';
					console.log(data.list)
					
					if(data.list){
						var arr = data.list;
						$('#BRDNO').children().remove();
						for(var i=0; i<arr.length; i++){
							html += '<option value="'+ arr[i].boardcategory +'">'+ arr[i].title +'</option>'
						}
						$('#BRDNO').append(html)
						if(BRDNO != null && BRDNO != '' && BRDNO != undefined){
							$('#BRDNO').val(BRDNO)
						}
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