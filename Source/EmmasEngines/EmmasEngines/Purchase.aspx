﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Purchase.aspx.cs" Inherits="EmmasEngines.Purchase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Purchase</title>
</head>
<link href="Style/stylePurchase.css" rel="stylesheet" />
<link href="Style/style.css" rel="stylesheet" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<body>

    <!--Nav Bar-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Emma's Small Engines</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="Default2.aspx">Home</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Sales
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="Sale-Repair.aspx">Sale / Repair</a>
          <a class="dropdown-item" href="Sales.aspx">Customer Management</a>
        </div>
      </li> 
      <li class="nav-item">
        <a class="nav-link" href="Repairs.aspx">Repairs</a>
      </li> 
        <li class="nav-item">
        <a class="nav-link" href="Inventory.aspx">Inventory</a>
      </li>
        <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Admin
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="Users.aspx">User Management</a>
          <a class="dropdown-item" href="Reports.aspx">Reports</a>
        </div>
      </li>
    </ul>
        <a class="nav-link" href="Login.aspx">Logout</a>
  </div>
</nav><br />

      <form id="form1" runat="server" class ="secondary">

          <div class="col-50">
            <h3 class="IndexHeaderA">Purchase</h3>
            <label for="fname">Service</label><br />
            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="246px"></asp:DropDownList><br />
              
            <label for="cname">Customer</label>&nbsp;<br />
            <input type="text" name="search" placeholder="Search.." class="searchinput"/><br />
             <asp:ListBox ID="ListBox2" runat="server" Width="394px"></asp:ListBox><br /><br />

            <label for="cname">Products</label><br />
            <input type="text" name="search" placeholder="Search.." class="searchinput"/><br />
            <asp:DropDownList ID="DropDownList3" runat="server" Height="21px" Width="248px"></asp:DropDownList><br /><br />

              <label for="cname">Parts</label>&nbsp;<br />
            <input type="text" name="search" placeholder="Search.." class="searchinput" /><br />
              <asp:ListBox ID="ListBox1" runat="server" Width="399px"></asp:ListBox><br /><br />

            <label for="cname">Repair Description</label>&nbsp;<br />
            <asp:TextBox ID="TextBox1" runat="server" Height="107px" Width="367px"></asp:TextBox><br /><br />

            <label for="cname">Warrenty</label>&nbsp;<br />
              <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="394px">
                  <asp:ListItem Value="1">Yes</asp:ListItem>
                  <asp:ListItem Value="2">No</asp:ListItem>
              </asp:RadioButtonList>
&nbsp;<div class="row">
              <div class="col-50">
                <label for="cvv">Total:</label><br />
                <input type="text" id="cvv" name="cvv" placeholder="Total" readonly="true"/><br />
                  <asp:Button ID="Button1" runat="server" Text="Finish" CssClass="IndexButton" Width="404px" />
              </div>
            </div>
          </div>
        &nbsp;</form>

            <%--If there is not a product on the inventory This will redirect us to the ordering page--%>

</body>
</html>
