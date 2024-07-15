<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<meta charset="ko">
	<%@ include file="./include/head.jsp" %>
	<body>
		<%@ include file="./include/header.jsp" %>
	    <div class="subWrapper">
	        <div class="subTop">
	            <h2>YOUTH HERO</h2>
	            <p>국내·외 재능과 잠재력을 가진<br>대한민국 청소년을 발굴해 미래의 인재로 육성합니다.</p>
	            <span>한국스카우트연맹에서는 국내·외 재능과 잠재력을 가진 대한민국 청소년을 발굴하여 미래의 인재로 육성하고자 2007년부터 Youth Hero상(자랑스러운 청소년 대상)을 제정 및 시행하고 있습니다.</span>
	        </div>
	        <div class="subContents">
	            <div class="flexContainer">
	                <h3 class="contentTitle">시상부문</h3>
	                <div class="contentDesc">
	                    <img src="/user_img/yourh1.png" alt="시상부문">
	                </div>
	            </div>
	            <div class="blockContainer">
	                <h3 class="contentTitle">역대 수상자</h3>
	                <div class="flexTab jamFlexTab youth">
	   
	                    <ul class="tabNav jamTab youth">
	                    	<c:forEach var="youth_group" items="${youth_group}" varStatus="status">
	                        	<li class="<c:if test='${pictVO.YEAR eq youth_group.YEAR}'>active</c:if>"><a href="#${youth_group.YEAR}" onclick="fn_youth('${youth_group.YEAR}')">${youth_group.YEAR}년</a></li>
	                        </c:forEach>
	                    </ul>
	                    <div class="tabInner active youth" id="youth_div">
	                        <ul class="contentDesc youth" id="youth_ul">
	
	                        </ul>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
		<%@ include file="./include/footer.jsp" %>
		<script>
			function fn_youth(year){
				var param = {}
				param.year = year;
				$('#youth_ul').children().remove();
				$.ajax({
					url : "/get_youthhero"
					, type : "POST"
					, data : JSON.stringify(param)
					, contentType : "application/json"
					, async : true
					, success : function(data, status, xhr) {
						var list = data.youth_list
						
						if(list.length > 0){
							var html = ""
							for(var i=0; i<list.length; i++){
								html +='<li>'+
				                '<img src="http://scout.thepict.co.kr'+list[i].picimg+'" alt="역대 수상자">'+
				                '<div class="texts">'+
				                '<p>'+list[i].kname+'</p>'+
				                '<span>'+list[i].year+'</span>'+
				                '</div>'+
				            	'</li>'		
							}
							$('#youth_div').addClass("active")
							$('#youth_ul').append(html)
						}
						else{
							
						}
						
					},
					error : function (err){
						
					}
				})
				
			}
		</script>
	</body>
</html>
