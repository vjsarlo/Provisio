<%@page import="beans.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@page import="beans.LoginDao"%>  
<jsp:useBean id="account" class= "beans.Account"/>  
  
<jsp:setProperty property="*" name="account"/>  
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
		<%}%>
		<!-- MAIN PHOTO START -->
		<div class="main-photo-div">
			<img class="main-photo" src="/Provisio/images/Photos/MainPhoto.jpeg" />
		</div>
		<!-- MAIN PHOTO END -->

		<!-- MAIN SECTION START -->
		<div class="main-section-div">      
      <div class="main-section-text">
        My Account Details
      </div>
      <div>
        <div class="white-box-2">
            <div class="white-box-text">
                <%account.getFirstName(); %>
            </div>
        </div>
        <div class="white-box-2">
            <div class="white-box-text">
                EMAIL
            </div>
        </div>
      </div>
      <div class="white-box-1">
          <div class="white-box-text">
            TOTAL POINTS ACCRUED
          </div>
      </div>
      <div class="main-section-text">
        My Reservations
      </div>
      <div>
          <!--ANDREA: For 'backend' code linking account to relevant info and presenting as simple table. 
            Not sure the table really needs much CSS, but let me know if I should adjust once you populate the table here.-->
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
		<%}%>

	</div>
	<!-- CONTAINER DIV END -->
</body>
</html>