<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateCustomer.aspx.cs" Inherits="EmmasEngines.CreateCustomer" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - Create Customer</title>
   
    <link href="Style/stylePurchase.css" rel="stylesheet" />
    <link href="Style/style.css" rel="stylesheet" />
   <link href="Style/style.css" rel="stylesheet" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</head>
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
</nav>
    <!-- Form -->
    <form runat="server" class="IndexCentering">
        <div class="row">
  <div class="col-75">
    <div class="container">
      

        <div class="row">
          <div class="col-50"><br />
            <h3 class="IndexHeaderA">Create Customer</h3><br /><br /><br />
            <label for="fname"><i class="fa fa-user"></i> First Name</label><br />
            <input type="text" id="fname" name="firstname" placeholder="John"><br />

            <label for="lname"><i class="fa fa-user"></i> Last Name</label><br />
            <input type="text" id="lname" name="firstname" placeholder="Doe"><br />

            <label for="email"><i class="fa fa-envelope"></i> Email</label><br />
            <input type="text" id="email" name="email" placeholder="john@example.com"><br />

            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label><br />
            <input type="text" id="adr" name="address" placeholder="542 W. 15th Street"><br />

            <label for="city" class="IndexCentering"><i class="fa fa-address-card-o"></i> Phone</label><br />
            <input type="text" id="City" name="city" placeholder="New York"><br />

            <div class="row">
              <div class="col-50">
                <label for="state">State</label><br />
                <input type="text" id="state" name="state" placeholder="NY">
              </div>
              <div class="col-50">
                <label for="zip">Zip</label><br />
                <input type="text" id="zip" name="zip" placeholder="10001">
                  
              </div>
                <div class="IndexCentering">
                <asp:Button ID="Button1" runat="server" CssClass="IndexButton" Text="Enter" Width="316px" />
                </div>
            </div>
          </div>


        </div>
        &nbsp;</div>
  </div>

    </form>
    <footer>
        <small>Copyright &copy; 2018 Bits N' Bytes. All rights reserved.</small>
    </footer>
</body>
</html>
