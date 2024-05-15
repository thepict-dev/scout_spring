<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<div id="groupPopup" class="modalContainer">
    <div class="modalInner lg">
        <button type="button"><img src="/front_img/close.png" alt=""></button>
        <div class="modalTit">
            <p>지도자 소속 변경</p>
        </div>
        <form action="">
        	<!-- 
            <div class="basicInfo1 inputsPd bottomBd">
                <div class="stackInputs">
                    <h3 class="subTitles">기본정보</h3>
                    <div class="inputsContainer">
                        <div class="inputBox">
                            <p class="inputCaption">학교/단체</p>
                            <div class="inputsAlign">
                                <input type="text"  name="" id="" placeholder="내용을 입력하세요…" class="lgThinInput">
                                <a href="#lnk" class="smButton searches" style="margin-right: 12px;"><img src="/front_img/search2.png" alt="">조회</a>
                            </div>
                        </div>
                        <div class="inputBox">
                            <p class="inputCaption">조직직책</p>
                            <select name="" id="" class="smThinSelect">
                                <option value="1"></option>
                                <option value="2"></option>
                                <option value="3"></option>
                            </select>
                        </div>
                    </div>
	                <div class="inputsContainer">
	                    <div class="inputBox">
	                        <p class="inputCaption">시작일</p>
	                            <div class="inputsAlign">
	                            <input type="date" name="" id="" value="" class="lgThinInput">
	                        </div>
	                    </div>
	                    <div class="inputBox">
	                        <p class="inputCaption">마감일</p>
	                            <div class="inputsAlign">
	                            <input type="date" name="" id="" value="" disabled class="lgThinInput">
	                        </div>
	                    </div>
                    </div>
                </div>
            </div>
             -->
            <h3 class="subTitles" style="padding: 16px 24px 0 24px;">학교/단체 검색</h3>
            <div class="inputsContainer inputsPd bottomBd">
                <div class="inputsContainer">
                    <div class="inputsContainer">
                        <div class="inputBox">
                            <p class="inputCaption">연맹</p>
                            <select name="associationcode_org" id="associationcode_org" class="lgThinSelect"  onchange="fn_get_parentorgno()">
                                <c:forEach var="association_list" items="${association_list}" varStatus="status">
                                	<option value="${association_list.ASSOCIATIONCODE}"> ${association_list.ASSOCIATIONNAME}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="inputBox">
                            <p class="inputCaption">구분</p>
                            <div class="inputsAlign">   
                                <select name="ORGCLSCODE1" id="ORGCLSCODE1" class="lgThinSelect" onchange="fn_get_orgclscode()">
                                    <option value="">전체</option>
                                    <option value="01">학교</option>
                                    <option value="02">교육청</option>
                                    <option value="03">관공서</option>
                                    <option value="04">청소년단체</option>
                                    <option value="05">일반단체</option>
                                    <option value="06">종교단체</option>
                                    <option value="07">회사</option>
                                </select>
                                <select name="ORGCLSCODE2" id="ORGCLSCODE2" class="lgThinSelect">
                                	<option value="">전체</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="inputsContainer">
                    <div class="inputBox">
                        <p class="inputCaption">관할교육청</p>
                        <select name="PARENTORGNO" id="PARENTORGNO" class="lgThinSelect">
                        	<option value="">전체</option>
                        </select>
                    </div>
                    <div class="inputBox">
                        <p class="inputCaption">학교/단체명</p>
						<input type="text" name="search_orgtext" id="search_orgtext" placeholder="내용을 입력하세요…" class="lgThinInput">
                    </div>
                </div>
	            <div class="tableButtons" style="justify-content: flex-end;">
	                <div class="buttons">
	                    <a href="#lnk" class="smButton" onclick="search_org()"><img src="/front_img/search2.png" alt="">조회</a>
	                </div>
	            </div>
            </div>
            <div class="inputsContainer inputsPd bottomBd">
               <div class="tableContainer relationContainer" style="padding: 0;">
                  	<h3 class="subTitles">조회목록</h3>
                	<div class="tableWrapper" style="width: 572px; height: 150px; overflow-x: scroll;">
	                    <table>
	                        <colgroup>
	                            <col width="10%" />
	                            <col width="15%" />
	                            <col width="20%" />
	                            <col width="20%" />
	                            <col width="15%" />
	                        </colgroup>
	                        <thead>
	                            <tr>
	                                <th>No</th>
	                                <th>연맹</th>
	                                <th>구분1</th>
	                                <th>구분2</th>
	                                <th>학교/단체명</th>
	                            </tr>
	                        </thead>
	                        <tbody id="group_list">
	                        	<tr>
		                        	<td>No</td>
	                                <td>연맹</td>
	                                <td>구분1</td>
	                                <td>구분2</td>
	                                <td>학교/단체명</td>
	                        	</tr>
	                        </tbody>
	                    </table>
                   	</div>
               	</div>
               	<div class="inputBox">
	                <p class="inputCaption">조직직책</p>
	                <select name="" id="" class="smThinSelect">
	                    <option value="1"></option>
	                    <option value="2"></option>
	                    <option value="3"></option>
	                </select>
	            </div>
            </div>
            
            <div class="tableButtons" style="justify-content: flex-end; padding: 40px 24px 60px 0;">
                <div class="buttons">
                    <a href="#lnk" class="smButton bigBtn">저장</a>
                </div>
            </div>
        </form>
    </div>
