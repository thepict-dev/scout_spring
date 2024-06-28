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
	                <form action="" class="countList">
	                    <p>총 <span>10</span>개</p>
	                    <div class="inputsContainer">
	                        <div class="inputBox">
	                            <select name="" id="" class="lgThinInput">
	                                <option value="">공지사항</option>
	                                <option value="">언론에 비친 SCOUT</option>
	                                <option value="">정보 공개</option>
	                            </select>
	                        </div>
	                        <div class="inputBox listSearch">
	                            <input type="text" name="" id="" placeholder="내용을 입력하세요…">
	                            <a href="#lnk"><img src="/front_img/search2.png" alt=""></a>
	                        </div>
	                    </div>
	                </form>
	                <ul class="listHead">
	                    <li>순서</li>
	                    <li>카테고리</li>
	                    <li>제목</li>
	                    <li>작성자</li>
	                    <li>등록일</li>
	                    <li>삭제</li>
	                </ul>
	                <ul class="listBody">
	                    <li>
	                        <p>1</p>
	                        <p>언론에 비친 SCOUT</p>
	                        <a href="#lnk" class="title">제목목목목목목목목제목목목목목목목목ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ</a>
	                        <p>한지현</p>
	                        <p>2024-06-28</p>
	                        <p><a href="#lnk"><img src="/front_img/delete.png" alt="삭제"></a></p>
	                    </li>
	                </ul>
	                <div class="listButton">
	                    <a href="/admin/front/board_form"><img src="/front_img/add.png" alt="등록버튼">등록</a>
	                </div>
	                <div class="pagination">
	                    <a href="#lnk"><img src="/front_img/first.png" alt="처음으로"></a>
	                    <a href="#lnk"><img src="/front_img/prev.png" alt="이전으로"></a>
	                    <a href="#lnk" class="active">1</a>
	                    <a href="#lnk">2</a>
	                    <a href="#lnk">3</a>
	                    <p>...</p>
	                    <a href="#lnk">10</a>
	                    <a href="#lnk"><img src="/front_img/next.png" alt="다음으로"></a>
	                    <a href="#lnk"><img src="/front_img/last.png" alt="처음으로"></a>
	                </div>
	            </div>
	        </div>
	    </div>
	</body>
	<script>
		function former_info(memberno){
			var param = {
				memberno : memberno,
			}
			$.ajax({
				url : "/former_info"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : false
				, success : function(data, status, xhr) {
					var html ="";
					console.log(data)
					if(data.list){
						var picimg = "http://scout.thepict.co.kr/front_img/profile.png"
						if(data.list[0].picimg != '' && data.list[0].picimg != null && data.list[0].picimg != undefined)
							picimg = data.list[0].picimg
							
						$('#profile_img').attr("src",picimg)
						$('#MEMBERNO').val(data.list[0].memberno)
						$('#KNAME').val(data.list[0].kname)
						$('#association').val(data.list[0].association)
						$('#sosock').val(data.list[0].sosock)
						$('#depart').val(data.list[0].depart)
						$('#ranked').val(data.list[0].ranked)
						
						$('#BIRTHDAY').val(data.list[0].birthday)
						$('#MOBILE').val(data.list[0].mobile)
						$('#EMAIL').val(data.list[0].email)
						
						
						$('.contentsContainer select').niceSelect('update')
					}
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
		}

		function fn_submit(){
			var param = {
				memberno : $('#MEMBERNO').val(),
				kname : $('#KNAME').val(),
				association : $('#association').val(),
				sosock : $('#sosock').val(),
				depart : $('#depart').val(),
				ranked : $('#ranked').val(),
				birthday : $('#BIRTHDAY').val(),
				mobile : $('#MOBILE').val(),
				email : $('#EMAIL').val(),
			}
			
			$.ajax({
				url : "/former_save"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, async : false
				, success : function(data, status, xhr) {
					if(data == 'Y'){
						alert("정상적으로 수정되었습니다.");
						$('#name_'+$('#MEMBERNO').val()).text($('#KNAME').val())
						$('#association'+$('#MEMBERNO').val()).text($('#association').val())
						$('#sosock'+$('#MEMBERNO').val()).text($('#sosock option:checked').text())
						$('#depart_'+$('#MEMBERNO').val()).text($('#depart option:checked').text())
						$('#ranked_'+$('#MEMBERNO').val()).text($('#ranked option:checked').text())
						$('#birthday_'+$('#MEMBERNO').val()).text($('#BIRTHDAY').val())
						$('#mobile_'+$('#MEMBERNO').val()).text($('#MOBILE').val())
						$('#email_'+$('#MEMBERNO').val()).text($('#EMAIL').val())
					}
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
		}
		$("#attach_file").change(function(){
			var memberno = $("#MEMBERNO").val()
			if(memberno == '' || memberno == undefined || memberno == null){
				alert("회원을 선택해주세요.")
				return false;
			}
			else{
				 var requestData = {
			        memberno : $("#MEMBERNO").val(),
			    }
			 
				var form = $('#attach_file')[0].files[0];
				var formData = new FormData();
				formData.append('img', form);
				formData.append("request", new Blob([JSON.stringify(requestData)], {type: "application/json"}));
				
				$.ajax({
					url: '/profile_img',
					processData : false,
					contentType : false,
					data : formData,
					type : 'POST',
					success : function(result){
						console.log(result)
						alert("이미지가 정상적으로 저장되었습니다.");
						
					},
					error : function(err){
						console.log(err)
					}
					
				});
			}
			
		})
		
	</script>
</html>