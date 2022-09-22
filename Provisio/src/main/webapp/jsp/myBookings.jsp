<%-- <%@page import="model.AccountLookup"%> --%>
<%-- <%@page import="beans.Account"%> --%>
<%-- <%@page import="beans.LoginDao"%> --%>
<%-- <%@page import="java.util.ArrayList"%> --%>
<%-- <%@page import="java.util.Iterator"%> --%>
<%-- <%@page import="beans.ExistingReservation"%> --%>

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
<title>Reservation Search</title>

</head>

<body style="background-color: #d9d9d9;">
	<!-- CONTAINER DIV START -->
	<div class="container">
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
		
		<div class="main-section-div-bookings">
			<div class="main-section-text">Previous Reservation Search</div>
			<div class="reservation-id">
				<div class="white-box-text">
					
					<form action="loadReservation.jsp" method="post">
					  <label for="fname">Reservation ID:</label>
					  <input type="text" id="reservationID" name="reservationID"><br><br>
					  <input type="submit" value="Submit">
					</form>
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