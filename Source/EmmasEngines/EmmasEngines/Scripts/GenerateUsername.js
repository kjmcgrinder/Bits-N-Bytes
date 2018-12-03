function Init() {
    document.getElementById("fname").onfocusout = GenerateUsername;
    document.getElementById("lname").onfocusout = GenerateUsername;
}

function GenerateUsername() {
    if (document.getElementById("confirmPassword").className != "aspNetDisabled") {
        id = parseInt(document.getElementById("MaxID").value) + 1;
        firstName = document.getElementById("fname").value;
        document.getElementById("username").value = (firstName.length > 0 ? firstName[0] : "") + document.getElementById("lname").value + id;
    }
}