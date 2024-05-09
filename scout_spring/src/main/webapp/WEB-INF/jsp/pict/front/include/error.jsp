<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>

<div id="error">
	<h3>잠시 후 다시 확인해주세요!</h3>
	<p>
		지금 이 데이터와 연결할 수 없습니다.<br>
		문제를 해결하기 위해 열심히 노력하고 있습니다.<br>
		잠시 후 다시 확인해주세요.
	</p>
	<div class="errorButton">
		<button onclick="window.location.reload()"><img src="/front_img/back.png" alt="돌아가기">돌아가기</button>
	</div>
</div>