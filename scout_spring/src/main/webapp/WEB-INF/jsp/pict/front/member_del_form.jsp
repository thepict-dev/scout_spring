<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>
<script type="text/javascript" src="/js/HuskyEZCreator.js" charset="utf-8"></script>

<!DOCTYPE html>	
<html lang="ko">
	<%@ include file="./include/head.jsp" %>
	<script src="/js/script_signup.js" defer></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<body>
		<%@ include file="./include/lnb.jsp" %>
		<c:import url="./include/header.jsp">
			<c:param name="pageParent" value="홈페이지 관리"/>
	    	<c:param name="pageTitle" value="게시물리스트"/>
	    </c:import>
        <div class="contentsContainer">
	        <div class="listContainer">
	            <div class="listInner">
	                <form action="" id="register" name="register" class="boardForm" method="post" enctype="multipart/form-data">
	                    <div class="inputsContainer">
	                        <div class="inputBox">
                                <p class="inputCaption">연맹/지구</p>
                                <div class="inputsAlign">
                                    <select name="ASSOCIATIONCODE" id="ASSOCIATIONCODE" onchange="fn_get_unitylist_org()" class="lgThinSelect">
                                        <c:forEach var="association_list" items="${association_list}" varStatus="status">
                                            <option value="${association_list.ASSOCIATIONCODE}"> ${association_list.ASSOCIATIONNAME}</option>
                                        </c:forEach>
                                    </select>
                                </div>
	                        </div>
	                    </div>
	                    <div class="inputBox">
	                        <p class="inputCaption">내용*</p>
								<textarea name="CONTENTS" id="CONTENTS" cols="50" rows="40" class="txt" style="width:100%; height:400px">${pictVO.CONTENTS}</textarea>
	                    </div>
	                    <div class="btnContainer organ">
	                        <a href="/admin/front/member_del_list"class="normalButton white">목록으로</a>
	                        <a href="#lnk" onclick="fn_save()" class="normalButton purple">완료</a>
	                    </div>
	                    
	                </form>
	            </div>
	        </div>
    	</div>
    	
		<script>
			function fn_save(){
			}
		</script>
	</body>
</html>