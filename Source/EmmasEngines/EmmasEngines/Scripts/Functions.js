function GenerateUsername() {
    if (document.getElementById("MainContent_confirmPassword").className != "aspNetDisabled") {
        id = parseInt(document.getElementById("MainContent_MaxID").value) + 1;
        firstName = document.getElementById("MainContent_fname").value;
        document.getElementById("MainContent_username").value = (firstName.length > 0 ? firstName[0] : "") + document.getElementById("MainContent_lname").value + id;
    }
}

function SearchListBox(txtId, lbxId) {
    var name = document.getElementById(txtId).value;
    var selectBox = document.getElementById(lbxId);
    for (var opt of selectBox.options) {
        if (opt.text.toLowerCase().includes(name.toLowerCase()))
            opt.style.display = null;
        else
            opt.style.display = "none";
    }
}

function PurchaseInit() {
    document.getElementById("MainContent_txtTotal").onfocus = function () { this.blur(); }    
    document.getElementById("searchC").onkeyup = function () { SearchListBox(this.id, "MainContent_ListBox2") };
    if (document.getElementById("searchP") != null) {
        document.getElementById("searchP").onkeyup = function () { SearchListBox(this.id, "MainContent_lbxSelectProduct") };
        var selectBox = document.getElementById("MainContent_lbxSelectProduct")
        for (opt of selectBox.options) {
            opt.ondblclick = selectBox.onchange;
        }

        selectBox.onchange = null;
        var cost = 0;
        if (document.getElementById("MainContent_gvSelectedProductsSales") != null) {
            inputs = document.getElementsByTagName("input");
            
            for (inpt of inputs) {
                if (inpt.type == "number" && inpt.id.includes("gvSelectedProductsSales")) {
                    inpt.onchange = CalculateTotal;
                    inpt.title = 0;
                    var row = inpt.parentElement.parentElement.getElementsByTagName("td");
                    cost += inpt.value * row[4].innerHTML;
                }
            }            
        }
        document.getElementById("MainContent_txtTotal").value = cost.toFixed(2);
    }
}

function CalculateTotal() {
    var txtTotal = document.getElementById("MainContent_txtTotal");
    var rows = this.parentElement.parentElement.getElementsByTagName("td");
    if (this.value < 0)
        this.value = 0;
    var cost = (this.value - parseInt(this.title)) * rows[4].innerHTML;
    this.title = this.value;
    if (this.value > rows[5].value)
        cost *= 1.01;
    if (txtTotal.value.length == 0)
        txtTotal.value = cost.toFixed(2);
    else
        txtTotal.value = (parseFloat(txtTotal.value) + cost).toFixed(2);
    theForm[this.id] = this.value;
}