﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Repairs.aspx.cs" Inherits="EmmasEngines.Repairs1" %>

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
    <form id="form1" runat="server" class="secondary">
        <div>
            <h3 class ="IndexHeaderA">Repairs</h3>
        </div>
        <div id="repair-table" style="margin-right: 20px; margin-left: 20px;">
            <asp:GridView ID="repairGridview" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="RepairDataSource" CssClass="table" HorizontalAlign="Left" BorderStyle="None" GridLines="None">
                <AlternatingRowStyle BackColor="#CBD2DA" />
                <Columns>
                    <asp:BoundField DataField="Received" HeaderText="Received" SortExpression="Received" />
                    <asp:BoundField DataField="Completed" HeaderText="Completed" SortExpression="Completed" />
                    <asp:BoundField DataField="Issue" HeaderText="Issue" SortExpression="Issue" />
                    <asp:CheckBoxField DataField="Has Warranty" HeaderText="Has Warranty" SortExpression="Has Warranty" />
                    <asp:BoundField DataField="Equipment Model" HeaderText="Equipment Model" SortExpression="Equipment Model" />
                    <asp:BoundField DataField="Customer" HeaderText="Customer" ReadOnly="True" SortExpression="Customer" />
                    <asp:BoundField DataField="Customer Phone" HeaderText="Customer Phone" SortExpression="Customer Phone" />
                    <asp:BoundField DataField="Customer Email" HeaderText="Customer Email" SortExpression="Customer Email" />
                    <asp:BoundField DataField="Employee" HeaderText="Employee" ReadOnly="True" SortExpression="Employee" />
                    <asp:BoundField DataField="Equipment Serial Num" HeaderText="Equipment Serial Num" SortExpression="Equipment Serial Num" />
                    <asp:HyperLinkField NavigateUrl="Repair-Details.aspx" Text="Details" />
                </Columns>
                <HeaderStyle BackColor="#79A6D2" BorderColor="#E9ECEF" BorderStyle="Outset" BorderWidth="5px" Font-Bold="True" Font-Size="Medium" ForeColor="White" />
                <RowStyle BackColor="#E9ECEF" Font-Size="Small" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="RepairDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Emmas.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [service_order] WHERE [id] = @original_id AND (([serordDateIn] = @original_serordDateIn) OR ([serordDateIn] IS NULL AND @original_serordDateIn IS NULL)) AND (([serordDateOut] = @original_serordDateOut) OR ([serordDateOut] IS NULL AND @original_serordDateOut IS NULL)) AND (([serordIssue] = @original_serordIssue) OR ([serordIssue] IS NULL AND @original_serordIssue IS NULL)) AND (([serordWarranty] = @original_serordWarranty) OR ([serordWarranty] IS NULL AND @original_serordWarranty IS NULL)) AND [receiptID] = @original_receiptID AND [serviceID] = @original_serviceID AND [equipID] = @original_equipID AND [empID] = @original_empID" InsertCommand="INSERT INTO [service_order] ([serordDateIn], [serordDateOut], [serordIssue], [serordWarranty], [receiptID], [serviceID], [equipID], [empID]) VALUES (@serordDateIn, @serordDateOut, @serordIssue, @serordWarranty, @receiptID, @serviceID, @equipID, @empID)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT service_order.serordDateIn AS 'Received', service_order.serordDateOut AS 'Completed', service_order.serordIssue AS 'Issue', service_order.serordWarranty AS 'Has Warranty', equipment.equModel AS 'Equipment Model', customer.custFirst + ' ' + customer.custLast AS 'Customer', customer.custPhone AS 'Customer Phone', customer.custEmail AS 'Customer Email', employee.empFirst + ' ' + employee.empLast AS 'Employee', equipment.equSerial AS 'Equipment Serial Num' FROM service_order INNER JOIN employee ON service_order.empID = employee.id INNER JOIN equipment ON service_order.equipID = equipment.id INNER JOIN customer ON equipment.custID = customer.id" UpdateCommand="UPDATE [service_order] SET [serordDateIn] = @serordDateIn, [serordDateOut] = @serordDateOut, [serordIssue] = @serordIssue, [serordWarranty] = @serordWarranty, [receiptID] = @receiptID, [serviceID] = @serviceID, [equipID] = @equipID, [empID] = @empID WHERE [id] = @original_id AND (([serordDateIn] = @original_serordDateIn) OR ([serordDateIn] IS NULL AND @original_serordDateIn IS NULL)) AND (([serordDateOut] = @original_serordDateOut) OR ([serordDateOut] IS NULL AND @original_serordDateOut IS NULL)) AND (([serordIssue] = @original_serordIssue) OR ([serordIssue] IS NULL AND @original_serordIssue IS NULL)) AND (([serordWarranty] = @original_serordWarranty) OR ([serordWarranty] IS NULL AND @original_serordWarranty IS NULL)) AND [receiptID] = @original_receiptID AND [serviceID] = @original_serviceID AND [equipID] = @original_equipID AND [empID] = @original_empID">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_serordDateIn" />
                <asp:Parameter DbType="Date" Name="original_serordDateOut" />
                <asp:Parameter Name="original_serordIssue" Type="String" />
                <asp:Parameter Name="original_serordWarranty" Type="Boolean" />
                <asp:Parameter Name="original_receiptID" Type="Int32" />
                <asp:Parameter Name="original_serviceID" Type="Int32" />
                <asp:Parameter Name="original_equipID" Type="Int32" />
                <asp:Parameter Name="original_empID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter DbType="Date" Name="serordDateIn" />
                <asp:Parameter DbType="Date" Name="serordDateOut" />
                <asp:Parameter Name="serordIssue" Type="String" />
                <asp:Parameter Name="serordWarranty" Type="Boolean" />
                <asp:Parameter Name="receiptID" Type="Int32" />
                <asp:Parameter Name="serviceID" Type="Int32" />
                <asp:Parameter Name="equipID" Type="Int32" />
                <asp:Parameter Name="empID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="serordDateIn" />
                <asp:Parameter DbType="Date" Name="serordDateOut" />
                <asp:Parameter Name="serordIssue" Type="String" />
                <asp:Parameter Name="serordWarranty" Type="Boolean" />
                <asp:Parameter Name="receiptID" Type="Int32" />
                <asp:Parameter Name="serviceID" Type="Int32" />
                <asp:Parameter Name="equipID" Type="Int32" />
                <asp:Parameter Name="empID" Type="Int32" />
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_serordDateIn" />
                <asp:Parameter DbType="Date" Name="original_serordDateOut" />
                <asp:Parameter Name="original_serordIssue" Type="String" />
                <asp:Parameter Name="original_serordWarranty" Type="Boolean" />
                <asp:Parameter Name="original_receiptID" Type="Int32" />
                <asp:Parameter Name="original_serviceID" Type="Int32" />
                <asp:Parameter Name="original_equipID" Type="Int32" />
                <asp:Parameter Name="original_empID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <p>
            <asp:Button ID="Button1" runat="server" Text="New Repair" CssClass="btn" PostBackUrl="~/Repairs-Form.aspx" />
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
