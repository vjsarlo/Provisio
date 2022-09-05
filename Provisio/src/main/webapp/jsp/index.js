function checkAvailability () {

    const destination = document.getElementById('destination').value;
    const checkin = document.getElementById('checkin-date').value;
    const checkout = document.getElementById('checkout-date').value;

    sessionStorage.setItem("DESTINATION", destination);
    sessionStorage.setItem("CHECKIN-DATE", checkin);
    sessionStorage.setItem("CHECKOUT-DATE", checkout);

    return;
}