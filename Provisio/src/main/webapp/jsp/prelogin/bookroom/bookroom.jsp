<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="bookroom.css">
    <title>Login Page</title>
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
    
    <!-- MAIN PHOTO START -->
    <div id="showLasVegas" class="main-photo-div">
      <img src="/Provisio/images/Photos/LasVegas.jpeg" class="main-photo" />
    </div>
    <div id="showSeattle" class="main-photo-div">
      <img src="/Provisio/images/Photos/Seattle.jpeg" class="main-photo" />
    </div>
    <div id="showChoose Destination" class="main-photo-div">
      <img src="/Provisio/images/Photos/MainPhoto.jpeg" class="main-photo" id="main-photo"/>
    </div>
    <!-- MAIN PHOTO END -->

    <!-- MAIN SECTION START -->
    <div class="main-section-div">      

      <div class="rooms">
        <div class="roomimages">
            <div class="innerimg" id="room1Div" mytitle="Room 1">
                <img src="/Provisio/images/Photos/DoubleFull.jpeg" alt="Double Full Beds" price="110.00" class="roomImg" id="room1" onmouseover='onHover(this)' onmouseout='offHover(this)' title="Double Full Beds:">
                <span>Double Full Beds</span>
            </div>
            <div class="innerimg" id="room2Div" mytitle="Room 2">
                <img src="/Provisio/images/Photos/DoubleQueen.jpeg" alt="Double Queen Beds" price="150.00" class="roomImg" id="room2" onmouseover='onHover(this)' onmouseout='offHover(this)' title="Double Queen Beds:">
                <span>Double Queen Beds</span>
            </div>
        </div>
        <div class="roomimages">
            <div class="innerimg" id="room3Div" mytitle="Room 3">
                <img src="/Provisio/images/Photos/Queen.jpeg" alt="Queen Bed" price="125.00" class="roomImg" id="room3" onmouseover='onHover(this)' onmouseout='offHover(this)' title="Queen Bed:">
                <span>Queen Bed</span>
            </div>
            <div class="innerimg" id="room4Div" mytitle="Room 4">
                <img src="/Provisio/images/Photos/King.jpeg" alt="King Bed" price="165.00" class="roomImg" id="room4" onmouseover='onHover(this)' onmouseout='offHover(this)' title="King Bed:">
                <span>King Bed</span>
            </div>
        </div>
      </div> 
      <div class="details" id="details">
               
          <div id="displayTitles">
            <h1 id="roomDisplay">Select Your Room!</h1>
            <h1 id="attractionsDisplay">So Close You Shouldn't Miss It!</h1>
          </div>
          <div id="detailsDiv">
            <div id="roomDetails">
              <div id="room1Details" class="showRoomDetails" value="Double Full Beds" style="display:none;">
                <h1 class="roomName">Double Full Beds</h1>
                <br><br>
                <h2 id="roomPrice">
                  $110.00 / Night <br><br>
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
            <div id="attractionDetails">
              <div id="showAttractionLasVegas" class="showAttractionDetails" style="display:none;">
                <h1 class="attractionName">The Bellagio Fountain Show!</h1>
                <h1 class="attractionName">Check out the Mirage Volcano!</h1>
                <h1 class="attractionName">Do Not Miss Fremont Street!</h1>
              </div>
              <div id="showAttractionSeattle" class="showAttractionDetails" style="display:none;">
                <h1 class="attractionName">The Seattle Center & the Space Needle!</h1>
                <h1 class="attractionName">Museum of Pop Culture (MoPOP)!</h1>
                <h1 class="attractionName">Wine Taste At Woodinville Wine Country!</h1>
              </div>
            </div>
          </div>
      </div>
    </div>
    
    <!-- MAIN SECTION END-->

    <!-- MAIN CONTENT START -->
    <div class="main-content-div">
      <form method="post" action="${pageContext.request.contextPath}/booking" class="registerForm" name="bookform">
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
            <select class="user_change destination-choice select" data-name="choiceDestination" id="result-destination" name="result-destination">
            <!--<select class="destination-choice select" id="result-destination" name="result-destination" required> -->
              <option value="Choose Destination" disabled selected hidden>Choose Destination</option>
              <option value="LasVegas">LasVegas</option>
              <option value="Seattle">Seattle</option>
            </select>
            <script>
              document.getElementById('result-destination').addEventListener("change", function () {
                document.getElementById('result-destination-header').selectedIndex = document.getElementById('result-destination').selectedIndex;
              }, false);
            </script>
          </div>
          <div class="input-group">
            <select class="user_change room-choice select" data-name="choiceRoom" id="result-room" name="result-room">
            <!--<select class="room-choice select" id="result-room" name="result-room"> -->
              <option value="Choose Your Room" disabled selected hidden>Choose Your Room</option>
              <option value="Double Full Beds" room-price="110.00" >Double Full Beds</option>
              <option value="Double Queen Beds" room-price="150.00" >Double Queen Beds</option>
              <option value="Queen Bed" room-price="125.00" >Queen Bed</option>
              <option value="King Bed" room-price="165.00" >King Bed</option>
            </select>
          </div>
          <div class="input-group">
            <input type="date" class="user_change" data-name="choiceCheckin" id="result-checkin" />          
            <input type="date" class="user_change" data-name="choiceCheckout" id="result-checkout" />
            <!--<input type="date" id="result-checkin" class="result-checkin"/>          
            <input type="date" id="result-checkout" /> -->
          </div>
          <div class="">
            <a class="btn btn-next width-50 ml-auto" onclick="calculateDate()">Next</a>
          </div>
        </div>
        <div class="form-step">
          <div class="input-group">
            <label for="name">Name</label>
            <input type="text" class="user_change" data-name="choiceName" name="name" id="name" />
            <!--<input type="text" name="name" id="name" /> -->
          </div>
          <div class="input-group">
            <label for="phone">Phone</label>
            <input type="text" class="user_change" data-name="choicePhone" name="phone" id="phone" />
            <!--<input type="text" name="phone" id="phone" /> -->
          </div>
          <div class="input-group">
            <label for="email">Email</label>
            <input type="text" class="user_change" data-name="choiceEmail" name="email" id="email" />
            <!--<input type="text" name="email" id="email" /> -->
          </div>
          <div class="btns-group">
            <a class="btn btn-prev">Previous</a>
            <a class="btn btn-next" >Next</a>
          </div>
        </div>
        <div class="form-step">
          <div class="input-group">
            <label for="guestNumber">Number Of Guests</label>
            <select class="user_change guestNumber select" id="guestNumber" data-name="choiceGuests" name="guestNumber">
            <!--<select class="guestNumber select" id="guestNumber" name="guestNumber"> -->
              <option value="0" disabled selected hidden>How Many Guests Are There?</option>
              <option value="1-2">1-2</option>
              <option value="3-5">3-5</option>
            </select>
          </div>
          <div class="input-group">
            <label for="amenities">Amenities</label><br>
            <!--<select class="user_change select" data-name="choiceAmenities" name="amenities" id="amenities" >
              <option value="None" disabled selected hidden>Would You Like To Add Anything To Your Stay?</option>
              <option value="WiFi" data-price="12.99">Wi-Fi - $12.99 Flat Fee</option>
              <option value="Breakfast" data-price="8.99">Breakfast - $8.99 Per Night</option>
              <option value="Parking" data-price="19.99">Parking - $19.99 Per Night</option>
            </select> -->
            <input type="checkbox" class="checkbox"  id="amenities1" name="amenities" value="None" data-price="0" >
            <label for="amenities1"> None </label><br>
            <input type="checkbox" class="checkbox"  id="amenities2" name="amenities" value="WiFi" data-price="12.99">
            <label for="amenities2"> Wi-Fi - $12.99 Flat Fee</label><br>
            <input type="checkbox" class="checkbox"  id="amenities3" name="amenities" value="Breakfast" data-price="8.99">
            <label for="amenities3"> Breakfast - $8.99 Per Night</label><br>
            <input type="checkbox" class="checkbox"  id="amenities4" name="amenities" value="Parking" data-price="19.99">
            <label for="amenities4"> Parking - $19.99 Per Night</label><br>
          </div>
          <div class="btns-group">
            <a class="btn btn-prev">Previous</a>
            <a class="btn btn-next" id="finalNext" >Next</a>
          </div>
        </div>
        <div class="form-step">
          <div class="input-group">
            <label for="confirmRegistration">Review Your Reservation!</label>
            <table id="finalTable">
              <tr>
                <th>Destination:</th>
                <td><input readonly id="choiceDestination" name="choiceDestination"></td>
              </tr>
              <tr>
                <th>Room:</th>
                <td><input readonly id="choiceRoom" name="choiceRoom"></td>
              </tr>
              <tr>
                <th>Price Per Night:</th>
                <td><input readonly id="choiceRoomPrice" name="choiceRoomPrice"></td>
              </tr>
              <tr>
                <th>Check-In Date:</th>
                <td><input readonly id="choiceCheckin" name="choiceCheckin"></td>
              </tr>
              <tr>
                <th>Check-Out Date:</th>
                <td><input readonly id="choiceCheckout" name="choiceCheckout"></td>
              </tr>
              <tr>
                <th>Total Nights:</th>
                <td><input readonly id="stayLength" name="stayLength"></td>
              </tr>
              <tr>
                <th>Stay Price:</th>
                <td><input readonly id="stayPrice" class="totalCostPiece" name="stayPrice"></td>
              </tr>
              <tr>
                <th>Name:</th>
                <td><input readonly id="choiceName" name="choiceName"></td>
              </tr>
              <tr>
                <th>Phone Number:</th>
                <td><input readonly id="choicePhone" name="choicePhone"></td>
              </tr>
              <tr>
                <th>Email:</th>
                <td><input readonly id="choiceEmail" name="choiceEmail"></td>
              </tr>
              <tr>
                <th>Number Of Guests:</th>
                <td><input readonly id="choiceGuests" name="choiceGuests"></td>
              </tr>
              <tr>
                <th>Amenities Chosen:</th>
                <td><input readonly id="choiceAmenities" name="choiceAmenities"></td>
              </tr>
              <tr>
                <th>Amenities Cost:</th>
                <td><input readonly id="choiceAmenitiesPrice" class="totalCostPiece" name="choiceAmenitiesPrice"></td>
              </tr>
              <tr>
                <th>Total:</th>
                <td><input readonly id="totalCost" class="totalCost" name="totalCost"></td>
              </tr>
            </table>
          </div>

          <div class="btns-group">
            <a class="btn btn-prev">Previous</a>
            <input type="submit" value="Submit" class="btn" />
          </div>
        </div>
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
      $("#attractionDetails div").hide();
      $("#showAttraction" + value).show();
    });   
    $(document).ready(function(){
        $("#room1").click(function(){$("#roomDetails div").hide();
          $("#room1Details").show();          
        });
        $("#room2").click(function(){$("#roomDetails div").hide();
          $("#room2Details").show();
        });
        $("#room3").click(function(){$("#roomDetails div").hide();
          $("#room3Details").show();
        });
        $("#room4").click(function(){$("#roomDetails div").hide();
          $("#room4Details").show();
        });
    })
    $(function() {
      $("input[name=amenities]:eq(0)").click(function(){
        if($(this).is(':checked')){
          $("input[name=amenities]").not(this).prop('disabled',true);
        } 
        else{
          $("input[name=amenities]").not(this).prop('disabled',false)}	
      });
      $("input[name=amenities]:not('input[name=amenities]:eq(0)')").click(function(){
        if($("input[name=amenities]:not('input[name=amenities]:eq(0)')").is(":checked")){
          $("input[name=amenities]:eq(0)").prop('disabled',true);
        } else {
          $("input[name=amenities]:eq(0)").prop('disabled',false).attr('checked',true);
        }
      });        
    });
    $(document).ready(function () {
        $('.roomImg').click(function(){
            $('#result-room').val($(this).attr('alt'));
            $('#choiceRoom').val($(this).attr('alt'));
            $('#choiceRoomPrice').val($(this).attr('price'));
            var roomPrice = $(this).attr('price');
            var stayLength = $('#stayLength').val();
            var choiceAmenitiesPrice = $('#choiceAmenitiesPrice').val();
            var price = roomPrice * stayLength;
            var totalCost = parseFloat(price) + parseFloat(choiceAmenitiesPrice);
            alert('Total Cost Changed To: $' + totalCost);
            $('#stayPrice').val(price);
            $('#totalCost').val(totalCost);
        });
    });
    $(document).ready(function () {
      $("#result-room").change(function(){
        var element = $(this).find('option:selected');
        var price = element.attr("room-price");
        $('#choiceRoomPrice').val(price);
      });
    });
    $(document).ready(function(){
      $(".checkbox").click(function(){
        var text= "";
        $(".checkbox:checked").each(function () {
          text += $(this).val() + ' ';
        });
        $("#choiceAmenities").val(text);
      });
    });
    $(document).ready(function(){
      $(".checkbox").change(function(){
        var stayLength = $('#stayLength').val();
        var stayPrice= $('#stayPrice').val();
        var wifiPrice = 0;
        var breakfastPrice = 0;
        var parkingPrice = 0;
        if ($("#amenities1").is(':checked')) {
          totalPrice = 0;
        }
        if ($("#amenities2").is(':checked')) {
          wifiPrice = 12.99;
        }
        if ($("#amenities3").is(':checked')) {
          breakfastPrice = 8.99 * stayLength;
        }
        if ($("#amenities4").is(':checked')) {
          parkingPrice = 19.99 * stayLength;
        }
        totalPrice = wifiPrice + breakfastPrice + parkingPrice;
        var totalCost = parseFloat(stayPrice) + parseFloat(totalPrice);
        alert('Total Amenities Price: $' + totalPrice.toFixed(2));
        $('#choiceAmenitiesPrice').val(totalPrice.toFixed(2));
        $('#totalCost').val(totalCost);  
      });
    });

  </script>
  <script type="text/javascript" src="form.js" defer></script>
</body>
<script type="text/javascript" src="bookroom.js" ></script>
</html>