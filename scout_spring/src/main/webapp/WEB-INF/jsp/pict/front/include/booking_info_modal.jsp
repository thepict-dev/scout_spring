<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn"	   uri="http://java.sun.com/jsp/jstl/functions"%>


<%
	pageContext.setAttribute("id", session.getAttribute("id"));
%>


<div id="bookingModal">
    <form action="" id="" name="" class="pwModalInner">
        <button type="button"><img src="/front_img/close2.png" alt=""></button>
        <p></p>
        <div class="pwInputs">
            <div class="pwInput">
                <p class="pwTit">사용목적</p>
				<span class="bindingText"></span>
            </div>
            <div class="pwInput" style="width: 100%;">
                <p class="pwTit">요청사항</p>
				<span class="bindingText" style="width: 100%; height: 200px;"></span>
            </div>
        </div>
    </form>
</div>
