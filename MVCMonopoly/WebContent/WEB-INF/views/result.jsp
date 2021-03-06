<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="css/siteStyles.css">
<title>Property Details</title>
</head>
<body>
	
	<c:choose>
		<c:when test="${! empty deleteMessage }">
			<p><strong><c:out value="${deleteMessage}" /></strong></p>
		</c:when>
	</c:choose>

	<a href="home.do">Home</a>
	<h2>Property Details</h2>
	<div>
		<h4>
			Name: <em>${land.name }</em>
		</h4>
		<p>Color: ${land.color }</p>
		<p>Type: ${land.type }</p>
		<p>Purchase Price: ${land.purchasePrice }</p>
		<p>Rent Price: ${land.rentPrice }</p>
		<p>Position on Board: ${land.position }</p>
		<p>Number Of Houses: ${land.numberOfHouses }</p>
		<p>Number Of Hotels: ${land.numberOfHotels }</p>
		<p>Occupancy Status: ${land.status }</p>
		<p>Description: ${land.description }</p>
	</div>

	<form action="getLandForUpdate.do?landId=${land.id}" method="post">
		<input type="submit" value="Edit Property" />
	</form>
	<form action="deleteLand.do?landId=${land.id}" method="post">
		<input type="submit" value="Delete" />
	</form>

</body>
</html>