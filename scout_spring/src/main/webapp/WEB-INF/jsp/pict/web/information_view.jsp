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
        <div class="viewContainer">
            <div class="viewTop">
                <p>제목이 이곳에 들어갑니다</p>
                <span>2024-06-24</span>
            </div>
            <div class="viewBottom">
                <div class="viewBottomInner">
                    <p>asdfafsd</p>
                    <img src="/user_img/test.jpg" alt="">
                </div>
            </div>
            <div class="addFile">
                <a href="#lnk" download>
                    <img src="/user_img/file.png" alt="">
                    파일이름
                </a>
            </div>
            <div class="prevContainer">
                <a href="#lnk">목록</a>
            </div>
        </div>
    </div>
	<%@ include file="./include/footer.jsp" %>
</body>
</html>