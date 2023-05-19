<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="lightGreen">
	<b>Change Password</b>
	<form action="forgetservlet" method="post">
		<input type="text" placeholder="username" name="user"
			required="required"><br> <input type="password"
			placeholder="new password" required="required" name="pass1"
			style="width: 153px;"><br> <input type="password"
			placeholder="confirm password" required="required" name="pass2"
			style="width: 153px;"><br> <input type="submit"
			value="Reset password">
	</form>
</body>
</html>