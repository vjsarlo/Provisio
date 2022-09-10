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
  var Difference_In_Time = new Date(endDate).getTime() - new Date(startDate).getTime();
  var Difference_In_Days = Difference_In_Time / (1000 * 3600 * 24);
  var roomPrice = $('#result-room option:selected').attr('room-price');

  var totalCost = roomPrice * Difference_In_Days;
  document.getElementById("stayLength").value = Difference_In_Days;
  document.getElementById("stayPrice").value = totalCost;
} 



