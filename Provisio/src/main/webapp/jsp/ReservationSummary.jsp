<!-- 

-->
<%@page import="beans.ExistingReservation"%>
<%@page language="java" contentType="text/html"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<jsp:useBean id="dataManager" scope="application"
	class="model.DataManager" />
<%
String base = (String) application.getAttribute("base");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Search Outcome</title>
<link rel="stylesheet" href="./css/registrationSummary.css"
	type="text/css" />
</head>
<body>
	<%-- <jsp:include page="TopMenu.jsp" flush="true"/> --%>
	<%-- <jsp:include page="LeftMenu.jsp" flush="true"/> --%>
	<%
	boolean amenitiesSelected= false; 
		boolean firstPass = true; 
		
		String reservationID = request.getParameter("reservationID");
		
		if (reservationID != null && !reservationID.trim().equals("")) {
	%>
	<div class="content">
		<h2>Search results</h2>
		<table>
			<tr>
				<th>Reservation Number</th>
				<th>Checkin</th>
				<th>Checkout</th>
				<th>Number of Guests</th>
				<th>Total</th>
			</tr>
			<%
			ArrayList<ExistingReservation> reservations = dataManager.getReservation(reservationID);
				Iterator<ExistingReservation> iterator = reservations.iterator();
				while (iterator.hasNext()) {
					ExistingReservation reservation = (ExistingReservation) iterator.next();
					//           String pId = book.getId();
					if (firstPass == true) {
			%>
			<tr>
				<td><%=reservation.getReservationID()%></td>
				<td><%=reservation.getReservationID()%></td>
				<td><%=reservation.getCheckoutDate()%></td>
				<td><%=reservation.getNumberOfGuests()%></td>
				<td><%=reservation.getTotal()%></td>

			</tr>

		</table>

		<%
		firstPass = false;
		} else {

			amenitiesSelected = true;
		%>
			<table>
				<th>Amenity</th>
				<th>Price</th>

			<%
			}
			%> 
			<tr>
				<td><%=reservation.getDescription()%></td>
				<td><%=reservation.getCost()%></td>
			</tr>
			
			<%
			}
			if (amenitiesSelected = true){
				%></table><%
			}
			%>
		
	</div>
	<%
	} else {
	%><p class="error">Reservation not found!</p>
	<%
	}
	%>
</body>
</html>