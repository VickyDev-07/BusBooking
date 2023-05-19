<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bus Details!!!</title>
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
     
     ResultSet rs=(ResultSet)session.getAttribute("resultset");
     while(rs.next()) {
    	    busName=rs.getString(2);
    	 	cityFrom=rs.getString(3);
    	 	cityTo=rs.getString(4);
    	 	busTime=rs.getString(5);
    	 	busToTime=rs.getString(6);
    	 	boarding=rs.getString(7);
    	 	dropping=rs.getString(8);
    	 	totalTime=rs.getString(9);
    	 	
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