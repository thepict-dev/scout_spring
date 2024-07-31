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
		<%
			pageContext.setAttribute("session", session.getAttribute("associationcode"));
		%>
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
	                            <p class="inputCaption">카테고리*</p>
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
	                            <p class="inputCaption">카테고리*</p>
	                            <select name="BRDNO" id="BRDNO" class="lgThinInput" >

	                            </select>
	                        </div>
	                        <!-- 필요하면 쓸것 -->
	                        <!-- 
	                        <div class="inputBox">
	                            <p class="inputCaption">카테고리*</p>
	                            <select name="" id="" class="lgThinInput">
	                                <option value="">공지사항</option>
	                                <option value="">언론에 비친 SCOUT</option>
	                                <option value="">정보 공개</option>
	                            </select>
	                        </div>
	                         -->
	                        <div class="inputBox">
	                            <p class="inputCaption">제목*</p>
	                            <input type="text" name="SUBJECT" id="SUBJECT" value="${pictVO.SUBJECT}" placeholder="제목 입력하세요…">
	                        </div>
                            <div class="inputBox" style="justify-content: center; margin-top: 5px;">
                                <div class="recive">
                                    <input type="checkbox" name="NOTI" id="NOTI" <c:if test="${pictVO.NOTI eq 'Y'}">checked</c:if> value="Y"><label for="NOTI" style="font-weight:700">공지여부 (공지사항 카테고리 한정)</label>
                                </div>
                            </div>
	                    </div>
	                    <div class="inputBox">
	                        <p class="inputCaption">내용*</p>
								<textarea name="CONTENTS" id="CONTENTS" cols="50" rows="40" class="txt" style="width:100%;">${pictVO.CONTENTS}</textarea>
								<script type="text/javascript">
									var oEditors = [];
									nhn.husky.EZCreator.createInIFrame({
										oAppRef: oEditors,
										elPlaceHolder: "CONTENTS", //textarea에서 지정한 id와 일치해야 합니다.
										sSkinURI: "/js/SmartEditor2Skin.html",
										fCreator: "createSEditor2"
									});
								</script>
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
				    						<img src="/front_img/close2.png" alt="파일삭제" class="deleteBtn" onclick="fn_file_delete('1')">
	                                	</div>
	                                </div>
	                                <div class="fileList">
	                            		<label for="file_2">
		                                	<input type="file" id="file_2" name="file2root" class="jy_input">
		                                	파일선택
	                                	</label>
		                                <div class="fileLabel">
			                                <p id="file_name_2">파일명이 들어갑니다</p>
				    						<img src="/front_img/close2.png" alt="파일삭제" class="deleteBtn" onclick="fn_file_delete('2')">
	                                	</div>
	                                </div>
	                                <div class="fileList">
	                            		<label for="file_3">
		                                	<input type="file" id="file_3" name="file3root" class="jy_input">
		                                	파일선택
	                                	</label>
		                                <div class="fileLabel">
			                                <p id="file_name_3">파일명이 들어갑니다</p>
				    						<img src="/front_img/close2.png" alt="파일삭제" class="deleteBtn" onclick="fn_file_delete('3')">
	                                	</div>
	                                </div>
	                                <div class="fileList">
	                            		<label for="file_4">
		                                	<input type="file" id="file_4" name="file4root" class="jy_input">
		                                	파일선택
	                                	</label>
		                                <div class="fileLabel">
			                                <p id="file_name_4">파일명이 들어갑니다</p>
				    						<img src="/front_img/close2.png" alt="파일삭제" class="deleteBtn" onclick="fn_file_delete('4')">
	                                	</div>
	                                </div>
	                                <div class="fileList">
	                            		<label for="file_5">
		                                	<input type="file" id="file_5" name="file5root" class="jy_input">
		                                	파일선택
	                                	</label>
		                                <div class="fileLabel">
			                                <p id="file_name_5">파일명이 들어갑니다</p>
				    						<img src="/front_img/close2.png" alt="파일삭제" class="deleteBtn" onclick="fn_file_delete('5')">
	                                	</div>
	                                </div>
	                            </p>
	                            <ul class="fileList"></ul>
	                            <p class="fileCaption">첨부 파일은 각 10MB 이내의 파일을 최대 5개까지 가능하며, 아래의 확장자 파일만 가능합니다.<br>
	                                (doc, docx, xls, xlsx, ppt, pptx, hwp, txt, pdf, ndoc, nxls, nppt, jpg, jpeg, png, gif, bmp, tif)</p>
	                        </div>
	                    </div>
	                    <div class="btnContainer organ">
	                        <a href="/admin/front/board_list_sub"class="normalButton white">목록으로</a>
	                        <a href="#lnk" onclick="fn_save()" class="normalButton purple">완료</a>
	                    </div>
	                    
	                    <input type='hidden' name="saveType" id="saveType" value='${pictVO.saveType}' /> 
    					<input type='hidden' name="BRDCTSNO" id="BRDCTSNO" value='${pictVO.BRDCTSNO}' /> 
    					<input type='hidden' name="fileidx" id="fileidx"/>
	                </form>
	            </div>
	        </div>
    	</div>
    	
		<script>
			$(document).ready(function(){
				var file1 = '${pictVO.file1}'
				var file2 = '${pictVO.file2}'
				var file3 = '${pictVO.file3}'
				var file4 = '${pictVO.file4}'
				var file5 = '${pictVO.file5}'
				var brdno = '${pictVO.BRDNO}'
				if(file1 != '' && file1 != undefined && file1 != null) $('#file_name_1').text(file1.split("/user1/upload_file/scout/"+brdno+"/")[1])
				if(file2 != '' && file2 != undefined && file2 != null) $('#file_name_2').text(file1.split("/user1/upload_file/scout/"+brdno+"/")[1])
				if(file3 != '' && file3 != undefined && file3 != null) $('#file_name_3').text(file1.split("/user1/upload_file/scout/"+brdno+"/")[1])
				if(file4 != '' && file4 != undefined && file4 != null) $('#file_name_4').text(file1.split("/user1/upload_file/scout/"+brdno+"/")[1])
				if(file5 != '' && file5 != undefined && file5 != null) $('#file_name_5').text(file1.split("/user1/upload_file/scout/"+brdno+"/")[1])
				
				
				var BRDNO = '${pictVO.BRDNO}'
				if(BRDNO != null && BRDNO != undefined && BRDNO != ''){
					fn_change_associationcode(BRDNO)
				}
				else{
					fn_change_associationcode()
					
				}
				var login_associationcode = '${session}'
				if(login_associationcode != '200'){
					$("select[name=ASSOCIATIONCODE]").attr("disabled", true);
					$('.contentsContainer select').niceSelect('update')	
				}
				
			})
			$(".jy_input").on('change', function(){
				const fileInput = this;
                const fileIndex = fileInput.id.split('_')[1];
                
                if (fileInput.files.length > 0) {
                    const fileName = fileInput.files[0].name;
					$("#file_name_"+fileIndex).text(fileName);	
				}
			})
			
			function fn_file_delete(fileidx){
				if(confirm("해당 첨부파일을 삭제하시겠습니까?")){
					$('#fileidx').val(fileidx)
					$("#register").attr("action", "/admin/front/file_delete_sub");
					$("#register").submit();
				}
			}
			
			function fn_save(){
				var BRDNO = $('#BRDNO').val()
				var SUBJECT = $('#SUBJECT').val();
				
				if(BRDNO == '' || BRDNO == null || BRDNO == undefined){
					alert("게시판 카테고리를 선택해주세요.")
					$('#BRDNO').focus();
					return false;
				}
				if(SUBJECT == '' || SUBJECT == null || SUBJECT == undefined){
					alert("제목을 입력해주세요.")
					$('#SUBJECT').focus();
					return false;
				}
				oEditors[0].exec("UPDATE_CONTENTS_FIELD", []);
				
				
				if(confirm("게시글을 등록하시겠습니까?")){
					$("#register").attr("action", "/admin/front/board_save_sub");
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
	</body>
</html>