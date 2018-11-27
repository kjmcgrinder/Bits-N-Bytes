<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Repairs.aspx.cs" Inherits="EmmasEngines.Repairs1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><%: Page.Title %>Repairs</title>
</head>
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
    <!-- Form -->
    <form id="form1" runat="server" class="secondary">
        <div>
            <h3 class ="IndexHeaderA">Repairs</h3>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Repair-Details.aspx">Details</asp:HyperLink>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="RepairDataSource">
            <Columns>
                <asp:BoundField DataField="Date Received" HeaderText="Date Received" SortExpression="Date Received" />
                <asp:BoundField DataField="Date Completed" HeaderText="Date Completed" SortExpression="Date Completed" />
                <asp:BoundField DataField="Issue Description" HeaderText="Issue Description" SortExpression="Issue Description" />
                <asp:CheckBoxField DataField="Has Warranty" HeaderText="Has Warranty" SortExpression="Has Warranty" />
                <asp:BoundField DataField="Equipment Model" HeaderText="Equipment Model" SortExpression="Equipment Model" />
                <asp:BoundField DataField="Customer Name" HeaderText="Customer Name" ReadOnly="True" SortExpression="Customer Name" />
                <asp:BoundField DataField="Customer Phone" HeaderText="Customer Phone" SortExpression="Customer Phone" />
                <asp:BoundField DataField="Customer Email" HeaderText="Customer Email" SortExpression="Customer Email" />
                <asp:BoundField DataField="Employee Name" HeaderText="Employee Name" ReadOnly="True" SortExpression="Employee Name" />
                <asp:BoundField DataField="Equipment Serial Number" HeaderText="Equipment Serial Number" SortExpression="Equipment Serial Number" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="RepairDataSource" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Emmas.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT service_order.serordDateIn AS 'Date Received', service_order.serordDateOut AS 'Date Completed', service_order.serordIssue AS 'Issue Description', service_order.serordWarranty AS 'Has Warranty', equipment.equModel AS 'Equipment Model', customer.custFirst + ' ' + customer.custLast AS 'Customer Name', customer.custPhone AS 'Customer Phone', customer.custEmail AS 'Customer Email', employee.empFirst + ' ' + employee.empLast AS 'Employee Name', equipment.equSerial AS 'Equipment Serial Number' FROM service_order INNER JOIN employee ON service_order.empID = employee.id INNER JOIN equipment ON service_order.equipID = equipment.id INNER JOIN customer ON equipment.custID = customer.id"></asp:SqlDataSource>
    </form>
</body>
</html>
