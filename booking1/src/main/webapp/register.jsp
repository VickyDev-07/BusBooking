<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register page!!!</title>
</head>
<body bgcolor="lightGreen">
	<h1>Welcome to bus ticket bookings!!!</h1>
	<b>Create account</b>
	<form action="registerservlet" method="post">
		<input type="text" name="user" placeholder="username"
			required="required"><br> <input type="password"
			name="pass1" placeholder="new password" required="required"
			style="width: 153px;"><br> <input type="password"
			name="pass2" placeholder="confirm password" required="required"
			style="width: 153px;"><br> <input type="submit"
			value="Register">
	</form>
</body>
</html>