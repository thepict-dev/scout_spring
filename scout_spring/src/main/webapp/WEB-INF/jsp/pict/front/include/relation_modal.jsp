<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<div id="relationPopup">
    <div class="popupInner">
        <button type="button"><img src="/front_img/close.png" alt=""></button>
           <form action="">
               <div class="tableContainer relationContainer bottomBd mb20">
                   <h2 class="subTitles">관계 목록</h2>
                   <div class="tableWrapper" style="height: 150px; overflow-x: scroll;">
                       <table style="min-width: 630px;">
                           <colgroup>
                               <col width="10%" />
                               <col width="15%" />
                               <col width="20%" />
                               <col width="20%" />
                               <col width="15%" />
                               <col width="20%" />
                           </colgroup>
                           <thead>
                               <tr>
                                   <th>코드</th>
                                   <th>관계</th>
                                   <th>회원명</th>
                                   <th>법정생년월일</th>
                                   <th>성별</th>
                                   <th>등록일</th>
                               </tr>
                           </thead>
                           <tbody id="relation_list">
                               
                           </tbody>
                       </table>
                   </div>
                   <div class="tableButtons">
                       <p id="relation_cnt">0 rows</p>
                       <div class="buttons">
                           <a href="#relationPopup" onclick="relation_delete()" class="smButton relationBtn"><img src="/front_img/reset.png" alt="">관계삭제</a>
                       </div>
                   </div>
               </div>	
               <h2 class="subTitles" style="padding: 0 24px;">관계 검색</h2>
               <div class="inputsContainer inputsPd">
                   <div class="inputBox">
                       <p class="inputCaption">회원명</p>
                       <input type="text" name="search_relation_kname" id="search_relation_kname" placeholder="내용을 입력하세요…" class="lgThinInput">
                   </div>
                   <div class="inputBox">
                       <p class="inputCaption">회원번호</p>
                       <input type="text" class="lgThinInput" name="search_relation_memberno" id="search_relation_memberno" placeholder="내용을 입력하세요…">
                   </div>
               </div>
              	<div class="inputsContainer" style="padding: 0 24px;">
                   <div class="inputBox genderContainer" style="align-items: center;">
                       <p class="inputCaption" style="margin: 0;">성별</p>
                       <div class="gender">
                           <input type="radio" name="search_relation_sex" value="" id="search_relation_sex_all">
                           <label for="search_relation_sex_all">전체</label>
                       </div>
                       <div class="gender">
                           <input type="radio" name="search_relation_sex" value="M" id="search_relation_sex_m">
                           <label for="search_relation_sex_m">남</label>
                       </div>
                       <div class="gender">
                           <input type="radio" name="search_relation_sex" value="W" id="search_relation_sex_w">
                           <label for="search_relation_sex_w">여</label>
                       </div>
                   </div>
                </div>
                <div class="tableButtons addSearch bottomBd" style="padding:16px 24px;">
                    <div class="buttons">
                        <a href="#relationPopup" onclick="fn_relation_person_search()" class="smButton relationBtn"><img src="/front_img/search2.png" alt="">조회</a>
                    </div>
                </div>
              	<div class="inputsContainer">
                <div class="inputBox">
                   	<div class="inputsAlign relationSearch">
	                     <select name="relationclslist" id="relationclslist" class="lgThinSelect">
	                     
	                     </select>
	                     <a href="#relationPopup" onclick="relation_insert()" class="smButton relationBtn"><img src="/front_img/add.png" alt="">관계추가</a>
                	</div>
                </div>
               </div>
               <div class="tableContainer relationContainer bottomBd mb20">
                   <h2 class="subTitles">조회 결과</h2>
                   <div class="tableWrapper" style="height: 150px;">
                       <table>
                           <colgroup>
                               <col width="15%" />
                               <col width="20%" />
                               <col width="25%" />
                               <col width="15%" />
                               <col width="25%" />
                           </colgroup>
                           <thead>
                               <tr>
                                   <th>회원번호</th>
                                   <th>회원명</th>
                                   <th>법정생년월일</th>
                                   <th>성별</th>
                                   <th>등록일</th>
                               </tr>
                           </thead>
                           <tbody id="search_relation_list">
                               
                           </tbody>
                       </table>
                   </div>
                   <div class="tableButtons">
                       <p>0<span>rows</span></p>
                   </div>
               </div>	
               <div class="tableButtons" style="justify-content: flex-end; padding: 16px 24px 60px 0;">
                   <div class="buttons">
                       <a href="#lnk" class="smButton"><img src="/front_img/download.png" alt="">창닫기</a>
                   </div>
               </div>
           </form>
       </div>
   </div>
   <script>
   		
	function fn_relation_info(){
		$('#initial-loading').css('display', 'flex')
		var param = {}
		$.ajax({
			url : "/get_relation_clscode"
			, type : "POST"
			, data : JSON.stringify(param)
			, contentType : "application/json"
			, dataType : "json"
			, async : true
			, success : function(data, status, xhr) {
				console.log(data)
				var arr = data.list
				var html =""
				for(var i=0; i<arr.length; i++){
					html +=
					'<option value='+ arr[i].relationcode+' >' + arr[i].relationname1 + arr[i].relationname2 + '</option>'

				}
				$('#relationclslist').append(html)
				$('#relationPopup select').niceSelect('update')
				$('#initial-loading').css('display', 'none')
			},
			error : function(err){
				$('#error').css('display', 'flex')
			}
		})
	  }
	function fn_relation_person_search(){
		$('#initial-loading').css('display', 'flex')
		$('#search_relation_list').children().remove()
		var param = {
			memberno : $('#search_relation_memberno').val(),
			kname : $('#search_relation_kname').val()
		}
		$.ajax({
			url : "/get_relation_person_search"
			, type : "POST"
			, data : JSON.stringify(param)
			, contentType : "application/json"
			, dataType : "json"
			, async : true
			, success : function(data, status, xhr) {
				console.log(data)
				var arr = data.list
				var html =""
				if(arr.length > 0){
					for(var i=0; i<arr.length; i++){
						html += '<tr>'+
						'<td>' + arr[i].memberno + '</td>'+
						'<td>' + arr[i].kname + '</td>'+
						'<td>' + arr[i].birthday + '</td>'+
						'<td>' + arr[i].sex + '</td>'+
						'<td>' + arr[i].enterdate + '</td>'+
						'</tr>'
					}
				}
				$('#search_relation_list').append(html)
				$('#initial-loading').css('display', 'none')
			},
			error : function(err){
				$('#error').css('display', 'flex')
			}
		})
	}
	
	function relation_insert(){
		$('#initial-loading').css('display', 'flex')
		
		
		var param = {
			frommemberno: $('#MEMBERNO').val(),
			relationcode : $('#relationclslist').val(),
			tomemberno : "645849"
		}
		$.ajax({
			url : "/relation_insert"
			, type : "POST"
			, data : JSON.stringify(param)
			, contentType : "application/json"
			, async : true
			, success : function(data, status, xhr) {
				alert("저장되었습니다.")
				$('#initial-loading').css('display', 'none')
			},
			error : function(err){
				console.log(err)
				$('#error').css('display', 'flex')
			}
		})
	}
	function relation_delete(){
		$('#initial-loading').css('display', 'flex')
		var text= "관계를 삭제하시겠습니까?"
		if(confirm (text)){
			var param = {
				frommemberno: $('#MEMBERNO').val(),
				idx : '2',
				tomemberno : "645849"
			}
			$.ajax({
				url : "/relation_delete"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, async : true
				, success : function(data, status, xhr) {
					alert("삭제되었습니다.")
					$('#initial-loading').css('display', 'none')
				},
				error : function(err){
					console.log(err)
					$('#error').css('display', 'flex')
				}
			})
		}
	}
				
   </script>