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
	    	<c:param name="pageTitle" value="스카우트 가입 관리"/>
	    </c:import>
		    <div class="contentsContainer">
	        <div class="listContainer">
	            <div class="listInner">
	                <form action="" id="search_fm" name="search_fm" method="get" class="countList">
	                    <p>총 <span>${board_cnt}</span>개</p>
	                    
	                    <div class="inputsContainer">
		                    <div class="inputBox">
	                            <select name="search_associationcode" id="search_associationcode" class="lgThinInput">
	                            	<option value="">연맹선택</option>
	                                <option value="011" <c:if test="${pictVO.search_associationcode eq '011'}">selected</c:if>> 서울북부</option>
									<option value="012" <c:if test="${pictVO.search_associationcode eq '012'}">selected</c:if>> 서울남부</option>
									<option value="020" <c:if test="${pictVO.search_associationcode eq '020'}">selected</c:if>> 부산</option>
									<option value="030" <c:if test="${pictVO.search_associationcode eq '030'}">selected</c:if>> 대구</option>
									<option value="040" <c:if test="${pictVO.search_associationcode eq '040'}">selected</c:if>> 인천</option>
									<option value="050" <c:if test="${pictVO.search_associationcode eq '050'}">selected</c:if>> 광주</option>
									<option value="060" <c:if test="${pictVO.search_associationcode eq '060'}">selected</c:if>> 대전</option>
									<option value="070" <c:if test="${pictVO.search_associationcode eq '070'}">selected</c:if>> 울산</option>
									<option value="100" <c:if test="${pictVO.search_associationcode eq '100'}">selected</c:if>> 경기북부</option>
									<option value="110" <c:if test="${pictVO.search_associationcode eq '110'}">selected</c:if>> 경기남부</option>
									<option value="120" <c:if test="${pictVO.search_associationcode eq '120'}">selected</c:if>> 강원</option>
									<option value="130" <c:if test="${pictVO.search_associationcode eq '130'}">selected</c:if>> 충북</option>
									<option value="140" <c:if test="${pictVO.search_associationcode eq '140'}">selected</c:if>> 충남세종</option>
									<option value="150" <c:if test="${pictVO.search_associationcode eq '150'}">selected</c:if>> 전북</option>
									<option value="160" <c:if test="${pictVO.search_associationcode eq '160'}">selected</c:if>> 전남</option>
									<option value="170" <c:if test="${pictVO.search_associationcode eq '170'}">selected</c:if>> 경북</option>
									<option value="180" <c:if test="${pictVO.search_associationcode eq '180'}">selected</c:if>> 경남</option>
									<option value="190" <c:if test="${pictVO.search_associationcode eq '190'}">selected</c:if>> 제주</option>
									<option value="210" <c:if test="${pictVO.search_associationcode eq '210'}">selected</c:if>> 가톨릭</option>
									<option value="220" <c:if test="${pictVO.search_associationcode eq '220'}">selected</c:if>> 원불교</option>
									<option value="230" <c:if test="${pictVO.search_associationcode eq '230'}">selected</c:if>> 불교</option>
									<option value="240" <c:if test="${pictVO.search_associationcode eq '240'}">selected</c:if>> 기독교</option>
	                            </select>
	                        </div>
	                        <div class="inputBox">
	                            <select name="search_status" id="search_status" class="lgThinInput">
	                            	<option value="">상태선택</option>
	                                <option value="1" <c:if test="${pictVO.search_status eq '1'}">selected</c:if>>상담요청중</option>
	                                <option value="2" <c:if test="${pictVO.search_status eq '2'}">selected</c:if>>상담완료</option>
	                            </select>
	                        </div>
	                        <div class="inputBox listSearch">
	                            <input type="text" name="search_text" id="search_text" placeholder="내용을 입력하세요…" value="${pictVO.search_text }">
	                            <a href="#lnk" onclick="fn_search()"><img src="/front_img/search2.png" alt=""></a>
	                        </div>
	                    </div>
	                </form>
	                <ul class="listHead local">
	                    <li>순서</li>
	                    <li>이름</li>
	                    <li>이메일</li>
	                    <li>연락처</li>
	                    <li>가입희망자 연령</li>
	                    <li>가입희망자와 관계</li>
	                    <li>상담희망 연맹</li>
	                    <li>신청일자</li>
	                    <li>상태변경</li>
	                </ul>
	                <ul class="listBody local">
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
		                        <p>${board_list.name}</p>
		                        <p>${board_list.EMAIL}</p>
		                        <p>${board_list.MOBILE}</p>
		                        <p>${board_list.age}</p>
		                        <p>${board_list.relation}</p>
		                        <p>${board_list.ASSOCIATIONNAME}</p>
		                        <p>${fn:substring(board_list.ENTERDATE,0,11)}</p>
		                        
		                        <p>
			                    	<select name="status_select" class="tableSelect" data-id="${board_list.idx}">
		                                <option value="1" <c:if test="${board_list.status eq '1'}">selected</c:if>>상담요청중</option>
		                                <option value="2" <c:if test="${board_list.status eq '2'}">selected</c:if>>상담완료</option>
		                            </select>
			                    </p>
		                    </li>
	                    </c:forEach>
	                    
	                </ul>
	                
	                <div class="pagination">
		            	<c:if test="${pictVO.pageNumber ne 1}">
		            		<a href="/admin/front/local_list?search_text=${pictVO.search_text}&search_status=${pictVO.search_status}&pageNumber=1"><img src="/user_img/first.png" alt=""></a>
		            		<a href="/admin/front/local_list?search_text=${pictVO.search_text}&search_status=${pictVO.search_status}&pageNumber=${pictVO.pageNumber - 1 < 1 ? 1 : pictVO.pageNumber - 1}"><img src="/user_img/prev.png" alt=""></a>
		            	</c:if>
		            	
		            	
		            	<c:forEach var="i" begin="${pictVO.startPage}" end="${pictVO.endPage}">
							<c:if test="${i eq pictVO.pageNumber}">
								<a href="/admin/front/local_list?search_text=${pictVO.search_text}&search_status=${pictVO.search_status}&pageNumber=${i}" class="active">${i}</a>
							</c:if>
							<c:if test="${i ne pictVO.pageNumber}">
								<a href="/admin/front/local_list?search_text=${pictVO.search_text}&search_status=${pictVO.search_status}&pageNumber=${i}" >${i}</a>
							</c:if>
						</c:forEach>
		                
		                <c:if test="${pictVO.lastPage ne pictVO.pageNumber}">
							<li><a href="/admin/front/local_list?search_text=${pictVO.search_text}&search_status=${pictVO.search_status}&pageNumber=${pictVO.pageNumber + 1 > pictVO.lastPage ?  pictVO.lastPage : pictVO.pageNumber + 1}"><img src="/user_img/next.png" alt=""></a></li>
							<li><a href="/admin/front/local_list?search_text=${pictVO.search_text}&search_status=${pictVO.search_status}&pageNumber=${pictVO.lastPage}"><img src="/user_img/last.png" alt=""></a></li>
						</c:if>
		            </div>
	            </div>
	        </div>
	    </div>
	</body>
	<form action="" id="register" name="register" method="post" enctype="multipart/form-data">
		<input type='hidden' name="idx" id="idx" value='' />
		<input type='hidden' name="status" id="status" value='' />
	</form>
	<div id="bookingModal">
	    <div class="pwModalInner">
	        <button type="button"><img src="/front_img/close2.png" alt=""></button>
	        <p></p>
	        <div class="pwInputs">
	            <div class="pwInput">
	                <p class="pwTit">사용목적</p>
					<span class="bindingText" id="modal_purpose" style="width:350px"></span>
	            </div>
	            <div class="pwInput" style="width: 100%;">
	                <p class="pwTit">요청사항</p>
					<span class="bindingText" style="width: 100%; height: 200px;" id="modal_bigo"></span>
	            </div>
	        </div>
	    </div>
	</div>
		
	<script>
		$(document).ready(function() {

		    var login_associationcode = '${session}'
			if(login_associationcode != '200'){
				var code = '${pictVO.search_associationcode}';
				$('#search_associationcode').val(code)
				$("select[name=search_associationcode]").attr("disabled", true);
				fn_get_unitylist_org()
				$('.contentsContainer select').niceSelect('update')	
			}
		});
		$("#search_associationcode").change(function(){
			$("#search_fm").attr("action", "/admin/front/local_list");
			$("#search_fm").submit();
		});
	
		$('select[name="status_select"]').change(function () {
			var idx = $(this).data("id");
			var status = this.value
			if(confirm("해당 신청 상태값을 변경하시겠습니까?")){
				
				$('#idx').val(idx)
				$('#status').val(status)
				$("#register").attr("action", "/admin/front/local_cng");
				$("#register").submit();
			}
		});
		function fn_list_ck(purpose, bigo){
			$('#modal_purpose').text('');
			$('#modal_bigo').text('');
			
			$('#modal_purpose').text(purpose);
			$('#modal_bigo').text(bigo);
			$('#bookingModal').css('display', 'flex');
		}
		function fn_search(){
			$("#search_fm").attr("action", "/admin/front/local_list");
			$("#search_fm").submit();
		}
		
		$("#search_status").change(function(){
			$("#search_fm").attr("action", "/admin/front/local_list");
			$("#search_fm").submit();
		});
		
		$('#bookingModal button').click(function(){
		  $('#bookingModal').css('display', 'none');
		});
	</script>
	</script>
</html>