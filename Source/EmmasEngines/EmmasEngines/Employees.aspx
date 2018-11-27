<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="EmmasEngines.Employees" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - Create Employee</title>
   
    <link href="Style/stylePurchase.css" rel="stylesheet" />
    <link href="Style/style.css" rel="stylesheet" />
   <link href="Style/style.css" rel="stylesheet" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</head>
<body>
 <form runat="server" class="IndexCentering">
    <div class="secondary">    
        <div class="row">
  <div class="col-75">
    <div class="container">
      

        <div class="row">
          <div class="col-50"><br />
            <h3 class="IndexHeaderA">Create Employee</h3><br /><br /><br />
            <label for="fname"><i class="fa fa-user"></i> First Name</label><br />
            <input type="text" id="fname" name="firstname" placeholder="John"><br />

            <label for="lname"><i class="fa fa-user"></i> Last Name</label><br />
            <input type="text" id="lname" name="firstname" placeholder="Doe"><br />

            <label for="email"><i class="fa fa-envelope"></i> Email</label><br />
            <input type="text" id="email" name="email" placeholder="john@example.com"><br />

            <label for="adr"><i class="fa fa-user"></i> Username</label><br />
            <input type="text" id="username" name="username" placeholder="Enter Username"><br />

            <label for="city" class="IndexCentering"><i class="fa fa-address-card-o"></i> Password</label><br />
            <input type="text" id="password" name="password" placeholder="Enter Password"><br />

            <div class="row">
              <div class="col-50">
                <label for="city">Phone</label><br />
                <input type="text" id="phone" name="phone" placeholder="999-999-9999">
              </div>
            </div>  
              <div class="row-50">
                <div class="IndexCentering">
                <asp:Button ID="Button1" runat="server" CssClass="IndexButton" Text="Enter" Width="316px" />
                </div>
               </div>
            
          </div>


        </div>
        &nbsp;</div>
  </div>           
</div>
    <footer>
        <small>Copyright &copy; 2018 Bits N' Bytes. All rights reserved.</small>
    </footer>
    </form>
</body>
</html>
