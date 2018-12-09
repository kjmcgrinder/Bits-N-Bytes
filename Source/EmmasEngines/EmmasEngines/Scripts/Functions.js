function GenerateUsername() {
    if (document.getElementById("MainContent_confirmPassword").className != "aspNetDisabled") {
        id = parseInt(document.getElementById("MainContent_MaxID").value) + 1;
        firstName = document.getElementById("MainContent_fname").value;
        document.getElementById("MainContent_username").value = (firstName.length > 0 ? firstName[0] : "") + document.getElementById("MainContent_lname").value + id;
    }
}

function SearchCustomer() {
    var name = document.getElementById("searchC").value;
    var selectBox = document.getElementById("MainContent_ListBox2");    
    for (var i = 0; i < selectBox.options.length; i++) {
        if (selectBox.options[i].text.toLowerCase().includes(name.toLowerCase())) {
            selectBox.selectedIndex = i;
            break;
        }

    }
}