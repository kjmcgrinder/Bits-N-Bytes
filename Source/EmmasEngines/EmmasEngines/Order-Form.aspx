<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order-Form.aspx.cs" Inherits="EmmasEngines.Order_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Purchase</title>
</head>
<link href="Style/Form-Style.css" rel="stylesheet" />
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
</nav>


    <div class ="secondary">
    <div class="container">
  <form runat="server">
      <h3 class="IndexHeaderA">Order Form</h3><br /><br /><br /><br />
            
    <div class="row">
      <div class="col-25">
         <label for="searchC">Part:</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox1" runat="server" Width="80%"></asp:TextBox><br />
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="searchP">Brand:</label>
      </div>
      <div class="col-75">
        <asp:TextBox ID="TextBox2" runat="server" Width="80%"></asp:TextBox><br />
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="searchPt">Quantity:</label>
      </div>
      <div class="col-75">
        <asp:TextBox ID="TextBox3" runat="server" Width="80%"></asp:TextBox><br />
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="size">Size:</label>
      </div>
      <div class="col-75">
        <asp:TextBox ID="TextBox4" runat="server" Width="80%"></asp:TextBox><br />
      </div>
    </div>
      <div class="row">
      <div class="col-25">
          <asp:Button ID="submit" runat="server" Text="Submit" CssClass="IndexButton" />
      </div>
      </div>
  </form>
</div>
</div>
    </body>
</html>
