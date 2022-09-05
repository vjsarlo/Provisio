<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/Provisio/css/homepre.css">
    <title>Load Up Page</title>
    <script type="text/javascript" src="index.js"></script>
</head>

<body style="background-color: #d9d9d9;">
  <!-- CONTAINER DIV START -->
  <div class="container">
    <!-- HEADER (Pre-Login) START -->
    <!-- MAIN HEADER START -->
    <div class="headerpre-login">
      <!-- Logo Header-->
      <div class="logo-div">
        <img class="logo" src="/Provisio/images/Logos/LargeLogo.png"/>
      </div>
      <!-- Header Links -->
      <div class="header-links">
        <a class="home-link-header header-links-style" href="index.jsp">Home</a>
        <a class="about-us-link-header header-links-style" href="./PreLogin/aboutpage.html">About Us</a>
        <a class="locations-link-header header-links-style" href="./PreLogin/locationspage.html">Locations</a>       
        <a class="contact-us-link-header header-links-style" href="./PreLogin/contactpage.html">Contact Us</a>
        <a class="rooms-link-header header-links-style" href="./PreLogin/roomspage.html">Rooms</a>
        <!-- Login/Register Drop Down Header -->
        <div class="login-register-div-header">
          <ul class="menu">
            <li class="login-register-list-header header-links-style">
              <a href="#">Login/Register </a>
              <ul class="submenu">
                <li><a href="/Provisio/jsp/loginpages/login.jsp">Login</a></li>
                <li><a href="/Provisio/jsp/registerpages/register.jsp">Register</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
      <!-- MAIN HEADER END -->
      <!-- SUB HEADER (CHECK AVAILABILITY) START -->
      <div class="sub-header-div">
        <div class="check-availability-div">
          <form action="/Provisio/jsp/prelogin/bookroom/bookroom.jsp?check" method="POST" class="form" id="form">
            <!-- Destination Choice -->
            <div class="destination-div">
              <select class="destination-choice" id="destination" name="destination" onchange="renderImage()">
                <option value="0" disabled selected hidden>Choose Destination</option>
                <option value="1">Las Vegas</option>
                <option value="2">Seattle</option>
              </select>
            </div>
            <!-- Check In Choice -->
            <div class="check-in-date-div">
              <label for="" class="input-label">Check In</label>
              <input type="date" class="input" id="checkin-date" name="checkin-date" min="2022-09-01">
            </div>
            <!-- Check Out Choice -->
            <div class="check-out-date-div">
              <label for="" class="input-label">Check Out</label>
              <input type="date" class="input" id="checkout-date" name="checkout-date" min="2022-09-01">
            </div>
            <!-- Check Button -->
            <div class="check-button-div">
              <button type="submit" form="form" class="check-availability-button" onclick="checkAvailability()" >Check Availability</button>
            </div>
          </form>
        </div>
      </div>
      <!-- SUB HEADER END -->
    </div>
    <!-- HEADER (Pre-Login) END -->
    
    <!-- MAIN PHOTO START -->
    <div class="main-photo-div">
      <img
        class="main-photo"
        src="/Provisio/images/Photos/MainPhoto.jpeg"
      />
    </div>
    <!-- MAIN PHOTO END -->

    <!-- MAIN SECTION START -->
    <div class="main-section-div">      
      <div class="main-section-text">
        Pack Your Luggage, Not Your Worries. We'll Handle Everything You Need!
      </div>
      <div class="main-section-login-button-div">
        <a class="login-button-main login-button-style" href="./PreLogin/loginpage.html">Login</a>
      </div>
    </div>
    <!-- MAIN SECTION END-->

    <!-- MAIN CONTENT START -->

    <!-- MAIN CONTENT END -->

    <!-- FOOTER (Pre-Login) START -->
    <div class="footerpre-login">
      <div class="footer-div">
        <!-- Footer Logo -->
        <div class="footer-logo-div">
          <img class="footer-logo" src="/Provisio/images/Logos/SmallLogo.png" />
        </div>
        <!-- Footer Links -->
        <a class="home-link-footer footer-links-style" href="index.html">Home</a>
        <a class="about-us-link-footer footer-links-style" href="./PreLogin/aboutpage.html">About Us</a>
        <a class="contact-us-link-footer footer-links-style" href="./PreLogin/contactpage.html">Contact Us</a>
        <!-- Login Button Footer -->
        <div class="footer-text">
          Login To Book Your Vacation!
        </div>
        <div class="footer-login-button-div">
          <a class="login-button-footer login-button-style" href="./PreLogin/loginpage.html">Login</a>
        </div>
      </div>
    </div>
    <!-- FOOTER (Pre-Login) END -->

  </div>
  <!-- CONTAINER DIV END -->
</body>
</html>