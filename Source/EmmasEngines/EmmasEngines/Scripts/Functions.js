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

function Init() {
    var selectBox = document.getElementById("MainContent_lbxSelectProduct")
    for (opt of selectBox.options) {
        opt.ondblclick = selectBox.onchange;
    }
    selectBox.onchange = null;
    if (document.getElementById("MainContent_gvSelectedProductsSales") != null) {
        inputs = document.getElementsByTagName("input");
        for (inpt of inputs) {
            if (inpt.type == "number" && inpt.id.includes("gvSelectedProductsSales")) 
                inpt.onchange = CalculateTotal;                            
        }
    }
    document.getElementById("MainContent_txtTotal").onfocus = function () { this.blur(); }
}

function CalculateTotal() {
    var txtTotal = document.getElementById("MainContent_txtTotal");
    var rows = this.parentElement.parentElement.getElementsByTagName("td");
    var cost = this.value * rows[3].innerHTML;
    if (this.value > rows[4].value)
        cost *= 1.01;
    if (txtTotal.value.length == 0)
        txtTotal.value = cost;
    else
        txtTotal.value = parseFloat(txtTotal.value) + cost;
    theForm[this.id] = this.value;
}