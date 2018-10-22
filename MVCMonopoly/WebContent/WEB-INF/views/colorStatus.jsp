<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="css/siteStyles.css">
<title>Land By Color And Status</title>
</head>
<body>
	<p><a href="home.do">Home</a></p>
	<h2>Land By Color And Status</h2>
	<c:forEach var="land" items="${landByColorStatus }">
		<p>${land.name }</p>
		<p>${land.color }</p>
		<p>${land.status }</p>
		<hr />
	</c:forEach>
</body>
</html>