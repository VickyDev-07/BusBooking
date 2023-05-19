<%@page import="java.sql.ResultSet"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="lightGreen">
	<%!
   String busName=null;String cityFrom=null;String cityTo=null;String busTime=null;
   String busToTime=null;String boarding=null;String dropping=null;String totalTime=null;
   String date=null;

%>

	<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
String user=(String)session.getAttribute("user");
if(user==null){
	response.sendRedirect("login.jsp");
}
     date=(String)session.getAttribute("date");
     DateTimeFormatter formatter=DateTimeFormatter.ofPattern("yyyy-MM-dd");
     LocalDate dt1=LocalDate.parse(date,formatter);
     dt1=dt1.plusDays(1);
     
     ResultSet rs1=(ResultSet)session.getAttribute("resultset1");
     while(rs1.next()) {
			busName=rs1.getString(2);
			cityTo=rs1.getString(3);
			cityFrom=rs1.getString(4);
			busTime=rs1.getString(5);
			busToTime=rs1.getString(6);
			boarding=rs1.getString(8);
			dropping=rs1.getString(7);
			totalTime=rs1.getString(9);
			
			out.print("<form action=booking.jsp method=get>");
			out.print("<b>"+busName+"</b>"+"<br>");
			out.print(cityFrom+" to  "+cityTo+"<br>");
		    out.print("Boarding Point : "+boarding+"("+date+" & "+busTime+")"+"<br>");
		    out.print("Dropping Point : "+dropping+"("+dt1+" & "+busToTime +")"+"   "+" Total Journey hrs : "+totalTime+"hrs"+"<br>");
		    out.print("<input type=hidden name=busname value="+busName+">"); 
		    out.print("<input type=hidden name=cityfrom value="+cityFrom+">"); 
		    out.print("<input type=hidden name=cityto value="+cityTo+">"); 
		    out.print("<input type=submit value=book>"+" Price = Rs.0/-(free!!!)");
			out.print("<br><br>");
			out.print("</form>");
		} 

%>
	<br>
	<%@include file="footer.jsp"%>
</body>
</html>