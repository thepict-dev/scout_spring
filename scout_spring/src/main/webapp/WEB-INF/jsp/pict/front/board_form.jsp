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
	                            <p class="inputCaption">카테고리*</p>
	                            <select name="BRDNO" id="BRDNO" class="lgThinInput">
	                            	<option value="">전체</option>
	                                <option value="56" <c:if test="${pictVO.BRDNO eq '56'}">selected</c:if>>공지사항</option>
	                                <option value="227" <c:if test="${pictVO.BRDNO eq '227'}">selected</c:if>>언론에 비친 SCOUT</option>
	                                <option value="290" <c:if test="${pictVO.BRDNO eq '290'}">selected</c:if>>대운영자료실</option>
	                                <option value="1587" <c:if test="${pictVO.BRDNO eq '1587'}">selected</c:if>>통합자료실</option>
	                                <option value="1827" <c:if test="${pictVO.BRDNO eq '1827'}">selected</c:if>>정보공개</option>
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
                                    <input type="checkbox" name="NOTI" id="NOTI" <c:if test="${pictVO.NOTI eq 'Y'}">checked</c:if> ><label for="NOTI">공지여부</label>
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
	                                <label for="input-file">파일추가</label>
	                                <input type="file" id="input-file" name="input-file" multiple style="display: none;">
	                                
	                                <input type='file' name="file1" id="file1" style="display : none"/>
	                                <input type='file' name="file2" id="file2" style="display : none"/>
	                                <input type='file' name="file3" id="file3" style="display : none"/>
	                                <input type='file' name="file4" id="file4" style="display : none"/>
	                                <input type='file' name="file5" id="file5" style="display : none"/>
	                            </p>
	                            <ul class="fileList"></ul>
	                            <p class="fileCaption">첨부 파일은 각 10MB 이내의 파일을 최대 5개까지 가능하며, 아래의 확장자 파일만 가능합니다.<br>
	                                (doc, docx, xls, xlsx, ppt, pptx, hwp, txt, pdf, ndoc, nxls, nppt, jpg, jpeg, png, gif, bmp, tif)</p>
	                        </div>
	                    </div>
	                    <div class="btnContainer organ">
	                        <a href="/admin/front/board_list"class="normalButton white">목록으로</a>
	                        <a href="#lnk" onclick="fn_save()" class="normalButton purple">완료</a>
	                    </div>
	                    
	                    <input type='hidden' name="saveType" id="saveType" value='${pictVO.saveType}' /> 
    					
    					
	                </form>
	            </div>
	        </div>
    	</div>
    	
		<script>
			var files = [];
			$(document).ready(function(){
			    console.log("레디")
			    const fileInput = document.getElementById('input-file');
			    const fileList = document.querySelector('.fileList');
			    const maxFiles = 5;
			    const maxFileSize = 10 * 1024 * 1024; // 10MB in bytes
			
			    function init() {
			        fileInput.addEventListener('change', handleFileSelect);
			        fileList.addEventListener('click', handleDeleteClick);
			    }
			
			    function handleFileSelect(event) {
			        const newFiles = Array.from(event.target.files);
			        newFiles.forEach((file,i) => {
			            if (files.length >= maxFiles) {
			                alert(`최대 ${maxFiles}개의 파일만 업로드할 수 있습니다.`);
			                return;
			            }
			            if (file.size > maxFileSize) {
			                alert(`${file.name}의 크기가 10MB를 초과합니다.`);
			                return;
			            }
			            files.push(file);
			            fileList.innerHTML += createFileListItem(file, i);
			        });
			
			        //renderFileList();
			        //fileInput.value = ''; // 입력 필드 초기화
			    }
			
			    function handleDeleteClick(event) {
			        if (event.target.classList.contains('deleteBtn')) {
			            const index = parseInt(event.target.dataset.index);
			            files.splice(index, 1);
			            renderFileList();
			        }
			    }
			
			    function renderFileList() {
			    	//얘 안쓴다 하고
			        fileList.innerHTML = files.map((file, index) => createFileListItem(file, index)).join('');
			    }
			
			    function createFileListItem(file, index) {
			    	var html = ""
			    	html += '<li>' + 
			    	'<p>'+file.name+'</p>' +
			    	'<img src="/front_img/close2.png" alt="파일삭제" class="deleteBtn" data-index="'+index+'">'+
			    	'</li>'
			    	
			        return html;
			    }
			    init();
			})
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
				
				
				if(files.length > 0){
					$('#file1').val(files)
						
				}
				
				
				if(confirm("게시글을 등록하시겠습니까?")){
					$("#register").attr("action", "/admin/front/board_save");
					$("#register").submit();
				}
			}
		</script>
	</body>
</html>