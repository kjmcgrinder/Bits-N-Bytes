<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Repairs.aspx.cs" Inherits="EmmasEngines.Repairs" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - Repairs</title>
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
          <a class="dropdown-item" href="SearchCustomer.aspx">Customer Management</a>
        </div>
      </li> 
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Services
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="Repairs.aspx">Repairs</a>
          <a class="dropdown-item" href="Reports.aspx">Reports</a>
        </div>
      </li> 
        <li class="nav-item">
        <a class="nav-link" href="Users.aspx">Users</a>
      </li>
        <li class="nav-item">
        <a class="nav-link" href="Inventory.aspx">Inventory</a>
      </li>
    </ul>
        <a class="nav-link" href="Login.aspx">Logout</a>
  </div>
</nav>
     <form id="form1" runat="server" class="secondary">
          <div><br />
            <h5 class="IndexTitle">Search Customer by Phone Number: </h5>
              
            <%--Framework Scripts--%>
              <h5 class="subScript">Phone Number:
                  <br />
                  <asp:TextBox ID="txtPhoneNumber" runat="server" Width="168px" CssClass="inputBox" TextMode="Phone"></asp:TextBox>
                  <asp:Button ID="Button2" runat="server" Text="Search" CssClass="IndexButton" Height="53px" Width="107px" />
              </h5>
              <asp:ListBox ID="ListBox1" runat="server" Height="122px" Width="419px"></asp:ListBox>
        </div>
        <br />
        <div>
        </div>
    

        <h5>Description of the problem:</h5>
         <textarea id="TextArea1" name="S1"></textarea><br />
         
        <%--<textarea id="txtDespcription" cols="20" rows="2"></textarea>--%>
        <h5>Equipment:</h5>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="inputBox" Height="17px" Width="145px"></asp:TextBox>
         
        <%--<asp:TextBox ID="txtEquiment" runat="server"></asp:TextBox> --%>
       
        <h5>Manufacturer:</h5>
         <asp:TextBox ID="TextBox2" runat="server" CssClass="inputBox" OnTextChanged="TextBox2_TextChanged" Height="16px" Width="144px"></asp:TextBox>
        <%--<asp:DropDownList ID="ddlManufacturer" runat="server"></asp:DropDownList>--%>
        <h5>Warranty?</h5>
         <input type="checkbox" name="yes/no" value="Yes">Yes     
         <input type="checkbox" name="yes/no" value="No">No<br />
          <%--<asp:CheckBox ID="cbWarranty" runat="server" /> Yes <br />--%>
        <%--<asp:Button ID="btnSubmit" runat="server" Text="Submit" PostBackUrl="~/RepairsDeparment.aspx" />--%>
        
         <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="IndexButton" />
        
    </form>
    <section>
        <%--<h3>Details/Delete Navigation</h3>--%>
    </section>

    <footer>
        <small>Copyright &copy; 2018 Bits N' Bytes. All rights reserved.</small>
    </footer>
    
</body>
</html>
