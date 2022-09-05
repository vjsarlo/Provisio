<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="bookroom.css">
    <title>Login Page</title>
    <script type="text/javascript" src="bookroom.js" ></script>
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
        <a class="home-link-header header-links-style" href="../../index.html">Home</a>
        <a class="about-us-link-header header-links-style" href="aboutpage.html">About Us</a>
        <a class="locations-link-header header-links-style" href="locationspage.html">Locations</a>       
        <a class="contact-us-link-header header-links-style" href="contactpage.html">Contact Us</a>
        <a class="rooms-link-header header-links-style" href="roomspage.html">Rooms</a>
        <!-- Login/Register Drop Down Header -->
        <div class="login-register-div-header">
          <ul class="menu">
            <li class="login-register-list-header header-links-style">
              <a href="#">Login/Register </a>
              <ul class="submenu">
                <li><a href="loginpage.html">Login</a></li>
                <li><a href="registerpage.html">Register</a></li>
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
            <option value="0" disabled selected hidden>Choose Destination</option>
            <option value="1">Las Vegas</option>
            <option value="2">Seattle</option>
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
    
    <!-- MAIN PHOTO START -->
    <div id="show1" class="main-photo-div">
      <img src="/Provisio/images/Photos/LasVegas.jpeg" class="main-photo" />
    </div>
    <div id="show2" class="main-photo-div">
      <img src="/Provisio/images/Photos/Seattle.jpeg" class="main-photo" />
    </div>
    <div id="show0" class="main-photo-div">
      <img src="/Provisio/images/Photos/MainPhoto.jpeg" class="main-photo" id="main-photo"/>
    </div>
    <!-- MAIN PHOTO END -->

    <!-- MAIN SECTION START -->
    <div class="main-section-div">      

      <div class="rooms">
        <div class="roomimages">

            <div class="innerimg" id="room1" mytitle="Room 1">
                <img src="/Provisio/images/Photos/DoubleFull.jpeg" id="roomImg" class="room1" onmouseover='onHover(this)' onmouseout='offHover(this)' title="Double Full Beds:">
                <span>Double Full Beds</span>
            </div>
            <div class="innerimg" id="room2" mytitle="Room 2">
                <img src="/Provisio/images/Photos/DoubleQueen.jpeg" id="roomImg" class="room2" onmouseover='onHover(this)' onmouseout='offHover(this)' title="Double Queen Beds:">
                <span>Double Queen Beds</span>
            </div>
        </div>
        <div class="roomimages">
            <div class="innerimg" id="room3" mytitle="Room 3">
                <img src="/Provisio/images/Photos/Queen.jpeg" id="roomImg" class="room3" onmouseover='onHover(this)' onmouseout='offHover(this)' title="Queen Bed:">
                <span>Queen Bed</span>
            </div>
            <div class="innerimg" id="room4" mytitle="Room 4">
                <img src="/Provisio/images/Photos/King.jpeg" id="roomImg" class="room4" onmouseover='onHover(this)' onmouseout='offHover(this)' title="King Bed:">
                <span>King Bed</span>
            </div>
        </div>
      </div> 
      <div class="details" id="details">
               
          <div id="roomDetails">
            <h1 id="roomDisplay">Select Your Room!</h1> 
            <div id="room1Details" class="showRoomDetails" style="display:none;">
              <h1 class="roomName">Double Full Beds</h1>
              <br><br>
              <h2 id="roomPrice">
                Price: $110.00 / Night<br><br>
                Max Guests: 5 Guests
              </h2>
            </div>
            <div id="room2Details" class="showRoomDetails" style="display:none;">             
              <h1 class="roomName">Double Queen Beds</h1>
              <br><br>
              <h2 id="roomPrice">
                $150.00 / Night<br><br>
                Max Guests: 5 Guests
              </h2>
            </div>
            <div id="room3Details" class="showRoomDetails" style="display:none;">
              <h1 class="roomName">Queen Bed</h1>
              <br><br>
              <h2 id="roomPrice">
                $125.00 / Night<br><br>
                Max Guests: 2 Guests
              </h2>
            </div>
            <div id="room4Details" class="showRoomDetails" style="display:none;">
              <h1 class="roomName">King Bed</h1>
              <br><br>
              <h2 id="roomPrice">
                $165.00 / Night<br><br>
                Max Guests: 2 Guests
              </h2>
            </div>
          </div>
      </div>
    </div>
    
    <!-- MAIN SECTION END-->

    <!-- MAIN CONTENT START -->
    <div class="main-content-div">
      <form action="" class="registerForm">
        <h1 id="registrationTitle">
            Book Your Stay!
        </h1>
        <!-- Progress bar -->
        <div class="progressbar">
          <div class="progress" id="progress"></div>
          <div class="progress-step progress-step-active" data-title="Room"></div>
          <div class="progress-step" data-title="Contact"></div>
          <div class="progress-step" data-title="Extras"></div>
          <div class="progress-step" data-title="Confirm"></div>
        </div>

        <div class="form-step form-step-active">
          <div class="input-group">
            <select class="destination-choice select" id="result-destination">
              <option value="0" disabled selected hidden>Choose Destination</option>
              <option value="1">Las Vegas</option>
              <option value="2">Seattle</option>
            </select>
            <script>
              document.getElementById('result-destination').addEventListener("change", function () {
                document.getElementById('result-destination-header').selectedIndex = document.getElementById('result-destination').selectedIndex;
              }, false);
            </script>
          </div>
          <div class="input-group">
            <select class="room-choice select" id="result-room">
              <option value="0" disabled selected hidden>Choose Your Room</option>
              <option value="1">Double Full Beds</option>
              <option value="2">Double Queen Beds</option>
              <option value="3">Queen Bed</option>
              <option value="4">King Bed</option>
            </select>
          </div>
          <div class="input-group">
            <input type="date" id="result-checkin" />          
            <input type="date" id="result-checkout" />
          </div>
          <div class="">
            <a class="btn btn-next width-50 ml-auto">Next</a>
          </div>
        </div>
        <div class="form-step">
          <div class="input-group">
            <label for="name">Name</label>
            <input type="text" name="name" id="name" />
          </div>
          <div class="input-group">
            <label for="phone">Phone</label>
            <input type="text" name="phone" id="phone" />
          </div>
          <div class="input-group">
            <label for="email">Email</label>
            <input type="text" name="email" id="email" />
          </div>
          <div class="btns-group">
            <a class="btn btn-prev">Previous</a>
            <a class="btn btn-next">Next</a>
          </div>
        </div>
        <div class="form-step">
          <div class="input-group">
            <label for="guestNumber">Number Of Guests</label>
            <select class="guestNumber select" id="guestNumber">
              <option value="0" disabled selected hidden>How Many Guests Are There?</option>
              <option value="1">1-2</option>
              <option value="2">3-5</option>
            </select>
          </div>
          <div class="input-group">
            <label for="amenities">Amenities</label>
            <input type="number" name="amenities" id="amenities" />
          </div>
          <div class="btns-group">
            <a class="btn btn-prev">Previous</a>
            <a class="btn btn-next">Next</a>
          </div>
        </div>
        <div class="form-step">
          <div class="input-group">
            <label for="confirmRegistration">Registration Confirm</label>
          </div>
          <div class="btns-group">
            <a class="btn btn-prev">Previous</a>
            <input type="submit" value="Submit" class="btn" />
          </div>
        </div>
        <!--
        <select class="destination-choice select" id="result-destination">
            <option value="0" disabled selected hidden>Choose Destination</option>
            <option value="1">Las Vegas</option>
            <option value="2">Seattle</option>
        </select>
        <script>
          document.getElementById('result-destination').addEventListener("change", function () {
            document.getElementById('result-destination-header').selectedIndex = document.getElementById('result-destination').selectedIndex;
          }, false);
        </script>

        <input type="date" id="result-checkin" />
        <input type="date" id="result-checkout" />
        <input type="text" id="result-name" placeholder="Enter Your Name..." />
        -->
      </form>
      
    </div>
    <!-- MAIN CONTENT END -->

    <!-- FOOTER (Pre-Login) START -->
    <div class="footerpre-login">
      <div class="footer-div">
        <!-- Footer Logo -->
        <div class="footer-logo-div">
          <img class="footer-logo" src="/Provisio/images/Logos/SmallLogo.png" />
        </div>
        <!-- Footer Links -->
        <a class="home-link-footer footer-links-style" href="../index.html">Home</a>
        <a class="about-us-link-footer footer-links-style" href="aboutpage.html">About Us</a>
        <a class="contact-us-link-footer footer-links-style" href="contactpage.html">Contact Us</a>
        <!-- Login Button Footer -->
        <div class="footer-text">
          Login To Book Your Vacation!
        </div>
        <div class="footer-login-button-div">
          <a class="login-button-footer login-button-style" href="loginpage.html">Login</a>
        </div>
      </div>
    </div>
    <!-- FOOTER (Pre-Login) END -->

  </div>
  <!-- CONTAINER DIV END -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script>
    $('#result-destination-header, #result-destination').on('change', function(){
    	var value = $(this).val(); 
        $("div.main-photo-div").hide();
        $("#show" + value).show();
    });
    $(document).ready(function(){
        $(".room1").click(function(){$("#roomDetails div").hide();
          $("#room1Details").show();
        });
        $(".room2").click(function(){$("#roomDetails div").hide();
          $("#room2Details").show();
        });
        $(".room3").click(function(){$("#roomDetails div").hide();
          $("#room3Details").show();
        });
        $(".room4").click(function(){$("#roomDetails div").hide();
          $("#room4Details").show();
        });
    })
  </script>
  <script type="text/javascript" src="form.js" defer></script>
</body>
</html>