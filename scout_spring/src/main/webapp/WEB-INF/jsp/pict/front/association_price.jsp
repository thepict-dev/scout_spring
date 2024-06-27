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
                                            <option value="${association_list.ASSOCIATIONCODE}" <c:if test="${pictVO.ASSOCIATIONCODE eq association_list.ASSOCIATIONCODE}">selected</c:if>> ${association_list.ASSOCIATIONNAME}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="searchContainer">
                                <p class="inputCaption">납부년도</p>
                                <div class="inputsAlign">
									<input type="text" name="search_year" id="search_year" class="lgThinInput" value="${pictVO.search_year}">
                                </div>
                            </div>

                            <div class="btnContainer organ" style="justify-content: flex-start; margin-top: 5px;">
                                <a href="#regiSearchPopup" onclick="search_price()" class="smButton searches purple regiSearch"><img src="/front_img/search2.png" alt="">조회</a>
                            </div>
                        </div>
                        <div class="registrationWrap">
                        	<div class="doubleTable">
	                            <div class="tableContainer">
	                                <h2 class="subTitles">연맹코드 조회 내용</h2>
	                                <div class="tableWrapper" style="height:640px">
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
	                                                <td style="position: unset;">1</td>
	                                                <td style="position: unset;" rowspan="14">${vo.ASSOCIATIONNAME}</td>
	                                                <td rowspan="7">신규</td>
	                                                <td rowspan="6">등록비(대원)</td>
	                                                <td>비버</td>
	                                                <td><input type="text" name="cls01" id="cls01" class="amoutInput" value="${vo.cls01}"></td>
	                                                <td><input type="text" name="cls01bigo" id="cls01bigo" class="amoutInput" value="${vo.cls01bigo}"></td>
	                                            </tr>
	                                            <tr>
	                                                <td style="position: unset;">2</td>
	                                                <td>컵</td>
	                                                <td><input type="text" name="cls02" id="cls02" class="amoutInput" value="${vo.cls02}"></td>
	                                                <td><input type="text" name="cls02bigo" id="cls02bigo" class="amoutInput" value="${vo.cls02bigo}"></td>
	                                            </tr>
	                                            <tr>
	                                                <td style="position: unset;">3</td>
	                                                <td>스카우트</td>
	                                                <td><input type="text" name="cls03" id="cls03" class="amoutInput" value="${vo.cls03}"></td>
	                                                <td><input type="text" name="cls03bigo" id="cls03bigo" class="amoutInput" value="${vo.cls03bigo}"></td>
	                                            </tr>
	                                            <tr>
	                                                <td style="position: unset;">4</td>
	                                                <td>벤처</td>
	                                                <td><input type="text" name="cls04" id="cls04" class="amoutInput" value="${vo.cls04}"></td>
	                                                <td><input type="text" name="cls04bigo" id="cls04bigo" class="amoutInput" value="${vo.cls04bigo}"></td>
	                                            </tr>
	                                            <tr>
	                                                <td style="position: unset;">5</td>
	                                                <td>로버</td>
	                                                <td><input type="text" name="cls05" id="cls05" class="amoutInput" value="${vo.cls05}"></td>
	                                                <td><input type="text" name="cls05bigo" id="cls05bigo" class="amoutInput" value="${vo.cls05bigo}"></td>
	                                            </tr>
	                                            <tr>
	                                                <td style="position: unset;">6</td>
	                                                <td>기타</td>
	                                                <td><input type="text" name="cls06" id="cls06" class="amoutInput" value="${vo.cls06}"></td>
	                                                <td><input type="text" name="cls06bigo" id="cls06bigo" class="amoutInput" value="${vo.cls06bigo}"></td>
	                                            </tr>
	                                            <tr>
	                                                <td style="position: unset;">7</td>
	                                                <td>등록비(지도자)</td>
	                                                <td>복합</td>
	                                                <td><input type="text" name="cls99" id="cls99" class="amoutInput" value="${vo.cls99}"></td>
	                                                <td><input type="text" name="cls99bigo" id="cls99bigo" class="amoutInput" value="${vo.cls99bigo}"></td>
	                                            </tr>
	                                            <!-- 여기부터 신규 -->
	                                            <tr>
	                                                <td style="position: unset;">8</td>
	                                                <td rowspan="7">계속</td>
	                                                <td rowspan="6">등록비(대원)</td>
	                                                <td>비버</td>
	                                                <td><input type="text" name="cls01new" id="cls01new" class="amoutInput" value="${vo.cls01new}"></td>
	                                                <td><input type="text" name="cls01newbigo" id="cls01newbigo" class="amoutInput" value="${vo.cls01newbigo}"></td>
	                                            </tr>
	                                            <tr>
	                                                <td style="position: unset;">9</td>
	                                                <td>컵</td>
	                                                <td><input type="text" name="cls02new" id="cls02new" class="amoutInput" value="${vo.cls02new}"></td>
	                                                <td><input type="text" name="cls02newbigo" id="cls02newbigo" class="amoutInput" value="${vo.cls02newbigo}"></td>
	                                            </tr>
	                                            <tr>
	                                                <td style="position: unset;">10</td>
	                                                <td>스카우트</td>
	                                                <td><input type="text" name="cls03new" id="cls03new" class="amoutInput" value="${vo.cls03new}"></td>
	                                                <td><input type="text" name="cls03newbigo" id="cls03newbigo" class="amoutInput" value="${vo.cls03newbigo}"></td>
	                                            </tr>
	                                            <tr>
	                                                <td style="position: unset;">11</td>
	                                                <td>벤처</td>
	                                                <td><input type="text" name="cls04new" id="cls04new" class="amoutInput" value="${vo.cls04new}"></td>
	                                                <td><input type="text" name="cls04newbigo" id="cls04newbigo" class="amoutInput" value="${vo.cls04newbigo}"></td>
	                                            </tr>
	                                            <tr>
	                                                <td style="position: unset;">12</td>
	                                                <td>로버</td>
	                                                <td><input type="text" name="cls05new" id="cls05new" class="amoutInput" value="${vo.cls05new}"></td>
	                                                <td><input type="text" name="cls05newbigo" id="cls05newbigo" class="amoutInput" value="${vo.cls05newbigo}"></td>
	                                            </tr>
	                                            <tr>
	                                                <td style="position: unset;">13</td>
	                                                <td>기타</td>
	                                                <td><input type="text" name="cls06new" id="cls06new" class="amoutInput" value="${vo.cls06new}"></td>
	                                                <td><input type="text" name="cls06newbigo" id="cls06newbigo" class="amoutInput" value="${vo.cls06newbigo}"></td>
	                                            </tr>
	                                            <tr>
	                                                <td style="position: unset;">14</td>
	                                                <td>등록비(지도자)</td>
	                                                <td>복합</td>
	                                                <td><input type="text" name="cls99new" id="cls99new" class="amoutInput" value="${vo.cls99new}"></td>
	                                                <td><input type="text" name="cls99newbigo" id="cls99newbigo" class="amoutInput" value="${vo.cls99newbigo}"></td>
	                                            </tr>
	                                        </tbody>
	                                    </table>
	                                </div>
	                            </div>
                            </div>
                        </div>
                        <div class="tableButtons inputsPd topBd" style="justify-content: flex-end;">
                            <div class="btnContainer organ">
                                <a href="#lnk" class="normalButton purple" onclick="fn_submit()">저장</a>
                            </div>
                        </div>
                        <input type="hidden" id="type" name="type" value="${type}">
                    </form>
                </div>
            </div>
        </div>
    </div>
	</body>
	<script>
		function search_price(){
			$("#register").attr("action", "/admin/front/association_price");
			$("#register").submit();		
		}
		
		function fn_submit(){
			$("#register").attr("action", "/admin/front/association_price_save");
			$("#register").submit();	
		}
		
	
	</script>
</html>