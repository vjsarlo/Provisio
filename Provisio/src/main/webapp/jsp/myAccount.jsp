<%@page import="model.AccountLookup"%>
<%@page import="beans.Account"%>
<%@page import="beans.LoginDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="beans.ExistingReservation"%>

<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:useBean id="account" class="beans.Account" />
<jsp:useBean id="dataManager" scope="application"
	class="model.DataManager" />

<jsp:setProperty property="*" name="account" />
<jsp:setProperty property="*" name="reservations" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="/Provisio/css/homepre.css">
<title>My Account</title>

</head>

<body style="background-color: #d9d9d9;">
	<!-- CONTAINER DIV START -->
	<div class="page-container">
		<div class="container" id="content-wrap">
			<!-- HEADER (Pre-Login) START -->
			<!-- MAIN HEADER START -->
			<%
			if (session.getAttribute("session") != "TRUE") {
			%>
			<%@include file="header_pre.jsp"%>
			<%
			} else {
			%>
			<%@include file="header_post.jsp"%>
			<%
			}

			// 		System.out.println("In myAccount.jsp customerID: "+ customerID);
			%>
			<!-- MAIN PHOTO START -->
			<div class="main-photo-div">
				<img class="main-photo" src="/Provisio/images/Photos/MainPhoto.jpeg" />
			</div>
			<!-- MAIN PHOTO END -->

			<!-- MAIN SECTION START -->
			<div class="main-section-div-account">
				<div class="main-section-text">My Account Details</div>
				<div>
					<%
					String custId = session.getAttribute("customerID").toString();
					System.out.println("custId: " + custId);
					account = dataManager.getAccountInfo(custId);
					%>
					<div class="white-box-2">
						<div class="white-box-text">
							<%=account.getFirstName() + " " + account.getLastName()%>
						</div>
					</div>
					<div class="white-box-2">
						<div class="white-box-text">
							<%=account.getUsername()%>
						</div>
					</div>
				</div>
				<div class="white-box-1">
					<div class="white-box-text">
						TOTAL POINTS ACCRUED :
						<%=account.getPoints()%>
					</div>
				</div>
				<div class="main-section-text">My Reservations</div>
				<div>
					<%
					boolean amenitiesSelected = false;
					boolean firstPass = true;

					if (custId != null && !custId.trim().equals("")) {
					%>

					<%
					Integer lastReservationNumber = null;

					ArrayList<ExistingReservation> reservations = dataManager.getReservation(custId);
					Iterator<ExistingReservation> iterator = reservations.iterator();
					while (iterator.hasNext()) {
						ExistingReservation reservation = (ExistingReservation) iterator.next();
						if (lastReservationNumber != reservation.getReservationID()) {
							lastReservationNumber = reservation.getReservationID();
					%>
					<table>
						<tr>
							<th>Reservation Number</th>
							<th>Checkin</th>
							<th>Checkout</th>
							<th>Number of Guests</th>
							<th>Total</th>
							<th>Points</th>
							<th>Location</th>
						</tr>
						<tr>
							<td><%=reservation.getReservationID()%></td>
							<td><%=reservation.getCheckinDate()%></td>
							<td><%=reservation.getCheckoutDate()%></td>
							<td><%=reservation.getNumberOfGuests()%></td>
							<td><%=reservation.getTotal()%></td>
							<td><%=reservation.getPoints()%></td>
							<td><%=reservation.getLocation()%></td>

						</tr>

					</table>
					<table>
						<tr>
							<th>Amenity</th>
							<th>Price</th>
						<tr>
						<tr>
							<%
							if (reservation.getDescription() != null) {
							%>
							<td><%=reservation.getDescription()%></td>
							<%
							} else {
							%>
							<td>None Selected</td>
							<%
							}
							%>

							<%
							if (reservation.getCost() != 0) {
							%>
							<td><%=reservation.getCost()%></td>
							<%
							} else {
							%>
							<td></td>
							<%
							}
							%>
						</tr>

						<%
						firstPass = false;
						} else { //not first pass
						%>

						<tr>
							<td><%=reservation.getDescription()%></td>
							<td><%=reservation.getCost()%></td>
						</tr>

						<%
						}
						}
						%>
					</table>
					<br>
					<br>
					<%
					}
					%>

				</div>

			</div>
		</div>
		<!-- MAIN SECTION END-->

		<!-- MAIN CONTENT START -->

		<!-- MAIN CONTENT END -->

		<!-- FOOTER (Pre-Login) START -->
		<%
		if (session.getAttribute("session") != "TRUE") {
		%>
		<%@include file="footer_pre.jsp"%>
		<%
		} else {
		%>
		<%@include file="footer_post.jsp"%>
		<%
		}
		%>

	</div>
	<!-- CONTAINER DIV END -->
</body>
</html>