document.addEventListener("DOMContentLoaded", function() {
    // Fetch the error message element
    var errorMessage = document.querySelector("center font[color='red'] p");
    
    // Fetch the 'butt' div
    var buttDiv = document.querySelector("h1");
    
    // Insert the error message above the 'butt' div
    if (errorMessage && buttDiv) {
        buttDiv.parentNode.insertBefore(errorMessage, buttDiv);
        errorMessage.style.color = "red";
    }
});

var serverSideValidationPassed = true;

function validateForm() {
    if (!serverSideValidationPassed) {
        alert("Server-side validation failed. Please check your inputs.");
        return false;
    }

    var mobileNumber = document.getElementsByName("mob")[0].value;
    var errorMessage = "";

    // Regular expression to check if the mobile number contains string values
    var mobileRegex = /[a-zA-Z]/;

    if (mobileRegex.test(mobileNumber)) {
        errorMessage = "Mobile number should only contain numeric values!!";

        // Fetch the 'butt' div
        var buttDiv = document.querySelector("h1");

        // Create a new error message element
        var newErrorMessage = document.createElement("p");
        newErrorMessage.textContent = errorMessage;
        newErrorMessage.style.color = "red";
        newErrorMessage.style.textAlign = "center";

        // Insert the new error message above the 'butt' div
        if (buttDiv) {
            buttDiv.parentNode.insertBefore(newErrorMessage, buttDiv);
        }

        // alert(errorMessage);
        return false;
    } else {
        return true;
    }
}
