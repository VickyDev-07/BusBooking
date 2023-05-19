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
String user=(String)session.getAttribute("user");
if(user==null){
	response.sendRedirect("login.jsp");
}
%>
	<form action="buscheck" method="get">
		<h1>welcome ${user}!!!currently we are serving limited
			cities,definitely we will cover every cities as soon as possible.</h1>
		<label>City From:</label><select name="cityFrom" required="required"
			style="width: 150px;"><option value="Chennai">Chennai</option>
			<option value="Mayiladuthurai">Mayilduthurai</option>
			<option value="trichy">Trichy</option>
			<option value="Madurai">Madurai</option>
			<option value="Coimbatore">Coimbatore</option>
		</select><br> <label>City To: </label><select name="cityTo"
			required="required" style="width: 150px;"><option
				value="Chennai">Chennai</option>
			<option value="Mayiladuthurai">Mayilduthurai</option>
			<option value="trichy">Trichy</option>
			<option value="Madurai">Madurai</option>
			<option value="Coimbatore">Coimbatore</option>
		</select><br> <label>Date : </label><input type="date" name="date"
			required="required" style="width: 148px; height: 26px;"><br>
		<input type="submit" value="Check Buses">
	</form>
	<br>
	<form action="previous" method="get">
		<b>Check your previous Bookings Here</b><br> <input type="text"
			placeholder="Enter Username" name="bookings" required="required"><br>
		<input type="submit" value="Check">
	</form>
	<br>
	<form action="cancelticket" method="get">
		<b>Cancel your tickets Here</b><br> <input type="text"
			placeholder="Enter BookingID" name="bookingid"><br> <input
			type="submit" value="cancel tickets">
	</form>
	<br>
	<%@include file="footer.jsp"%>
</body>
</html>