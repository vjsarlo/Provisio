<div class="headerpre-login">
      <!-- Logo Header-->
      <div class="logo-div">
        <img class="logo" src="/Provisio/images/Logos/LargeLogo.png"/>
      </div>
      <!-- Header Links -->
      <div class="header-links">
        <a class="home-link-header header-links-style" href="index.jsp">Home</a>
        <a class="about-us-link-header header-links-style" href="./PostLogin/aboutpage.html">About Us</a>
        <a class="locations-link-header header-links-style" href="./PostLogin/locationspage.html">Locations</a>       
        <a class="contact-us-link-header header-links-style" href="./PostLogin/contactpage.html">Contact Us</a>
        <a class="rooms-link-header header-links-style" href="./PostLogin/roomspage.html">Rooms</a>
        <!-- Login/Register Drop Down Header -->
        <div class="login-register-div-header">
          <ul class="menu">
            <li class="login-register-list-header header-links-style">
              <a href="#">My Account </a>
              <ul class="submenu">
                <li><a href="/Provisio/jsp/myAccount.jsp">Reservations</a></li>
                <li><a href="/Provisio/jsp/myBookings.jsp">My Bookings</a></li>
                <li><a href="/Provisio/jsp/logout.jsp">Logout</a></li>
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