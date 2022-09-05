<div class="headerpre-login">
      <!-- Logo Header-->
      <div class="logo-div">
        <img class="logo" src="/Provisio/images/Logos/LargeLogo.png"/>
      </div>
      <!-- Header Links -->
      <div class="header-links">
        <a class="home-link-header header-links-style" href="/Provisio/index.html">Home</a>
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
                <li><a href="./PreLogin/loginpage.html">Login</a></li>
                <li><a href="/Provisio/jsp/DisplayRegistrationForm.jsp">Register</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
      <!-- MAIN HEADER END -->
      <!-- SUB HEADER (CHECK AVAILABILITY) START -->
      <div class="sub-header-div">
        <div class="check-availability-div">
          <form action="" class="form" id="form">
            <!-- Destination Choice -->
            <div class="destination-div">
              <label for="" class="input-label"></label>
              <select class="destination-choice">
                <option value="0">Choose Destination</option>
                <option value="1">Destination 1</option>
                <option value="2">Destination 2</option>
                <option value="3">Destination 3</option>
                <option value="4">Destination 4</option>
              </select> 
            </div>
            <!-- Check In Choice -->
            <div class="check-in-date-div">
              <label for="" class="input-label">Check In</label>
              <input type="date" class="input" id="check-in" min="2022-08-01">
            </div>
            <!-- Check Out Choice -->
            <div class="check-out-date-div">
              <label for="" class="input-label">Check Out</label>
              <input type="date" class="input" id="check-out" min="2022-08-01">
            </div>
            <!-- Check Button -->
            <div class="check-button-div">
              <button type="submit" form="form" class="check-availability-button">Check Availability</button>
            </div>
          </form>
        </div>
      </div>
      <!-- SUB HEADER END -->
    </div>
    <!-- HEADER (Pre-Login) END -->
    
   