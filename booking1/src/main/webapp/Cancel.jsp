<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="red">
	<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
String user=(String)session.getAttribute("user");
if(user==null){
	response.sendRedirect("login.jsp");
}
%>
	<h3>Your Booking has been Cancelled!!!</h3>

	<br>
	<%@include file="footer.jsp"%>

</body>
</html>