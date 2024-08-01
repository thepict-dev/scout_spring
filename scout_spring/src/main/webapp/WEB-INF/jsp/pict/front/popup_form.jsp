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
	    	<c:param name="pageTitle" value="팝업 관리"/>
	    </c:import>
        <div class="contentsContainer">
	        <div class="listContainer">
	            <div class="listInner">
	                <form action="" id="register" name="register" class="boardForm" method="post" enctype="multipart/form-data">
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">제목*</p>
	                            <input type="text" name="title" id="title" value="${pictVO.title}" placeholder="제목을 입력하세요.">
	                        </div>
	                    </div>
	                    
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">이동링크*</p>
	                            <input type="text" name="linkurl" id="linkurl" value="${pictVO.linkurl}" placeholder="이동링크를 입력하세요.">
	                        </div>
	                    </div>
	                    
	                     <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">정렬순서*</p>
	                            <input type="text" name="orderby" id="orderby" value="${pictVO.orderby}" placeholder="숫자만 입력하세요." style="width:150px">
	                        </div>
	                    </div>
	                  
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">첨부파일
	                            	<div class="fileList">
	                            		<label for="file_1">
		                                	<input type="file" id="file_1" name="file1root" class="jy_input">
		                                	파일선택
	                                	</label>
		                                <div class="fileLabel">
			                                <p id="file_name_1">파일명이 들어갑니다</p>
				    						<!-- <img src="/front_img/close2.png" alt="파일삭제" class="deleteBtn" onclick="fn_file_delete('1')"> -->
	                                	</div>
	                                </div>
	                            </p>
	                            <ul class="fileList"></ul>
	                            <p class="fileCaption">첨부 파일은 각 10MB 이내의 파일을 최대 5개까지 가능하며, 아래의 확장자 파일만 가능합니다.<br>
	                                (doc, docx, xls, xlsx, ppt, pptx, hwp, txt, pdf, ndoc, nxls, nppt, jpg, jpeg, png, gif, bmp, tif)</p>
	                        </div>
	                    </div>
	                    <div class="btnContainer organ">
	                        <a href="/admin/front/popup_list"class="normalButton white">목록으로</a>
	                        <a href="#lnk" onclick="fn_save()" class="normalButton purple">완료</a>
	                    </div>
	                    
	                    <input type='hidden' name="saveType" id="saveType" value='${pictVO.saveType}' /> 
    					<input type='hidden' name="fileidx" id="fileidx"/>
    					<input type='hidden' name="idx" id="idx" value="${pictVO.idx }"/>
	                </form>
	            </div>
	        </div>
    	</div>
    	
		<script>
			$(document).ready(function(){
				var file1 = '${pictVO.mainimg}'
				
				if(file1 != '' && file1 != undefined && file1 != null) $('#file_name_1').text(file1.split("/user1/upload_file/scout/popup/")[1])
				
			})
			$(".jy_input").on('change', function(){
				const fileInput = this;
                const fileIndex = fileInput.id.split('_')[1];
                
                if (fileInput.files.length > 0) {
                    const fileName = fileInput.files[0].name;
					$("#file_name_"+fileIndex).text(fileName);	
				}
			})
			
			function fn_save(){
				var title = $('#title').val()
				
				if(title == '' || title == null || title == undefined){
					alert("팝업 제목을 입력해주세요.")
					$('#title').focus();
					return false;
				}

				
				if(confirm("팝업을 등록하시겠습니까?")){
					$("#register").attr("action", "/admin/front/popup_save");
					$("#register").submit();
				}
			}
		</script>
	</body>
</html>