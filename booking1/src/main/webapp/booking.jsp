<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Bus Seat Layout</title>
<style>
.booked {
	background-color: red;
}

form {
	display: flex;
	flex-wrap: wrap;
	gap: 10px;
}

.seat-label {
	display: flex;
	align-items: center;
	margin-right: 10px;
}

.bus-row {
	display: flex;
	flex-wrap: wrap;
	gap: 10px;
}

.bus-row .seat-label {
	flex-basis: 20%;
}
</style>
</head>
<body bgcolor="lightGreen">
	<%
 response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
 String user=(String)session.getAttribute("user");
	if(user==null){
		response.sendRedirect("login.jsp");
	}
  String travels=request.getParameter("busname");
  String from=request.getParameter("cityfrom");
  String to=request.getParameter("cityto");
  session.setAttribute("travels", travels);
  session.setAttribute("from", from);
  session.setAttribute("to", to);
%>
	<h1>Select seat(s):</h1>
	<form action="confirmpage" method="get">
		<div class="bus-row">
			<div class="seat-label">
				<input type="checkbox" id="seat1" name="seats[]" value="seat1W">
				<label for="seat1">Seat 1W</label>
			</div>
			<div class="seat-label">
				<input type="checkbox" id="seat2" name="seats[]" value="seat2">
				<label for="seat2">Seat 2</label>
			</div>
			<div class="seat-label">
				<input type="checkbox" id="seat3" name="seats[]" value="seat3">
				<label for="seat3">Seat 3</label>
			</div>
			<div class="seat-label">
				<input type="checkbox" id="seat4" name="seats[]" value="seat4W">
				<label for="seat4">Seat 4W</label>
			</div>
			<br>
			<div class="seat-label">
				<input type="checkbox" id="seat5" name="seats[]" value="seat5W">
				<label for="seat5">Seat 5W</label>
			</div>
			<div class="seat-label">
				<input type="checkbox" id="seat6" name="seats[]" value="seat6">
				<label for="seat6">Seat 6</label>
			</div>
			<div class="seat-label">
				<input type="checkbox" id="seat7" name="seats[]" value="seat7">
				<label for="seat7">Seat 7</label>
			</div>
			<div class="seat-label">
				<input type="checkbox" id="seat8" name="seats[]" value="seat8W">
				<label for="seat8">Seat 8W</label>
			</div>
			<div class="seat-label">
				<input type="checkbox" id="seat9" name="seats[]" value="seat9W">
				<label for="seat9">Seat 9W</label>
			</div>
			<div class="seat-label">
				<input type="checkbox" id="seat10" name="seats[]" value="seat10">
				<label for="seat10">Seat 10</label>
			</div>
			<div class="seat-label">
				<input type="checkbox" id="seat11" name="seats[]" value="seat11">
				<label for="seat11">Seat 11</label>
			</div>
			<div class="seat-label">
				<input type="checkbox" id="seat12" name="seats[]" value="seat12W">
				<label for="seat12">Seat 12W</label>
			</div>
			<div class="seat-label">
				<input type="checkbox" id="seat13" name="seats[]" value="seat13W">
				<label for="seat13">Seat 13W</label>
			</div>
			<div class="seat-label">
				<input type="checkbox" id="seat14" name="seats[]" value="seat14">
				<label for="seat14">Seat 14</label>
			</div>
			<div class="seat-label">
				<input type="checkbox" id="seat15" name="seats[]" value="seat15">
				<label for="seat15">Seat 15</label>
			</div>
			<div class="seat-label">
				<input type="checkbox" id="seat16" name="seats[]" value="seat16W">
				<label for="seat16">Seat 16W</label>
			</div>
			<div class="seat-label">
				<input type="checkbox" id="seat17" name="seats[]" value="seat17W">
				<label for="seat17">Seat 17W</label>
			</div>
			<div class="seat-label">
				<input type="checkbox" id="seat18" name="seats[]" value="seat18">
				<label for="seat18">Seat 18</label>
			</div>
			<div class="seat-label">
				<input type="checkbox" id="seat19" name="seats[]" value="seat19">
				<label for="seat19">Seat 19</label>
			</div>
			<div class="seat-label">
				<input type="checkbox" id="seat20" name="seats[]" value="seat20W">
				<label for="seat20">Seat 20W</label>
			</div>
			<div class="seat-label">
				<input type="checkbox" id="seat21" name="seats[]" value="seat21W">
				<label for="seat21">Seat 21W</label>
			</div>
			<div class="seat-label">
				<input type="checkbox" id="seat22" name="seats[]" value="seat22">
				<label for="seat22">Seat 22</label>
			</div>
			<div class="seat-label">
				<input type="checkbox" id="seat23" name="seats[]" value="seat23">
				<label for="seat23">Seat 23</label>
			</div>
			<div class="seat-label">
				<input type="checkbox" id="seat24" name="seats[]" value="seat24W">
				<label for="seat24">Seat 24W</label>
			</div>
		</div>
		<input type="submit" value="Book Seats">
	</form>
	<br>
	<%@include file="footer.jsp"%>
</body>
</html>

