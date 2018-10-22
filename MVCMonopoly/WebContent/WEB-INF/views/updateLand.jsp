<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Land</title>
</head>
<body>
	<p><a href="home.do">Home</a></p>
	<div>
		<h3>Add Update Property</h3>
		<h4>Please provide the following details to update your Property:</h4>
		<form action="updateLand.do?landId=${land.id }" method="post">
			<label for="name">Name:</label> <input type="text" name="name" value="${land.name }" /><br>
			<label for="color">Color:</label> 
			<select name="color">
				<option selected value="NONE">None</option>
				<option value="BROWN">Brown</option>
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
			<label for="purchasePrice">Purchase Price:</label> <input type="number" name="purchasePrice" value="${land.purchasePrice }" /><br /> 
			<label for="rentPrice">Rent Price:</label> <input type="number" name="rentPrice" value="${land.rentPrice }" /><br /> 
			<label for="position">Position:</label><input type="number" name="position" value="${land.position }" /><br /> 
			<label for="numberOfHouses">Number Of Houses:</label> <input type="number" name="numberOfHouses" value="${land.numberOfHouses }" /><br>
			<label for="numberOfHotels">Number Of Hotels:</label> <input type="number" name="numberOfHotels" value="${land.numberOfHotels }" /><br>
			<label for="status">Status:</label>
			<select name="status">
				<option value="OWNED">Owned</option>
				<option value="NOT_OWNED">Not Owned</option>
				<option value="MORTGATED">Mortgaged</option>
			</select> <br />
			<label for="description">Description:</label> <input type="text" name="description" value="${land.description }" /><br> 
			<input type="submit" value="Update" /> <br />
		</form>
	</div>
</body>
</html>