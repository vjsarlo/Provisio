// GET LOCATION QUERY STRING OBJECT
const params = new URLSearchParams(location.search);

// CHECK FOR "check" QUERY STRING PARAMETER
if ( null !== params.get("check") ) { // if found

    window.addEventListener('load', () => {
    
        const destination = sessionStorage.getItem('DESTINATION');
        const checkin = sessionStorage.getItem('CHECKIN-DATE');
        const checkout = sessionStorage.getItem('CHECKOUT-DATE');
        
        if (destination == "LasVegas") {
            document.getElementById('main-photo').src = "/Provisio/images/Photos/LasVegas.jpeg";
            $("#attractionDetails div").hide();
            $("#showAttraction" + destination).show();
            element = document.getElementById('choiceDestination');
            if (element != null) {
            	document.getElementById('choiceDestination').value = destination;
            }
        } else if (destination == "Seattle") {
            document.getElementById('main-photo').src = "/Provisio/images/Photos/Seattle.jpeg";
            $("#attractionDetails div").hide();
            $("#showAttraction" + destination).show();
            element = document.getElementById('choiceDestination');
            if (element != null) {
            	document.getElementById('choiceDestination').value = destination;
            }
        } else {
            document.getElementById('main-photo').src = "/Provisio/images/Photos/MainPhoto.jpeg";
        }
                
        document.getElementById('result-destination-header').value = destination;
        document.getElementById('result-destination').value = destination;
        document.getElementById('result-checkin').value = checkin;
        document.getElementById('choiceCheckin').value = checkin;
        document.getElementById('result-checkout').value = checkout;
        document.getElementById('choiceCheckout').value = checkout;
     
    })
}

function onHover(room){
    var room = room.getAttribute('title');
    document.getElementById('roomDisplay').innerHTML = room;
}
function offHover(revert){
    var revert = "Select A Room To View:";
    document.getElementById('roomDisplay').innerHTML = revert;
}
