<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>



<!DOCTYPE html>
<html lang="ko">
	<%@ include file="../include/head.jsp" %>
	
    <div class="wrapper">
        <div class="topSection">
            <form action="">     
                <div class="search">
                    <div class="wholeSelect2">
                        <div class="search1">
                            <p>연맹/지구대</p>
                            <select name="search_associationcode" id="search_associationcode" onchange="fn_get_unitylist()">
                            	<c:forEach var="association_list" items="${association_list}" varStatus="status">
                                	<option value="${association_list.ASSOCIATIONCODE}" <c:if test="${association_list.ASSOCIATIONCODE eq pictVO.search_associationcode}">selected</c:if> > ${association_list.ASSOCIATIONNAME}</option>
                                </c:forEach>
                            </select>
                            <select name="search_unitycode" id="search_unitycode">
                            	<option value="">전체</option>
								<c:forEach var="unity_list" items="${unity_list}" varStatus="status">
									<option value="${unity_list.TROOPNO}" <c:if test="${unity_list.PARENTTROOPNO eq pictVO.search_unitycode}">selected</c:if>>${unity_list.TROOPNAME}</option>
								</c:forEach>
                            </select>
                        </div>
                        <div class="search1">
                            <p>관할교육청</p>
                            <select name="search_edu" id="search_edu">
                                <option value="">전체</option>
                            </select>
                        </div>
                    </div>
                    <div class="wholeSelect2">
                        <div class="search1">
                            <p>등급</p>
                            <select name="search_level" id="search_level">
                                <c:forEach var="trooplevel_list" items="${trooplevel_list}" varStatus="status">
									<option value="${trooplevel_list.TROOPLEVELCODE}" 
										<c:if test="${trooplevel_list.TROOPLEVELCODE eq pictVO.search_unitycode}">selected</c:if>
									>${trooplevel_list.TROOPLEVELNAME}</option>
								</c:forEach>
                            </select>
                        </div>
                        <div class="search1">
                            <p>스카우트구분</p>
                            <select name="search_scoutcls" id="search_scoutcls">
                                <option value="">전체</option>
                                <c:forEach var="scoutcls_list" items="${scoutcls_list}" varStatus="status">
									<option value="${scoutcls_list.SCOUTCLSCODE}" <c:if test="${scoutcls_list.SCOUTCLSCODE eq pictVO.search_unitycode}">selected</c:if>>${scoutcls_list.SCOUTCLSNAME}</option>
								</c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="wholeSelect2">
                        <div class="search1">
                            <p>단위대구분</p>
                            <select name="search_troopcls" id="search_troopcls">
                                <option value="">전체</option>
                                <option value="01">학교대</option>
                                <option value="02">지역대</option>
                                <option value="03">동우회</option>
                                <option value="04">특수대</option>
                            </select>
                            <select name="search_troopcls2" id="search_troopcls2">
                                <option value="">전체</option>
                                <option value="scDae2_1">전체</option>
                                <option value="scDae2_1">전체</option>
                                <option value="scDae2_1">전체</option>
                                <option value="scDae2_1">전체</option>
                                <option value="scDae2_1">전체</option>
                            </select>
                        </div>
                        <div class="search1">
                            <select name="search_troopno_cate" id="search_troopno_cate">
                                <option value="scDaeNum1_1">대번호</option>
                            </select>
                            <input type="text" name="search_troopno" id="search_troopno" style="width: 200px;">
                        </div>
                    </div>
					<a href="#lnk" onclick="fn_search_troop()">조회</a>
                </div>
            </form>
        </div>
        <div class="bottomSection">
            <div class="sections">
                <form action="">
                    <div class="memberList">
                        <h2>단위대 목록</h2>
                        <span id="troopcnt"></span>건 조회
                    </div>
                </form>
                <div class="memberViews">
                    <div class="viewHead">
                        <p>지구연합회</p>
                        <p>대번호</p>
                        <p style="min-width: 180px;">단위대명</p>
                        <p>스카우트구분</p>
                        <p>단위대구분</p>
                        <p>최종대활동년도</p>
                        <p>최종활동년도 남자대원수</p>
                        <p>최종활동년도 여자대원수</p>
                        <p>최종활동년도 남자지도자수</p>
                        <p>최종활동년도 여자지도자수</p>
                    </div>
                    <ul id="troop_list">
                    </ul>
                </div>
            </div>
            <div class="sections right">
                <form action="">
                    <div class="memberList">
                        <h2>기본정보</h2>
                        <div class="basicInputs">
                            <div class="basicInput">
                                <p>연맹/지구</p>
                                <select name="ASSOCIATIONCODE" id="ASSOCIATIONCODE">
                                    <c:forEach var="association_list" items="${association_list}" varStatus="status">
	                                	<option value="${association_list.ASSOCIATIONCODE}">${association_list.ASSOCIATIONNAME}</option>
	                                </c:forEach>
                                </select>
                                <select name="PARENTTROOPNO" id="PARENTTROOPNO">
                                    <c:forEach var="unity_list" items="${unity_list}" varStatus="status">
										<option value="${unity_list.TROOPNO}" <c:if test="${unity_list.PARENTTROOPNO eq pictVO.search_unitycode}">selected</c:if>>${unity_list.TROOPNAME}</option>
									</c:forEach>
                                </select>
                            </div>
                            <div class="basicInput">
                                <p>등급</p>
                                <select name="TROOPLEVELCODE" id="TROOPLEVELCODE">
                                    <c:forEach var="trooplevel_list" items="${trooplevel_list}" varStatus="status">
										<option value="${trooplevel_list.TROOPLEVELCODE}">${trooplevel_list.TROOPLEVELNAME}</option>
									</c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="basicInputs">
                            <div class="basicInput">
                                <p>단위대구분</p>
                                <select name="TROOPCLSCODE1" id="TROOPCLSCODE1">
                                    <option value="">전체</option>
	                                <option value="01">학교대</option>
	                                <option value="02">지역대</option>
	                                <option value="03">동우회</option>
	                                <option value="04">특수대</option>
                                </select>
                                <select name="dae2" id="dae2">
                                    <option value="dae2_1">전체</option>
                                </select>
                            </div>
                            <div class="basicInput">
                                <p>스카우트구분</p>
                                <select name="SCOUTCLSCODE" id="SCOUTCLSCODE">
	                                <c:forEach var="scoutcls_list" items="${scoutcls_list}" varStatus="status">
										<option value="${scoutcls_list.SCOUTCLSCODE}">${scoutcls_list.SCOUTCLSNAME}</option>
									</c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="basicInputs">
                            <div class="basicInput">
                                <p>대번호</p>
                                <input type="text" name="DISPTROOPNO" id="DISPTROOPNO">
                            </div>
                            <div class="basicInput">
                                <p>결성일</p>
                                <input type="date" name="UNREGDAY" id="UNREGDAY" style="width: 140px;">
                            </div>
                        </div>
                        <div class="basicInputs">
                            <div class="basicInput">
                                <p>영문명</p>
                                <input type="text" name="ENGTROOPNAME" id="ENGTROOPNAME">
                            </div>
                        </div>
                        <div class="basicInputs" style="align-items: center;">
                            <div class="basicInput">
                                <p>단위대명</p>
                                <input type="text" name="TROOPNAME" id="TROOPNAME">
                            </div>
                            <span style="white-space: nowrap;">관할 교육청 : 없음</span>
                        </div>
                        <div class="basicInputs flex">
                            <p style="display: flex; justify-content: center; align-items: center;">주소</p>
                            <div class="zip">
                                <div class="zipBox">
                                    <input type="text" name="POSTCODE" id="POSTCODE" readonly>
                                    <a href="#lnk">우편번호</a>
                                    <input type="text" name="ADDR" id="ADDR" style="width: 300px;">
                                </div>
                            </div>
                        </div>
                        <div class="basicInputs">
                            <div class="basicInput">
                                <p>전화</p>
                                <input type="text" name="TELNO" id="TELNO">
                            </div>
                            <div class="basicInput">
                                <p>팩스</p>
                                <input type="text" name="FAXNO" id="FAXNO">
                            </div>
                        </div>
                        <div class="basicInputs">
                            <p>비고</p>
                            <textarea name="BIGO" id="BIGO" cols="30" rows="10"></textarea>
                        </div>
                    </div>
                    <div class="memberList basicBottom pd">
                        <div class="basicInput">
                            <p>등록</p>
                            <span>마이그레이션 | 2024-04-17 09:26</span>
                        </div>
                        <div class="basicInput">
                            <p>수정</p>
                            <span>한지현 | 2024-04-17 09:26</span>
                        </div>
                    </div>
                    <div class="memberList basicBottom grid4">
                        <div class="basicInput">
                            <p>최종등록년도</p>
                            <input type="text" name="LASTREGYEAR" id="LASTREGYEAR">
                        </div>
                        <div class="basicInput">
                            <p>대원수</p>
                            <input type="text" name="SCOUTCNT" id="SCOUTCNT">
                        </div>
                        <div class="basicInput">
                            <p>남자</p>
                            <input type="text" name="SCOUTMCNT" id="SCOUTMCNT">
                        </div>
                        <div class="basicInput">
                            <p>여자</p>
                            <input type="text" name="SCOUTWCNT" id="SCOUTWCNT">
                        </div>
                    </div>
                    <div class="memberList basicBottom grid4">
                        <div class="basicInput">
                            <p>최종등록일</p>
                            <input type="text" name="UPDATEDATE" id="UPDATEDATE">
                        </div>
                        <div class="basicInput">
                            <p>지도자수</p>
                            <input type="text" name="LEADERCNT" id="LEADERCNT">
                        </div>
                        <div class="basicInput">
                            <p>남자</p>
                            <input type="text" name="LEADERMCNT" id="LEADERMCNT">
                        </div>
                        <div class="basicInput">
                            <p>여자</p>
                            <input type="text" name="LEADERWCNT" id="LEADERWCNT">
                        </div>
                    </div>
                </form>
                <p class="listTit">관리지도자</p>
                <div class="memberViews right join">
                    <div class="viewHead">
                        <p>No</p>
                        <p>회원번호</p>
                        <p>지도자직책</p>
                        <p>성명</p>
                        <p>단위대직책</p>
                        <p>집전화</p>
                        <p>사무실전화</p>
                        <p></p>
                        <p></p>
                        <p></p>
                        <p></p>
                        <p></p>
                        <p></p>
                        <p></p>
                    </div>
                    <ul>
                        <li>
                            <p>1234567</p>
                        </li>
                    </ul>
                </div>
                <p class="listTit">연소지도자</p>
                <div class="memberViews right join">
                    <div class="viewHead">
                        <p>No</p>
                        <p>회원번호</p>
                        <p>지도자직책</p>
                        <p>성명</p>
                        <p>단위대직책</p>
                        <p>집전화</p>
                        <p>사무실전화</p>
                        <p></p>
                        <p></p>
                        <p></p>
                        <p></p>
                        <p></p>
                        <p></p>
                        <p></p>
                    </div>
                    <ul>
                        <li>
                            <p>1234567</p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <script>
	    $(document).ready(function(){
	   	  if('${pictVO.search_level eq null || pictVO.search_level eq undefined || pictVO.search_level eq ""}'){

			$('#search_level').val("05")
	   	  }
	   	
	   	});
	   	
		function fn_get_unitylist(){
			var param = {
					associationcode : $('#search_associationcode').val(),
			}
			$.ajax({
				url : "/get_unity_list"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : false
				, success : function(data, status, xhr) {
					console.log(data.list)
					console.log("성공")
					
					var html ="";
					
					if(data.list){
					
						var arr = data.list;
						$('#search_unitycode').children().remove();
						$('#PARENTTROOPNO').children().remove();
						for(var i=0; i<arr.length; i++){
							
							html += '<option value="'+ arr[i].troopno +'">'+ arr[i].troopname +'</option>'
							
						}
					$('#search_unitycode').append(html)
					$('#PARENTTROOPNO').append(html)
					}
					
					
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
		}
		function fn_search_troop(){
			var param = {
				associationcode : $('#search_associationcode').val(),//연맹
				parenttroopno : $('#search_unitycode').val(),	//지구
				//여기에 관할교육청드감
				trooplevelcode : $('#search_level').val(),	//등급
				scoutclscode : $('#search_scoutcls').val(),//스카우트구분

				troopclscode : $('#search_troopcls').val(),	//단위대구분
				troopclscode2 : $('#search_troopcls2').val(),	//단위대구분2
				search_troopno_cate : $('#search_troopno_cate').val(),	//대번호, 단위대명 검색
				search_troopno : $('#search_troopno').val()	//검색어
			}

			$.ajax({
				url : "/get_troop_list"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : false
				, success : function(data, status, xhr) {
					console.log(data)
					
					
					if(data.list){
						var arr = data.list
						var html = "";
						$('#troop_list').children().remove();
						$('#troopcnt').text(arr.length)
						for(var i=0; i<arr.length; i++){
							html += '<li onclick="fn_troop_info('+ arr[i].troopno+')">'+
								'<p>' + arr[i].unity + '</p>' +
								'<p>' + arr[i].disptroopno + '</p>'+
								'<p style="min-width: 180px; text-align: center;">' + arr[i].troopname + '</p>'+
								'<p>' + arr[i].scoutclsname + '</p>'+
								'<p>' + arr[i].troopclsname + '</p>'+
								'<p>' + arr[i].lastregyear + '</p>'+
								'<p>' + arr[i].scoutmcnt + '</p>'+
								'<p>' + arr[i].scoutwcnt + '</p>'+
								'<p>' + arr[i].leadermcnt + '</p>'+
								'<p>' + arr[i].leaderwcnt + '</p>'+
								'</li>'
						}
						$('#troop_list').append(html)
					}
					else{
						console.log("조회결과가 없습니다.")
					}
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
		}
		function fn_troop_info(troopno){
			console.log(troopno)
			var param = {
				troopno : troopno
			}

			$.ajax({
				url : "/get_troop_info"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : false
				, success : function(data, status, xhr) {
					console.log(data)

					if(data.rst){
						var result = data.rst
						$('#ASSOCIATIONCODE').val(result.associationcode)
						$('#PARENTTROOPNO').val(result.parenttroopno)
						$('#TROOPLEVELCODE').val(result.trooplevelcode)
						$('#TROOPCLSCODE1').val(result.troopclscode1)
						$('#TROOPCLSCODE2').val(result.troopclscode2)
						$('#SCOUTCLSCODE').val(result.scoutclscode)
						$('#DISPTROOPNO').val(result.disptroopno)
						$('#UNREGDAY').val(result.unregday)
						$('#ENGTROOPNAME').val(result.engtroopname)
						$('#TROOPNAME').val(result.troopname)
						$('#POSTCODE').val(result.postcode)
						$('#ADDR').val(result.addr)
						$('#TELNO').val(result.telno)
						$('#FAXNO').val(result.faxno)
						$('#BIGO').text(result.bigo)
						$('#LASTREGYEAR').val(result.lastregyear)
						$('#SCOUTCNT').val(Number(result.scoutmcnt) + Number(result.scoutwcnt))
						$('#SCOUTMCNT').val(Number(result.scoutmcnt))
						$('#SCOUTWCNT').val(Number(result.scoutwcnt))
						$('#UPDATEDATE').val(result.updatedate)
						$('#LEADERCNT').val(Number(result.leadermcnt) + Number(result.leaderwcnt))
						$('#LEADERMCNT').val(Number(result.leadermcnt))
						$('#LEADERWCNT').val(Number(result.leaderwcnt))

					}
					else{
						console.log("조회결과가 없습니다.")
					}
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
		}
	</script>

</html>

