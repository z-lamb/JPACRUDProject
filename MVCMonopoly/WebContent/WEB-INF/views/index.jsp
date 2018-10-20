<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Monopoly Properties By Zach</title>
</head>
<body>
	<h2>Welcome to the Monopoly Property Generator</h2>
	<p>Select a property below to see all the details or create a new
		one</p>
	<form action="getLandById.do" method="GET">
		<input type="text" name="landId" /> <input type="submit"
			value="Find Property" />
	</form>
	<br />
	<form action="addLand.do" method="GET">
		<input type="submit" value="Add New Property" />
	</form>
	<h3>All Properties</h3>
	<c:forEach var="land" items="${land }">
		<p>
			<a href="getLandById.do?landId=${land.id }">${land.name }</a>
		</p>
	</c:forEach>
</body>
</html>