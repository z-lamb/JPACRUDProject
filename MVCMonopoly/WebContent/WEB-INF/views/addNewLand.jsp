<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add A New Property</title>
</head>
<body>
	<c:choose>
		<c:when test="${! empty newLandFailure }">
			<p><c:out value="${newLandFailure }" /></p>
		</c:when>
	</c:choose>
	<p><a href="home.do">Home</a></p>
	<div>
		<h3>Add New Property</h3>
		<h4>Please provide the following details for your new Property:</h4>
		<form action="newLand.do" method="post">
			<label for="name">Name:</label> <input type="text" name="name" value="" /><br>
			<label for="color">Color:</label> 
			<select name="color">
				<option></option>
				<option selected value="NONE">None</option>
				<option value="LIGHT_BLUE">Light Blue</option>
				<option value="PINK">Pink</option>
				<option value="ORANGE">Orange</option>
				<option value="RED">Red</option>
				<option value="YELLOW">Yellow</option>
				<option value="GREEN">Green</option>
				<option value="BLUE">Blue</option>
			</select> <br />
			<label for="type">Type:</label> 
			<select name="type">
				<option></option>
				<option value="GO">GO</option>
				<option value="PROPERTY">Property</option>
				<option value="COMMUNITY_CHEST">Community Chest</option>
				<option value="TAX">Tax</option>
				<option value="RAILROAD">Railroad</option>
				<option value="CHANCE">Chance</option>
				<option value="JAIL">Jail</option>
				<option value="UTILITY">Utility</option>
				<option value="FREE_PARKING">Free Parking</option>
				<option value="GO_TO_JAIL">Go To Jail</option>
			</select> <br />
			<label for="purchasePrice">Purchase Price:</label> <input type="number" name="purchasePrice" /><br /> 
			<label for="rentPrice">Rent Price:</label> <input type="number" name="rentPrice" /><br /> 
			<label for="position">Position:</label><input type="number" name="position" /><br /> 
			<label for="numberOfHouses">Number Of Houses:</label> <input type="number" name="numberOfHouses" /><br>
			<label for="numberOfHotels">Number Of Hotels:</label> <input type="number" name="numberOfHotels" /><br>
			<label for="status">Status:</label>
			<select name="status">
				<option></option>
				<option value="OWNED">Owned</option>
				<option selected value="NOT_OWNED">Not Owned</option>
				<option value="MORTGATED">Mortgaged</option>
			</select> <br />
			<label for="description">Description:</label> <input type="text" name="description" /><br> 
			<input type="submit" value="Add" /> <br />
		</form>
	</div>
</body>
</html>