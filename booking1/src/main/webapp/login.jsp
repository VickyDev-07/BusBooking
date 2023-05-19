<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page!!!</title>
</head>
<body bgcolor="lightGreen">
	<form action="loginservlet" method="post">
		<h1 style="text-align: center; font-weight: bold;">Welcome to Bus
			Ticket Booking System</h1>
		<p align="center">
			<b>I know this UI is terrible please Ignore that, i'm sure you
				will get the best booking experience here!!!</b> <br>
		</p>
		<b>Login</b><br> <input type="text" name="user"
			placeholder="username" required="required"><br> <input
			type="password" name="pass" placeholder="password"
			required="required"><br> <input type="submit"
			value="Login">
	</form>
	<br>
	<b>Change password</b>
	<form action="forget.jsp">
		<input type="submit" value="Forget Password" style="width: 138px;">
	</form>
	<br>
	<b>New user create your account here</b>
	<form action="register.jsp">
		<input type="submit" value="Register" style="width: 138px;">
	</form>
</body>
</html>