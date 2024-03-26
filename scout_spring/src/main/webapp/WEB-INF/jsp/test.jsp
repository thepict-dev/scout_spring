<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<span>
		<c:forEach var="board_list" items="${board_list}" varStatus="status">
			DB에서 가져온 해시값들 : ${board_list.password}<br>
		</c:forEach>
		
	</span>
</body>
</html>