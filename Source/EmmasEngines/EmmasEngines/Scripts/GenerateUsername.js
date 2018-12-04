function Init() {
    if (document.title == "Edit Employee") {
        document.getElementById("MainContent_fname").onfocusout = GenerateUsername;
        document.getElementById("MainContent_lname").onfocusout = GenerateUsername;
    }
}

function GenerateUsername() {
    if (document.getElementById("MainContent_confirmPassword").className != "aspNetDisabled") {
        id = parseInt(document.getElementById("MainContent_MaxID").value) + 1;
        firstName = document.getElementById("MainContent_fname").value;
        document.getElementById("MainContent_username").value = (firstName.length > 0 ? firstName[0] : "") + document.getElementById("MainContent_lname").value + id;
    }
}