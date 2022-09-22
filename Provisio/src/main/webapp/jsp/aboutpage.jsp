<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="/Provisio/css/aboutpage.css">
<title>About Us</title>
<script type="text/javascript" src="index.js"></script>
</head>

<body style="background-color: #d9d9d9;">
	<!-- CONTAINER DIV START -->
	<div class="container">
		<%
		if (session.getAttribute("session") != "TRUE") {
		%>
		<%@include file="header_pre.jsp"%>
		<%
		} else {
		%>
		<%@include file="header_post.jsp"%>
		<%}%>
	    <!-- HEADER (Pre-Login) END -->
		<!-- MAIN PHOTO START -->
		<div class="main-photo-div">
			<img class="main-photo" src="/Provisio/images/Photos/MainPhoto.jpeg" />
		</div>
		<!-- MAIN PHOTO END -->

		<!-- MAIN SECTION START -->
		<div class="main-section-div">
			<div class="main-section-text">Pack Your Luggage, Not Your
				Worries. We'll Handle Everything You Need!
			</div>
		</div>
		<!-- MAIN SECTION END-->
		
		<!-- ABOUT US START -->
    	<div id="about-us-div">
    	   <div class="main-section-text" id="more-about-us-text">
				<h3>More About Us</h3>
				</div>

		<div class="about-us-container1" >
	      		<p><img id="boat-img" src="/Provisio/images/Photos/boat.jpg" alt="boat">
	      			      
	      		<div class="quarter" id="about-us-box">
	      			<br><br>
	        		<p>Provisio was founded with you in mind. We are a company that was built by people who love to travel, and the exclusive partnerships we share with hotels are the result of real relationships.</p>
	        		<p>In other words, our accommodations have been time-tested for quality, cost, and comfort.</p>
	      		</div>
	      		</div>
		<div class="about-us-container2" >
		      <div class="quarter" id="how-to-use-box">
	        		<br><br>
	        		<p>We handle the details of your hotel reservation(s) so you don't have to.  Our specialized booking system allows you to select desired check-in/check-out dates, room size, amenities and more! You can also earn loyalty points that can be used towards future reservations.
	        		<br><br>
	        		<p>Trust that your travel information is protected with our secure login process. Create an account and find the best hotel deals today!</p>
	      		</div>
	      		<p><img id="hotel-img" src="/Provisio/images/Photos/hotel.jpg" alt="Hotel">
	      </div>
    
    	<div class="about-us-container3" >
		      <div class="quarter" id="contact-us-box">

	        		<h4>Contact us!</h4>
	        		<p>Phone: 555-234-8573</p>
	        		<address>
	        		Provisio Headquarters
	        		123 Main Street
	        		New York, NY
	        		</address>
	        		<p>Email: contactus@provisio.com</p>
	        		
	      		</div>
	      </div>
      
      		
		</div>
		<!-- ABOUT US END -->

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
	</div>
	<!-- FOOTER (Pre-Login END) -->
	<!-- CONTAINER DIV END -->
</body>
</html>