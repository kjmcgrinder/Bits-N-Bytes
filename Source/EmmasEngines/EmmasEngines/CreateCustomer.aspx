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
    <style>
        select {
            margin-bottom: 20px;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 3px;
            width: 225px;
        }
    </style>
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
        <a class="nav-link" href="Default.aspx">Home</a>
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
    <!-- Form -->
    <div class="secondary">
    <form runat="server" class="IndexCentering">
     
        <div class="row">
  <div class="col-75">
    <div class="container">
      

        <div class="row">
          <div class="col-50"><br />
            <h3 class="IndexHeaderA"><asp:Label ID="lblHeader" runat="server">Create Customer</asp:Label></h3><br /><br /><br />
            <label for="fname"><i class="fa fa-user"></i> First Name</label><br />
            <asp:TextBox ID="fname" runat="server" placeholder="John"></asp:TextBox><br />

            <label for="lname"><i class="fa fa-user"></i> Last Name</label><br />
            <asp:TextBox ID="lname" runat="server" placeholder="Doe"></asp:TextBox><br />

            <label for="email"><i class="fa fa-envelope"></i> Email</label><br />
            <asp:TextBox ID="email" runat="server" placeholder="john@example.com"></asp:TextBox><br />

            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label><br />
            <asp:TextBox ID="adr" placeholder="542 W. 15th Street" runat="server"></asp:TextBox><br />

            <label for="city" class="IndexCentering"><i class="fa fa-address-card-o"></i> City</label><br />
            <asp:TextBox ID="City" runat="server" placeholder="New York"></asp:TextBox><br />
              
              <div class="col-50">
                <label for="zip">Postal Code</label><br />
                <asp:TextBox ID="zip" runat="server" placeholder="A1A 1A1"></asp:TextBox>
                  
              </div>
              <div class="col-50">
                <label for="Phone">Phone</label><br />
                <asp:TextBox ID="Phone" runat="server" placeholder="123-456-7890"></asp:TextBox>
                  
              </div>
                <div class="IndexCentering">
                <asp:Button ID="Button1" runat="server" CssClass="IndexButton" Text="Enter" Width="316px" OnClick="Button1_Click" />
                </div>
            </div>          


        </div>
        &nbsp;</div>
  </div>
            <footer>
        <small>Copyright &copy; 2018 Bits N' Bytes. All rights reserved.</small>
    </footer>
</div>
    </form>
    </div>
</body>
</html>
