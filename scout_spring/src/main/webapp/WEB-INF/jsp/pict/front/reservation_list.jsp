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
			<c:param name="pageParent" value="홈페이지 관리"/>
	    	<c:param name="pageTitle" value="시설 예약관리"/>
	    </c:import>
		    <div class="contentsContainer">
	        <div class="listContainer">
	            <div class="listInner">
	                <form action="" id="search_fm" name="search_fm" method="get" class="countList">
	                    <p>총 <span>${board_cnt}</span>개</p>
	                    
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <select name="search_status" id="search_status" class="lgThinInput">
	                            	<option value="">전체</option>
	                                <option value="Y" <c:if test="${pictVO.search_status eq 'Y'}">selected</c:if>>승인</option>
	                                <option value="N" <c:if test="${pictVO.search_status eq 'N'}">selected</c:if>>신청</option>
	                                <option value="C" <c:if test="${pictVO.search_status eq 'C'}">selected</c:if>>취소</option>
	                            </select>
	                        </div>
	                        <div class="inputBox listSearch">
	                            <input type="text" name="search_text" id="search_text" placeholder="내용을 입력하세요…" value="${pictVO.search_text }">
	                            <a href="#lnk" onclick="fn_search()"><img src="/front_img/search2.png" alt=""></a>
	                        </div>
	                    </div>
	                </form>
	                <p style="margin-bottom:10px; font-size:14px">기관명을 클릭하시면 세부정보를 확인 할 수 있습니다.</p>
	                <ul class="listHead reservation">
	                    <li>순서</li>
	                    <li>기관명</li>
	                    <li>담당부서</li>
	                    <li>담당자</li>
	                    <li>연락처</li>
	                    <li>사용일시</li>
	                    <li>사용시간</li>
	                    <li>사용인원</li>
	                    <li>부가시설</li>
	                    <li>신청일자</li>
	                    <li>상태변경</li>
	                </ul>
	                <ul class="listBody reservation">
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
		                        <p onclick="fn_list_ck('${board_list.purpose}', '${board_list.BIGO}')">${board_list.company}</p>
		                        <p>${board_list.depart}</p>
		                        <p>${board_list.name}</p>
		                        <p>${board_list.MOBILE}</p>
		                        <p>${board_list.applydate}</p>
		                        <p>
		                        	<c:set var="times" value="${fn:split(board_list.time, ',')}"/>
		                        	<c:forEach var="time" items="${times}" varStatus="substatus">
									    <c:choose>
									        <c:when test="${time == '1'}">오전</c:when>
									        <c:when test="${time == '2'}">오후</c:when>
									        <c:when test="${time == '3'}">야간</c:when>
									    </c:choose>
									    <c:if test="${not substatus.last}">, </c:if>
									</c:forEach>
	                        	</p>
		                        <p>${board_list.person}</p>
		                        <p>
			                        <c:choose>
									   <c:when test="${not empty board_list.etc1 and not empty board_list.etc2}">
									       ${board_list.etc1}, ${board_list.etc2}
									   </c:when>
									   <c:when test="${not empty board_list.etc1}">
									       ${board_list.etc1}
									   </c:when>
									   <c:when test="${not empty board_list.etc2}">
									       ${board_list.etc2}
									   </c:when>
									</c:choose>
	                        	</p>
		                        <p>${fn:substring(board_list.ENTERDATE,0,11)}</p>
		                        
		                        <p>
			                    	<select name="status_select" class="tableSelect" data-id="${board_list.idx}">
		                                <option value="Y" <c:if test="${board_list.status eq 'Y'}">selected</c:if>>승인</option>
		                                <option value="N" <c:if test="${board_list.status eq 'N'}">selected</c:if>>신청</option>
		                                <option value="C" <c:if test="${board_list.status eq 'C'}">selected</c:if>>취소</option>
		                            </select>
			                    </p>
		                    </li>
	                    </c:forEach>
	                    
	                </ul>
	                
	                <div class="pagination">
		            	<c:if test="${pictVO.pageNumber ne 1}">
		            		<a href="/admin/front/reservation_list?search_text=${pictVO.search_text}&search_status=${pictVO.search_status}&pageNumber=1"><img src="/user_img/first.png" alt=""></a>
		            		<a href="/admin/front/reservation_list?search_text=${pictVO.search_text}&search_status=${pictVO.search_status}&pageNumber=${pictVO.pageNumber - 1 < 1 ? 1 : pictVO.pageNumber - 1}"><img src="/user_img/prev.png" alt=""></a>
		            	</c:if>
		            	
		            	
		            	<c:forEach var="i" begin="${pictVO.startPage}" end="${pictVO.endPage}">
							<c:if test="${i eq pictVO.pageNumber}">
								<a href="/admin/front/reservation_list?search_text=${pictVO.search_text}&search_status=${pictVO.search_status}&pageNumber=${i}" class="active">${i}</a>
							</c:if>
							<c:if test="${i ne pictVO.pageNumber}">
								<a href="/admin/front/reservation_list?search_text=${pictVO.search_text}&search_status=${pictVO.search_status}&pageNumber=${i}" >${i}</a>
							</c:if>
						</c:forEach>
		                
		                <c:if test="${pictVO.lastPage ne pictVO.pageNumber}">
							<li><a href="/admin/front/reservation_list?search_text=${pictVO.search_text}&search_status=${pictVO.search_status}&pageNumber=${pictVO.pageNumber + 1 > pictVO.lastPage ?  pictVO.lastPage : pictVO.pageNumber + 1}"><img src="/user_img/next.png" alt=""></a></li>
							<li><a href="/admin/front/reservation_list?search_text=${pictVO.search_text}&search_status=${pictVO.search_status}&pageNumber=${pictVO.lastPage}"><img src="/user_img/last.png" alt=""></a></li>
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
	
		$('select[name="status_select"]').change(function () {
			var idx = $(this).data("id");
			var status = this.value
			if(confirm("해당 예약정보의 상태값을 변경하시겠습니까?")){
				
				$('#idx').val(idx)
				$('#status').val(status)
				$("#register").attr("action", "/admin/front/reservation_cng");
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
			$("#search_fm").attr("action", "/admin/front/reservation_list");
			$("#search_fm").submit();
		}
		
		$("#search_status").change(function(){
			$("#search_fm").attr("action", "/admin/front/reservation_list");
			$("#search_fm").submit();
		});
		
		$('#bookingModal button').click(function(){
		  $('#bookingModal').css('display', 'none');
		});
	</script>
	</script>
</html>