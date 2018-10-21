<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Land By Color And Status</title>
</head>
<body>
	<h2>Land By Color And Status</h2>
	<c:forEach var="land" items="${landByColorStatus }">
		<p>${land.name }</p>
		<p>${land.color }</p>
		<p>${land.status }</p>
		<hr />
	</c:forEach>
</body>
</html>