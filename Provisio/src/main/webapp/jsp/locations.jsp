<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link
            href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap"
            rel="stylesheet">
        <link rel="stylesheet" href="/Provisio/css/locations.css">
        <script type="text/javascript" src="index.js"></script>
        <title>Locations</title>
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

        <div class="main-section-div">
			<div class="main-section-text">If you're gonna look at the same stars every night,<br> why not do it somewhere new?</div>
		</div>

        <h2 class="locations-title">Our Destinations</h2>

        <div class="locations-container">
            <div class="location"> <a href="/Provisio/jsp/prelogin/bookroom/bookroom.jsp">
                <img class ="location-image" src="/Provisio/images/Photos/LasVegas.jpeg" >
                <p class="location-name">Las Vegas</p>
            </a></div>
            <div class="location"><a href="/Provisio/jsp/prelogin/bookroom/bookroom.jsp">
                <img class ="location-image" src="/Provisio/images/Photos/Seattle.jpeg" >
                <p class="location-name">Seattle</p>
            </a></div>
        </div>
        <!-- HEADER (Pre-Login) END -->

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