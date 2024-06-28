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
	    	<c:param name="pageTitle" value="게시물리스트"/>
	    </c:import>
        <div class="contentsContainer">
	        <div class="listContainer">
	            <div class="listInner">
	                <form action="" class="boardForm">
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">카테고리*</p>
	                            <select name="" id="" class="lgThinInput">
	                                <option value="">공지사항</option>
	                                <option value="">언론에 비친 SCOUT</option>
	                                <option value="">정보 공개</option>
	                            </select>
	                        </div>
	                        <div class="inputBox">
	                            <p class="inputCaption">카테고리*</p>
	                            <select name="" id="" class="lgThinInput">
	                                <option value="">공지사항</option>
	                                <option value="">언론에 비친 SCOUT</option>
	                                <option value="">정보 공개</option>
	                            </select>
	                        </div>
	                        <div class="inputBox">
	                            <p class="inputCaption">제목*</p>
	                            <input type="text" name="" id="" placeholder="내용을 입력하세요…">
	                        </div>
                            <div class="inputBox" style="justify-content: center; margin-top: 5px;">
                                <div class="recive">
                                    <input type="checkbox" name="NOTICEYN" id="NOTICEYN"><label for="NOTICEYN">공지여부</label>
                                </div>
                            </div>
	                    </div>
	                    <div class="inputBox">
	                        <p class="inputCaption">내용*</p>
	                        <div class="editor">
	
	                        </div>
	                    </div>
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <p class="inputCaption">첨부파일
	                                <label for="input-file">파일추가</label>
	                                <input type="file" id="input-file" multiple style="display: none;">
	                            </p>
	                            <ul class="fileList"></ul>
	                            <p class="fileCaption">첨부 파일은 각 10MB 이내의 파일을 최대 5개까지 가능하며, 아래의 확장자 파일만 가능합니다.<br>
	                                (doc, docx, xls, xlsx, ppt, pptx, hwp, txt, pdf, ndoc, nxls, nppt, jpg, jpeg, png, gif, bmp, tif)</p>
	                        </div>
	                    </div>
	                    <div class="btnContainer organ">
	                        <a href="/admin/front/board_list"class="normalButton white">목록으로</a>
	                        <a href="#lnk"class="normalButton purple">완료</a>
	                    </div>
	                </form>
	            </div>
	        </div>
    	</div>
		<script>
			(function() {
			    let files = [];
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
			        
			        newFiles.forEach(file => {
			            if (files.length >= maxFiles) {
			                alert(`최대 ${maxFiles}개의 파일만 업로드할 수 있습니다.`);
			                return;
			            }
			            if (file.size > maxFileSize) {
			                alert(`${file.name}의 크기가 10MB를 초과합니다.`);
			                return;
			            }
			            files.push(file);
			        });
			
			        renderFileList();
			        fileInput.value = ''; // 입력 필드 초기화
			    }
			
			    function handleDeleteClick(event) {
			        if (event.target.classList.contains('deleteBtn')) {
			            const index = parseInt(event.target.dataset.index);
			            files.splice(index, 1);
			            renderFileList();
			        }
			    }
			
			    function renderFileList() {
			        fileList.innerHTML = files.map((file, index) => createFileListItem(file, index)).join('');
			    }
			
			    function createFileListItem(file, index) {
					console.log(files)
			        return `
			            <li>
			                <p>${file.name}</p>
			                <img src="/front_img/close2.png" alt="파일삭제" class="deleteBtn" data-index="${index}">
			            </li>
			        `;
			    }
			    init();
			})();
		</script>
	</body>
</html>