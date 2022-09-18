<link rel="stylesheet" href="/Provisio/css/bookroom.css">
    <div class="headerpre-login">
      <!-- Logo Header-->
      <div class="logo-div">
        <img class="logo" src="/Provisio/images/Logos/LargeLogo.png"/>
      </div>
      <!-- Header Links -->
      <div class="header-links">
        <a class="home-link-header header-links-style" href="/Provisio/jsp/index.jsp">Home</a>
        <a class="about-us-link-header header-links-style" href="/Provisio/jsp/prelogin/aboutpage.html">About Us</a>
        <a class="locations-link-header header-links-style" href="">Locations</a>       
        <a class="rooms-link-header header-links-style" href="">Rooms</a>
        <!-- Login/Register Drop Down Header -->
        <div class="login-register-div-header">
          <ul class="menu">
            <li class="login-register-list-header header-links-style">
              <a href="#">Login/Register </a>
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
          <select class="sub-header-text select" id="result-destination-header">
            <option value="Choose Destination" disabled selected hidden>Choose Destination</option>
            <option value="LasVegas">LasVegas</option>
            <option value="Seattle">Seattle</option>
          </select>
          <script>
            document.getElementById('result-destination-header').addEventListener("change", function () {
              document.getElementById('result-destination').selectedIndex = document.getElementById('result-destination-header').selectedIndex;
            }, false);
          </script>
        </div>
      </div>
      <!-- SUB HEADER END -->
    </div>
    <!-- HEADER (Pre-Login) END -->