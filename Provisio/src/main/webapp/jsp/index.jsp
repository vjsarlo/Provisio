<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="/Provisio/css/homepre-index.css">
<script type="text/javascript" src="/Provisio/jsp/index.js"></script>
<title>Load Up Page</title>

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
			<div class="main-section-text">Pack Your Luggage, Not Your
				Worries. We'll Handle Everything You Need!</div>
			<div class="main-section-login-button-div">
				<a class="login-button-main login-button-style"
					href="./PreLogin/loginpage.html">Login</a>
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>

		      $(document).ready(function() {
		        var today = new Date().toISOString().split('T')[0];
		        $("#checkin-date").attr('min', today);
		        $("#checkout-date").attr('min', today);
		        $("#checkin-date").change(function(){ 
		          var checkout = $("#checkout-date").val();
		          var checkoutCheck = new Date($("#checkout-date").val());       
		          if (new Date($("#checkin-date").val()).getTime() >= new Date(checkoutCheck).getTime()) {
		            var checkin = $("#checkin-date").val();
		            $("#checkout-date").val(checkin);
		            alert("The Check In Date Must Be Before Your Check Out Date!");          
		          }
		        });       
		        $("#checkout-date").change(function() {
		            var checkin = $("#checkin-date").val();
		            var checkinCheck = new Date($("#checkin-date").val());
		            if (new Date($("#checkout-date").val()).getTime() <= new Date(checkinCheck).getTime()) {
		              $("#checkout-date").val(checkin);
		              $('#check-availability-button').attr('disabled', true);
		              alert("The Check Out Date Must Be After Your Check In Date!"); 
		            } else if (new Date($("#checkout-date").val()).getTime() > new Date(checkinCheck).getTime()) {
		              $('#check-availability-button').removeAttr('disabled');
		            }
		        });
		      });
	 </script>
	
	<!-- CONTAINER DIV END -->
</body>
</html>