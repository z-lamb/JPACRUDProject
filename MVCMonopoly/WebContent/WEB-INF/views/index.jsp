<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="css/siteStyles.css">
<title>Monopoly Properties By Zach</title>
</head>
<body>
	<h2>Welcome to the Monopoly Property Generator</h2>
	<p>Select a property below to see all the details, create a new
		one, or see details about groups of properties</p>
	<form action="getLandById.do" method="GET">
		<input type="text" name="landId" /> <input type="submit"
			value="Find Property by ID" />
	</form>
	<br />
	<form action="addLand.do" method="GET">
		<input type="submit" value="Add New Property" />
	</form>
	<h4>Find Properties by color and status</h4>
	<form action="landColorAndStatus.do" method="POST">
	<select name="color">
		<option></option>
		<option value="NONE">None</option>
		<option value="BROWN">Brown</option>
		<option value="LIGHT_BLUE">Light Blue</option>
		<option value="PINK">Pink</option>
		<option value="ORANGE">Orange</option>
		<option value="RED">Red</option>
		<option value="YELLOW">Yellow</option>
		<option value="GREEN">Green</option>
		<option value="BLUE">Blue</option>
	</select>
	<select name="status">
		<option></option>
		<option value="OWNED">Owned</option>
		<option value="NOT_OWNED">Not Owned</option>
		<option value="MORTGATED">Mortgaged</option>
	</select> <br />
		<input type="submit" value="Get Land By Color And Status" />
	</form>
	
	<h3>All Properties</h3>
	<c:forEach var="land" items="${land }">
		<p>
			<a href="getLandById.do?landId=${land.id }">${land.name }</a>
		</p>
	</c:forEach>
</body>
</html>