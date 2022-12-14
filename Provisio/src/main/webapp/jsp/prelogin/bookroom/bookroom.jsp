
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/Provisio/css/bookroom.css">
    <title>Book Reservation Page</title>
</head>

<body style="background-color: #d9d9d9;">

  <!-- CONTAINER DIV START -->
  <div class="container">
		<!-- HEADER (Pre-Login) START -->
		<!-- MAIN HEADER START -->
		<%
		if (session.getAttribute("session") != "TRUE") {
		%>
		<%@include file="header_pre_book.jsp"%>
		<%
		} else {
		%>
		<%@include file="header_post_book.jsp"%>
		<%}%>

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
                <img src="/Provisio/images/Photos/DoubleFull.jpeg" alt="Double Full Beds" price="115.50" class="roomImg" id="room1" onmouseover='onHover(this)' onmouseout='offHover(this)' title="Double Full Beds:">
                <span>Double Full Beds</span>
            </div>
            <div class="innerimg" id="room2Div" mytitle="Room 2">
                <img src="/Provisio/images/Photos/DoubleQueen.jpeg" alt="Double Queen Beds" price="157.50" class="roomImg" id="room2" onmouseover='onHover(this)' onmouseout='offHover(this)' title="Double Queen Beds:">
                <span>Double Queen Beds</span>
            </div>
        </div>
        <div class="roomimages">
            <div class="innerimg" id="room3Div" mytitle="Room 3">
                <img src="/Provisio/images/Photos/Queen.jpeg" alt="Queen Bed" price="131.25" class="roomImg" id="room3" onmouseover='onHover(this)' onmouseout='offHover(this)' title="Queen Bed:">
                <span>Queen Bed</span>
            </div>
            <div class="innerimg" id="room4Div" mytitle="Room 4">
                <img src="/Provisio/images/Photos/King.jpeg" alt="King Bed" price="173.25" class="roomImg" id="room4" onmouseover='onHover(this)' onmouseout='offHover(this)' title="King Bed:">
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
                  $115.50 / Night <br><br>
                  Max Guests: 5 Guests
                </h2>
              </div>
              <div id="room2Details" class="showRoomDetails" style="display:none;">             
                <h1 class="roomName">Double Queen Beds</h1>
                <br><br>
                <h2 id="roomPrice">
                  $157.50 / Night<br><br>
                  Max Guests: 5 Guests
                </h2>
              </div>
              <div id="room3Details" class="showRoomDetails" style="display:none;">
                <h1 class="roomName">Queen Bed</h1>
                <br><br>
                <h2 id="roomPrice">
                  $131.25 / Night<br><br>
                  Max Guests: 2 Guests
                </h2>
              </div>
              <div id="room4Details" class="showRoomDetails" style="display:none;">
                <h1 class="roomName">King Bed</h1>
                <br><br>
                <h2 id="roomPrice">
                  $173.25 / Night<br><br>
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
    <%
   	System.out.println(session.getAttribute("session") != "TRUE");
	if (session.getAttribute("session") == "TRUE") {
	%>
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
              <option value="Double Full Beds" room-price="115.50" >Double Full Beds</option>
              <option value="Double Queen Beds" room-price="157.50" >Double Queen Beds</option>
              <option value="Queen Bed" room-price="131.25" >Queen Bed</option>
              <option value="King Bed" room-price="173.25" >King Bed</option>
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
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
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
                <td><input id="choiceDestination" class="readonly" name="choiceDestination" required></td>
              </tr>
              <tr>
                <th>Room:</th>
                <td><input id="choiceRoom" class="readonly" name="choiceRoom" required></td>
              </tr>
              <tr>
                <th>Price Per Night:</th>
                <td><input id="choiceRoomPrice" class="readonly" name="choiceRoomPrice" required></td>
              </tr>
              <tr>
                <th>Check-In Date:</th>
                <td><input id="choiceCheckin" class="readonly" name="choiceCheckin" required></td>
              </tr>
              <tr>
                <th>Check-Out Date:</th>
                <td><input id="choiceCheckout" class="readonly" name="choiceCheckout" required></td>
              </tr>
              <tr>
                <th>Total Nights:</th>
                <td><input id="stayLength" class="readonly" name="stayLength" required></td>
              </tr>
              <tr>
                <th>Stay Price:</th>
                <td><input id="stayPrice" class="totalCostPiece readonly" name="stayPrice" required></td>
              </tr>
              <tr>
                <th>Name:</th>
                <td><input id="choiceName" class="readonly" name="choiceName" required></td>
              </tr>
              <tr>
                <th>Phone Number:</th>
                <td><input id="choicePhone" class="readonly" name="choicePhone" required></td>
              </tr>
              <tr>
                <th>Email:</th>
                <td><input id="choiceEmail" class="readonly" name="choiceEmail" required></td>
              </tr>
              <tr>
                <th>Number Of Guests:</th>
                <td><input id="choiceGuests" class="readonly" name="choiceGuests" required></td>
              </tr>
              <tr>
                <th>Amenities Chosen:</th>
                <td><input id="choiceAmenities" class="readonly" name="choiceAmenities" required></td>
              </tr>
              <tr>
                <th>Amenities Cost:</th>
                <td><input id="choiceAmenitiesPrice" value=" " class="totalCostPiece readonly" name="choiceAmenitiesPrice" required></td>
              </tr>
              <tr>
                <th>Total:</th>
                <td><input id="totalCost" class="totalCost readonly" name="totalCost" required></td>
              </tr>
            </table>
          </div>

          <div class="btns-group">
            <a class="btn btn-prev">Previous</a>
            <input type="submit" value="Submit" class="btn" />
          </div>
        </div>
      </form> 
       <%}else{ %>
   		 <div id="progress-step">
    	   <div class="main-section-text">
        	  <h1 id="registrationTitle">Login To Book Your Vacation!</h1>
			</div>
			<div class="btns-group">
			 <a class="btn btn-login" href="/Provisio/jsp/loginpages/login.jsp">Login</a>
			</div>
   		 </div>  
    	
    <%} %>    
    </div>
   
    
    <!-- MAIN CONTENT END -->

    <!-- FOOTER (Pre-Login) START -->
		<%
		if (session.getAttribute("session") != "TRUE") {
		%>
		<%@include file="../../footer_pre.jsp"%>
		<%
		} else {
		%>
		<%@include file="../../footer_post.jsp"%>
		<%}%>

  </div>
  <!-- CONTAINER DIV END -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script>
	  $(document).ready(function() {
	      var today = new Date().toISOString().split('T')[0];
	      $("#result-checkin").attr('min', today);
	      //$("#checkout-date").attr('min', today);
	      $("#result-checkin").change(function(){
	        var checkInDate = $(this).val();
	        var split = checkInDate.split('-');
	        var nextDay = new Date(split[0], split[1]-1, parseInt(split[2])+1, 0,0,0,0);         
	        if (new Date(checkInDate).getTime() >= new Date($("#result-checkout").val()).getTime()){
	          $("#result-checkout")[0].valueAsDate = nextDay;
	        }
	        $("#result-checkout").attr('min', checkInDate);
	      });
	      $("#result-checkout").change(function(){
	        var checkOutDate = $(this).val();
	        var split = checkOutDate.split('-');
	        var dayBefore = new Date(split[0], split[1]-1, parseInt(split[2])-1, 0,0,0,0);
	        if (new Date($("#result-checkin").val()).getTime() >= new Date(checkOutDate).getTime()) {
	          $("#result-checkin")[0].valueAsDate = dayBefore;
	        }
	      });
	  });
	  $(".readonly").on('keydown paste focus mousedown', function(e){
	      if(e.keyCode != 9) // ignore tab
	          e.preventDefault();
	  });
	$(document).ready(function(){
		$('#result-destination-header').on('change', function(){
	   		var value = $(this).val(); 
	    	$("div.main-photo-div").hide();
	      	$("#show" + value).show();
	      	$("#attractionDetails div").hide();
	      	$("#showAttraction" + value).show();
		});
		$('#result-destination').on('change', function(){
	   		var value = $(this).val(); 
	    	$("div.main-photo-div").hide();
	      	$("#show" + value).show();
	      	$("#attractionDetails div").hide();
	      	$("#showAttraction" + value).show();
		});
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
            
            var startDate = document.getElementById("result-checkin").value;
            var endDate = document.getElementById("result-checkout").value;
            var checkinDate = new Date(startDate);
            var checkoutDate = new Date(endDate);
            var today = new Date();
            var year = today.getFullYear();
            var fYear = today.getFullYear()+1;
            var christmasEve = new Date(year+"-12-24");
            var fourthJuly = new Date(fYear+"-7-4");
            var newYearsEve = new Date(year+"-12-31");
            
            var roomPrice = $(this).attr('price');
            var stayLength = $('#stayLength').val();
            var choiceAmenitiesPrice = $('#choiceAmenitiesPrice').val();
            
            if ( ((christmasEve.getTime() <= checkoutDate.getTime()) && (christmasEve.getTime() >= checkinDate.getTime())) ||
              		((fourthJuly.getTime() <= checkoutDate.getTime()) && (fourthJuly.getTime() >= checkinDate.getTime())) || 
              		((newYearsEve.getTime() <= checkoutDate.getTime()) && (newYearsEve.getTime() >= checkinDate.getTime())) ){
            	var roomPriceHoliday = (roomPrice * .05).toFixed(2);
            	var totalRoomPrice = (parseFloat(roomPrice) + parseFloat(roomPriceHoliday)).toFixed(2);
            	$('#choiceRoomPrice').val(totalRoomPrice);
            	console.log(roomPrice);
            	console.log(roomPriceHoliday);
            	console.log(totalRoomPrice);
              } else {
                var totalRoomPrice = roomPrice;
              }
            
            
            var price = (totalRoomPrice * stayLength).toFixed(2);
            var totalCost = (parseFloat(price) + parseFloat(choiceAmenitiesPrice)).toFixed(2);
            
            if (choiceAmenitiesPrice != " ") {
            	alert('Total Cost Changed To: $' + totalCost);
            }
            
            //alert('Total Cost Changed To: $' + totalCost);
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