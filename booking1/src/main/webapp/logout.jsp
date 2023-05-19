<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="lightGreen">
	<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
   session.invalidate();
%>
	<h1>Thanks for choosing us!!! you are always welcome to this
		site!!!</h1>

	<form action="login.jsp" method="post">
		<input type="submit" value="Login">
	</form>
</body>
</html>