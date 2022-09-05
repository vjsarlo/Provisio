// GET LOCATION QUERY STRING OBJECT
const params = new URLSearchParams(location.search);

// CHECK FOR "check" QUERY STRING PARAMETER
if ( null !== params.get("check") ) { // if found

    window.addEventListener('load', () => {
    
        const destination = sessionStorage.getItem('DESTINATION');
        const checkin = sessionStorage.getItem('CHECKIN-DATE');
        const checkout = sessionStorage.getItem('CHECKOUT-DATE');
        
        document.getElementById('result-destination-header').value = destination;
        document.getElementById('result-destination').value = destination;
        document.getElementById('result-checkin').value = checkin;
        document.getElementById('result-checkout').value = checkout;

        if (destination == 1) {
            document.getElementById('main-photo').src = "../../Photos/LasVegas.jpeg";
        } else if (destination == 2) {
            document.getElementById('main-photo').src = "../../Photos/Seattle.jpeg";
        } else {
            document.getElementById('main-photo').src = "../../Photos/MainPhoto.jpeg";
        }

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