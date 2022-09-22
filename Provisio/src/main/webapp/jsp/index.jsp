<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="/Provisio/css/index.css">
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
			<%
			if (session.getAttribute("session") != "TRUE") {
			%>	
			<div class="main-section-login-button-div">
				<a class="login-button-main login-button-style"
					href="/Provisio/jsp/loginpages/login.jsp">Login</a>
			</div>
			<%}%>
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
        //$("#checkout-date").attr('min', today);
        $("#checkin-date").change(function(){
          var checkInDate = $(this).val();
          var split = checkInDate.split('-');
          var nextDay = new Date(split[0], split[1]-1, parseInt(split[2])+1, 0,0,0,0);         
          if (new Date(checkInDate).getTime() >= new Date($("#checkout-date").val()).getTime()){
            $("#checkout-date")[0].valueAsDate = nextDay;
          }
          $("#checkout-date").attr('min', checkInDate);
        });
        $("#checkout-date").change(function(){
          var checkOutDate = $(this).val();
          var split = checkOutDate.split('-');
          var dayBefore = new Date(split[0], split[1]-1, parseInt(split[2])-1, 0,0,0,0);
          if (new Date($("#checkin-date").val()).getTime() >= new Date(checkOutDate).getTime()) {
            $("#checkin-date")[0].valueAsDate = dayBefore;
          }
        });
      });
    </script>
	
	<!-- CONTAINER DIV END -->
</body>
</html>