</div>
<script>
	function fn_orgnize(target){
		console.log(target)
	}
	function fn_get_orgclscode(){
		$('#ORGCLSCODE2').children().remove();
		
		if($('#ORGCLSCODE1').val() == ''){
			$('#ORGCLSCODE2').val("")
			var html2 ='<option value="">전체</option>';
			$('#ORGCLSCODE2').append(html2)
			$('#groupPopup select').niceSelect('update')
		}
		
		var param = {
			orgclscode1 : $('#ORGCLSCODE1').val()
		}
		
		$.ajax({
			url : "/fn_get_orgclscode"
			, type : "POST"
			, data : JSON.stringify(param)
			, contentType : "application/json"
			, dataType : "json"
			, async : false
			, success : function(data, status, xhr) {
				var html ='<option value="">전체</option>'
				if(data.list){
					var arr = data.list;
					$('#ORGCLSCODE2').children().remove();
					for(var i=0; i<arr.length; i++){
						html += '<option value="'+ arr[i].orgclscode2 +'">'+arr[i].orgclsname +'</option>'
					}
					$('#ORGCLSCODE2').append(html)
					$('#groupPopup select').niceSelect('update')
				}
			}
			, error : function(xhr, status, error) {
				console.log(xhr)
				console.log("에러")
			}
		});
	}
	function fn_get_parentorgno(){
		$('#PARENTORGNO').children().remove();

		if($('#associationcode_org').val() == '200'){
			$('#PARENTORGNO').val("")
			var html2 ='<option value="">전체</option>';
			$('#PARENTORGNO').append(html2)
			$('#groupPopup select').niceSelect('update')
		}
		
		
		var param = {
			associationcode : $('#associationcode_org').val()
		}
		
		$.ajax({
			url : "/fn_get_parentorgno"
			, type : "POST"
			, data : JSON.stringify(param)
			, contentType : "application/json"
			, dataType : "json"
			, async : false
			, success : function(data, status, xhr) {
				var html ='<option value="">전체</option>'
				if(data.list){
					var arr = data.list;
					$('#PARENTORGNO').children().remove();
					for(var i=0; i<arr.length; i++){
						html += '<option value="'+ arr[i].orgno +'">'+arr[i].orgname +'</option>'
					}
					$('#PARENTORGNO').append(html)
					$('#groupPopup select').niceSelect('update')
				}
			}
			, error : function(xhr, status, error) {
				console.log(xhr)
				console.log("에러")
			}
		});
	}
	
	function search_org(){
		$('#group_list').children().remove();
		var param = {
			associationcode : $('#associationcode_org').val(),
			orgclscode1 : $('#ORGCLSCODE1').val(),
			orgclscode2 : $('#ORGCLSCODE2').val(),
			parentorgno :$('#PARENTORGNO').val(),
			search_orgtext : $('#search_orgtext').val()
		}
	
		$.ajax({
			url : "/search_org"
			, type : "POST"
			, data : JSON.stringify(param)
			, contentType : "application/json"
			, dataType : "json"
			, async : false
			, success : function(data, status, xhr) {
				var html =''
				if(data.list){
					console.log(data)
					var arr = data.list;
					$('#group_list').children().remove();
					for(var i=0; i<arr.length; i++){
						html += '<tr onclick="fn_orgno_select('+arr[i].idx+')">'+
						'<td>' + Number(i+1) + '</td>' +
						'<td>' + arr[i].associationname + '</td>'+
						'<td>' + arr[i].orgclsname1 + '</td>'+
						'<td>' + arr[i].orgclsname2 + '</td>'+
						'<td>' + arr[i].orgname + '</td>'+
						'</tr>';
					}
					$('#group_list').append(html)
					$('#groupPopup select').niceSelect('update')
				}
			}
			, error : function(xhr, status, error) {
				console.log(xhr)
				console.log("에러")
			}
		});
	}
	
</script>
