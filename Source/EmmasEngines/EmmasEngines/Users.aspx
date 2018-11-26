<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="EmmasEngines.Users" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - Users</title>
<link href="Style/style.css" rel="stylesheet" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</head>

<body>
    <form runat="server" class="secondary">
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
          <a class="dropdown-item" href="Repairs.aspx">User Management</a>
          <a class="dropdown-item" href="Reports.aspx">Reports</a>
        </div>
      </li>
    </ul>
        <a class="nav-link" href="Login.aspx">Logout</a>
  </div>
</nav>

    <div class="jumbotron">
       
        <h1 class="display-4">Admin</h1>
        <p class="lead">User Management</p>
        <hr class="my-4"/>
    </div>
    <div class="row">
        <div class="col-sm-6">
            <div class="card">
                <div class="card-body"> 
                    <%--Ddl to find employee by department:--%>
                    <h2 class="card-title">Search Employees by Deparment:</h2>
                    <p class="card-text"><asp:DropDownList ID="ddlDeparment" runat="server"></asp:DropDownList></p>
                    <%--<a href="#" class="btn btn-primary">Search</a>--%>
                  </div>
             </div>
        </div>
        <div class="col-sm-6">
            <div class="card">
                <div class="card-body">
                    <h2 class="card-title">Create Employee:</h2>
                    <a href="Employees.aspx" class="btn btn-primary">Start</a>
                </div>
            </div>
        </div>
    </div>
              
      
        
        <%--Grid view to see the list of the emplooyees and be able to edit(NEed to add ddl to choose position after the data set is placed)--%>
    <div class="IndexCentering">    
        <asp:GridView ID="gvEmployees" runat="server"></asp:GridView>
    </div>
    </form>
    <footer>
        <small>Copyright &copy; 2018 Bits N' Bytes. All rights reserved.</small>
    </footer>

</body>
</html>
