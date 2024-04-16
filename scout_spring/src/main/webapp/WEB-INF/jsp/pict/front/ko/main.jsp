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
	        <form action="" id="search_fm_memberno" name="search_fm_memberno" method="get" class="search-box">        
	            <div class="search">
	                <div class="wholeSelect">
	                    <p>조회조건</p>
	                    <select name="search" id="search">
	                        <option value="1">전체</option>
	                    </select>
	                </div>
	                <div class="memNumber">
	                    <p>회원번호</p>
	                    <input type="text" name="search_memberno_se" id="search_memberno_se" value="${pictVO.search_memberno_se}" onkeypress="if(event.keyCode == 13){search_list();}">
	                </div>  
	            </div>
	            <div>
					<a href="#lnk" onclick="search_list_memberno()">조회</a>
	            </div>
	        </form>
	    </div>
	    <div class="bottomSection">
	        <div class="sections">
	            <form action="" id="search_fm" name="search_fm" method="get" class="search-box">
	            	<input type="hidden" id="search_memberno" name="search_memberno" value="${pictVO.search_memberno}"/>
	                <div class="memberList">
	                    <h2>통합회원 조회/목록</h2>
	                    <div class="searchTable">
	                        <div class="searchInput">
	                            <p>법정생년</p>
	                            <input type="text" name="search_birthday" id="search_birthday" value="${pictVO.search_birthday}">
	                        </div>
	                        <div class="searchInput">
	                            <p>가입이력</p>
	                            <select name="search_history" id="search_history">
	                                <option value="" <c:if test="${pictVO.search_history eq ''}">selected</c:if>>-----</option>
	                                <option value="1" <c:if test="${pictVO.search_history eq '1'}">selected</c:if>>대원</option>
	                                <option value="2" <c:if test="${pictVO.search_history eq '2'}">selected</c:if>>지도자</option>
	                                <option value="3" <c:if test="${pictVO.search_history eq '3'}">selected</c:if>>평생회원</option>
	                            </select>
	                        </div>
	                        <div class="searchInput">
	                            <p>성명</p>
	                            <input type="text" name="search_kname" id="search_kname" value="${pictVO.search_kname}">
	                        </div>
	                        <div class="searchInput">
	                            <p>회원구분</p>
	                            <select name="search_memclscode" id="search_memclscode">
	                                <option value="1" <c:if test="${pictVO.search_memclscode eq '1'}">selected</c:if>>개인</option>
	                                <option value="2" <c:if test="${pictVO.search_memclscode eq '2'}">selected</c:if>>법인</option>
	                                <option value="3" <c:if test="${pictVO.search_memclscode eq '3'}">selected</c:if>>단체</option>
	                            </select>
	                        </div>
	                        <div class="searchInput">
	                            <p>회원등급</p>
	                            <select name="search_memgradecode" id="search_memgradecode">
	                                <option value="" <c:if test="${pictVO.search_memgradecode eq ''}">selected</c:if>>대원/지도자</option>
	                                <option value="1" <c:if test="${pictVO.search_memgradecode eq '1'}">selected</c:if>>행사회원</option>
	                                <option value="2" <c:if test="${pictVO.search_memgradecode eq '2'}">selected</c:if>>후원회원</option>
	                            </select>
	                        </div>
	                    </div>
	                    <div class="dateSreach">
	                        <p>등록일</p>
	                        <input type="date" id="search_start" name="search_start" value="${pictVO.search_start}"/>
	                        -
	                        <input type="date" id="search_end" name="search_end" value="${pictVO.search_end}"/>
	                    </div>
	                    <div class="btnWrap">
	                        <a href="#lnk" onclick="search_list()">조회</a>
	                    </div>
	                </div>
	            </form>
	            <div class="memberViews">
	                <div class="viewHead">
	                    <p>회원번호</p>
	                    <p>회원명</p>
	                    <p>법정생년월일</p>
	                    <p>회원구분</p>
	                    <p>회원등급</p>
	                    <p>대원여부</p>
	                    <p>지도자여부</p>
	                    <p>평생회원여부</p>
	                    <p>전종여부</p>
	                    
	                </div>
	                <ul>
	                	<c:forEach var="resultList" items="${resultList}" varStatus="status">
	                     <li onclick="fn_info('${resultList.MEMBERNO}', '${resultList.KNAME}', '${resultList.TROOPSCOUTY}', '${resultList.TROOPLEADERY}')">
	                         <p>${resultList.MEMBERNO}</p>
	                         <p>${resultList.KNAME}</p>
	                         <p>${resultList.BIRTHDAY}</p>
	                         <p>
	                         	<c:if test='${resultList.MEMCLSCODE eq "1"}'>개인</c:if>
	                         	<c:if test='${resultList.MEMCLSCODE eq "2"}'>법인</c:if>
	                         	<c:if test='${resultList.MEMCLSCODE eq "3"}'>단체</c:if>
                         	</p>
	                         <p>
	                         	<c:choose>
		                         	<c:when test='${resultList.MEMGRADECODE eq "1"}'>행사회원</c:when>
		                         	<c:when test='${resultList.MEMGRADECODE eq "2"}'>후원회원</c:when>
		                         	<c:otherwise>대원/지도자</c:otherwise>
	                         	</c:choose>
                         	</p>
	                         <p>
	                         	<c:if test='${resultList.TROOPSCOUTY eq "Y"}'>Y</c:if>
	                         	<c:if test='${resultList.TROOPSCOUTY ne "Y"}'>N</c:if>
                         	</p>
	                         <p>
	                         	<c:if test='${resultList.TROOPLEADERY eq "Y"}'>Y</c:if>
	                         	<c:if test='${resultList.TROOPLEADERY ne "Y"}'>N</c:if>
                         	</p>
	                         <p>
	                         	<c:if test='${resultList.LIFE eq "Y"}'>Y</c:if>
	                         	<c:if test='${resultList.LIFE ne "Y"}'>N</c:if>
                         	</p>
	                         <p>
	                         	<c:if test='${resultList.LEADER eq "Y"}'>Y</c:if>
	                         	<c:if test='${resultList.LEADER ne "Y"}'>N</c:if>
                         	</p>
	                         
	                     </li>
	                    </c:forEach>
	                </ul>
	            </div>
	        </div>
	        <div class="sections right">
                <div class="memberList">
                    <h2>기본정보</h2>
                    <div class="basicInputs">
                        <div class="basicInput">
                            <p>회원번호</p>
                            <span id="MEMBERNO"></span>
                        </div>
                        <div class="basicInput">
                            <p>회원구분</p>
                            <select name="MEMCLSCODE" id="MEMCLSCODE">
								<option value="1">개인</option>
								<option value="2">법인</option>
								<option value="3">단체</option>
                            </select>
                        </div>
                        <div class="basicInput">
                            <p>회원등급</p>
                            <select name="MEMGRADECODE" id="MEMGRADECODE">
                                <option value="0">대원/지도자</option>
                                <option value="1">후원회원</option>
                                <option value="2">행사회원</option>
                            </select>
                        </div>
                    </div>
                    <div class="basicInputs">
                        <div class="basicInput">
                            <p>생년월일</p>
                            <input type="text" name="BIRTHDAY" id="BIRTHDAY">
                        </div>
                        <div class="basicInput">
                            <p>전종여부</p>
                            <select name="LEADER" id="LEADER">
                                <option value="N">----</option>
								<option value="Y">전종</option>
                            </select>
                        </div>
                    </div>
                    <div class="basicInputs">
                        <div class="basicInput">
                            <p>성명</p>
                            <span>한글</span>
                            <input type="text" name="KNAME" id="KNAME">
                            <span>영문</span>
                            <input type="text" name="ENAME" id="ENAME">
                            <input type="radio" name="SEX" value="M" id="SEX_M">
                            <label for="man">남</label>
                            <input type="radio" name="SEX" value="W" id="SEX_W">
                            <label for="woman">여</label>
                        </div>
                    </div>
                    <div class="basicInputs">
                        <div class="basicInput">
                            <p>휴대전화</p>
                            <input type="text" name="MOBILE" id="MOBILE">
                        </div>
                        <div class="basicInput">
                            <p>이메일</p>
                            <input type="text" name="EMAIL" id="EMAIL" style="width: 150px;">
                        </div>
                    </div>
                    <div class="basicInputs flex">
                        <p style="display: flex; justify-content: center; align-items: center;">주소</p>
                        <div class="zip">
                            <div class="zipBox">
                                <input type="text" name="HPOSTCODE" id="HPOSTCODE" readonly>
                                <a href="#lnk">우편번호</a>
                                <input type="checkbox" name="get_post" id="get_post">
                                <label for="get_post">우편물수령지</label>
                            </div>
                            <div class="addBox">
                                <input type="text" name="HADDR" id="HADDR">
                            </div>
                        </div>
                        <div class="msgJob">
                            <div class="msg">
                                <p>수신여부</p>
                                <input type="checkbox" name="SMSYN" id="SMSYN">
                                <label for="SMSYN">SMS</label>
                                <input type="checkbox" name="EMAILYN" id="EMAILYN">
                                <label for="EMAILYN">Email</label>
                            </div>
                            <div class="msg job">
                                <p>직업</p>
                                <select name="JOBCODE" id="JOBCODE">
	                                <option value="">----</option>
									<c:forEach var="job_list" items="${job_list}" varStatus="status">
                                    	<option value="${job_list.JOBCODE}">${job_list.JOBNAME}</option>	
                                   	</c:forEach>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <i></i>
                <div class="memberList basicBottom">
                    <div class="basicInput">
                        <p>지도자학교/단체</p>
                        <span>(일반)</span>
                    </div>
                    <div class="basicInput">
                        <p>승진가산점</p>
                        <input type="text" name="additional" id="additional">
                    </div>
                    <div class="basicInput">
                        <p>훈련과정</p>
                        <span></span>
                    </div>
                    <div class="basicInput">
                        <p>전문과정</p>
                        <span></span>
                    </div>
                    <div class="basicInput">
                        <p>자격증</p>
                        <span></span>
                    </div>
                    <div class="basicInput">
                        <p>평생회원</p>
                        <span></span>
                    </div>
                </div>
                <i></i>
                <div class="memberList basicBottom2">
                    <div class="basicInput">
                        <p>대원학교/단체</p>
                        <input type="text" name="group" id="group" readonly>
                        <a href="#lnk">학교/단체검색</a>
                        <input type="text" name="group1" id="group1" style="width: 30px;">
                        학년
                        <input type="text" name="group2" id="group2" style="width: 30px;">
                        반
                    </div>
                    <div class="basicInputs" style="margin-top: 10px;">
                        <div class="basicInput">
                            <p>대원진보</p>
                            <span></span>
                        </div>
                        <div class="basicInput">
                            <p>대원기능장</p>
                            <span></span>
                        </div>
                    </div>
                </div>
                <i></i>
                <!-- 
                <div class="memberList basicBottom">
                    <div class="basicInput">
                        <p>등록</p>
                        <span>상급</span>
                    </div>
                    <div class="basicInput">
                        <p>수정</p>
                        <span>상급</span>
                    </div>
                </div>
					-->
				<ul class="listNav">
					<li class="active">지도자</li>
					<li>대원</li>
				</ul>
	            <div class="memberViews right active" id="div_leader">
	                <div class="viewHead">
	                    <p>No(지도자)</p>
	                    <p>관리자지도여부</p>
	                    <p>년도</p>
	                    <p>연맹</p>
	                    <p>연합회</p>
	                    <p>단위대</p>
	                    <p>직책1</p>
	                    <p>직책2</p>
	                    <p>학교</p>
	                </div>
	                <ul id="leader_list"></ul>
	            </div>
	            <div class="memberViews right" id="div_scout">
	                <div class="viewHead">
	                    <p>No(대원)</p>
	                    <p>년도</p>
	                    <p>연맹</p>
	                    <p>연합회</p>
	                    <p>단위대</p>
	                    <p>학교</p>
	                    <p>구분</p>
	                    <p>학년</p>
	                </div>
	                <ul id="scout_list"></ul>
	            </div>
	        </div>
	    </div>
	</div>

	<script>
		function search_list_memberno(){
			$("#search_fm_memberno").attr("action", "/front/ko/main");
			$("#search_fm_memberno").submit();

			
		}
		function search_list(){

			$("#search_fm").attr("action", "/front/ko/main");
			$("#search_fm").submit();
		}
		function fn_info(memberno, kname, scouty, leadery){
			var param = {
				memberno : memberno,
				kname : kname,
				scouty : scouty,
				leadery : leadery,
			}

			
			$.ajax({
				url : "/get_per_info"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, async : false
				, success : function(data, status, xhr) {
					console.log(data)
					console.log("성공")
					$('#MEMBERNO').text(data.info.memberno)
					$('#MEMCLSCODE').val(data.info.memclscode)
					
					var memgradecode = "";
					if(data.info.memgradecode == null || data.info.memgradecode == undefined || data.info.memgradecode == "null") memgradecode = "0"
					else memgradecode = data.info.memgradecode
					$('#MEMGRADECODE').val(memgradecode)
					$('#BIRTHDAY').val(data.info.birthday)
					$('#LEADER').val(data.info.leader)
					$('#KNAME').val(data.info.kname)
					$('#ENAME').val(data.info.ename)
					
					if(data.info.sex == "M") $(":radio[id='SEX_M']").attr("checked", true);
					else $(":radio[id='SEX_W']").attr("checked", true);
					
					$("#MOBILE").val(data.info.mobile)
					$("EMAIL").val(data.info.email)
					$("#HPOSTCODE").val(data.info.hpostcode)
					$("#HADDR").val(data.info.haddr)
					$("#JOBCODE").val(data.info.jobcode)
					
					if(data.info.smsyn == "Y") $("input:checkbox[id=SMSYN]").attr("checked", true);
					if(data.info.emailyn == "Y") $("input:checkbox[id=EMAILYN]").attr("checked", true);
					
					
					var html ="";
					var arr = data.list;
					for(var i=0; i<arr.length; i++){
						
						html += '<li>'+
							'<p>' + Number(i+1) + '</p>' +
							'<p>' + arr[i].adminy + '</p>'+
							'<p>' + arr[i].year + '</p>'+
							'<p>' + arr[i].associationname + '</p>'+
							'<p>' + arr[i].troopname + '</p>'+
							'<p>' + arr[i].unity + '</p>'+
							'<p>' + arr[i].leaderposition + '</p>'+
							'<p>' + arr[i].leaderpositionname + '</p>'+
							'<p>' + arr[i].orgname  + '</p>'+
							'</li>'
						
					}
					console.log(html)
					$('#leader_list').children().remove();
					$('#leader_list').append(html)
					
				}
				, error : function(xhr, status, error) {
					console.log(xhr)
					console.log("에러")
				}
			});
		}
	</script>

</html>