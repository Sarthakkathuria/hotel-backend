<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="/save" method = "post">
		<input type = "text" id ="id" name = "id" placeholder="Enter Id">
		<input type = "text" id ="name" name = "name" placeholder="Enter name">
		<input type = "text" id ="distance" name = "distance" placeholder="Enter distance">
		<input type = "text" id ="location" name = "location" placeholder="Enter location">
		<input type = "text" id ="price" name = "price" placeholder="Enter price">
		<input type = "text" id ="img" name = "img" placeholder="Enter Image Url">
		<button type = "submit"> SAVE</button>
	</form>
</body>
</html>