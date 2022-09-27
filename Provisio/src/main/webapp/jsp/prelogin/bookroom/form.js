const prevBtns = document.querySelectorAll(".btn-prev");
const nextBtns = document.querySelectorAll(".btn-next");
const progress = document.getElementById("progress");
const formSteps = document.querySelectorAll(".form-step");
const progressSteps = document.querySelectorAll(".progress-step");

let formStepsNum = 0;

nextBtns.forEach((btn) => {
  btn.addEventListener("click", () => {
    formStepsNum++;
    updateFormSteps();
    updateProgressbar();
  });
});

prevBtns.forEach((btn) => {
  btn.addEventListener("click", () => {
    formStepsNum--;
    updateFormSteps();
    updateProgressbar();
  });
});

function updateFormSteps() {
  formSteps.forEach((formStep) => {
    formStep.classList.contains("form-step-active") &&
      formStep.classList.remove("form-step-active");
  });

  formSteps[formStepsNum].classList.add("form-step-active");
}

function updateProgressbar() {
  progressSteps.forEach((progressStep, idx) => {
    if (idx < formStepsNum + 1) {
      progressStep.classList.add("progress-step-active");
    } else {
      progressStep.classList.remove("progress-step-active");
    }
  });

  const progressActive = document.querySelectorAll(".progress-step-active");

  progress.style.width =
    ((progressActive.length - 1) / (progressSteps.length - 1)) * 100 + "%";
}


var the_data_obj = {};
$(".user_change").change(function(){
  var changed_field = $(this).attr("data-name");
  var changed_field_val = $(this).val();
  the_data_obj[changed_field] = changed_field_val;
  $("#"+changed_field).val(changed_field_val); 
  console.log(the_data_obj);
});

document.getElementById('result-destination-header').addEventListener("change", function () {
  document.getElementById('choiceDestination').value = document.getElementById('result-destination-header').value;
});

function calculateDate() {
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
  
  var roomPrice = $('#result-room option:selected').attr('room-price');
  
  var Difference_In_Time = new Date(endDate).getTime() - new Date(startDate).getTime();
  var Difference_In_Days = Difference_In_Time / (1000 * 3600 * 24);
  
  if ( ((christmasEve.getTime() <= checkoutDate.getTime()) && (christmasEve.getTime() >= checkinDate.getTime())) ||
  		((fourthJuly.getTime() <= checkoutDate.getTime()) && (fourthJuly.getTime() >= checkinDate.getTime())) || 
  		((newYearsEve.getTime() <= checkoutDate.getTime()) && (newYearsEve.getTime() >= checkinDate.getTime())) ){
	var roomPriceHoliday = (roomPrice * .05).toFixed(2);
	var totalRoomPrice = (parseFloat(roomPrice) + parseFloat(roomPriceHoliday)).toFixed(2);
	$('#choiceRoomPrice').val(totalRoomPrice);
  } else {
    var totalRoomPrice = roomPrice;
  }
  var totalCost = (totalRoomPrice * Difference_In_Days).toFixed(2);
  document.getElementById("stayLength").value = Difference_In_Days;
  document.getElementById("stayPrice").value = totalCost;
}



