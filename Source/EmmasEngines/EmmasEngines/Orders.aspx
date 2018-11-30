<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="EmmasEngines.Orders" %>

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
            <h3 class ="IndexHeaderA">Orders</h3><br /><br /><br />
        <div style="margin-right: 20px; margin-left: 20px;">
        <h4 class="IndexCentering">Order Requests</h4>
        
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="order_line_id,inventory_id,product_id" DataSourceID="SqlDataSource1" Width="100%" AllowPaging="True" PageSize="15" AllowSorting="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="prodName" HeaderText="Product Name" SortExpression="prodName" />
                    <asp:BoundField DataField="prodBrand" HeaderText="Product Brand" SortExpression="prodBrand" />
                    <asp:BoundField DataField="invQuantity" HeaderText="Current Quantity" SortExpression="invQuantity" />
                    <asp:BoundField DataField="orlQuantity" HeaderText="Order Request Quantity" SortExpression="orlQuantity" />
                    <asp:BoundField DataField="orlPrice" DataFormatString="{0:c}" HeaderText="Price" SortExpression="orlPrice" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView><br />
        
            
            <h4 class="IndexCentering">Ordered</h4>
             
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id,id1" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Width="100%" AllowPaging="True" PageSize="15" AllowSorting="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="pordNumber" HeaderText="Order Number" SortExpression="pordNumber" />
                    <asp:BoundField DataField="onordInvoiceNum" HeaderText="Invoice Number" SortExpression="onordInvoiceNum" />
                    <asp:BoundField DataField="pordDateOrdered" HeaderText="Date Ordered" SortExpression="pordDateOrdered" />
                    <asp:BoundField DataField="onordArriveDate" HeaderText="Arrival Date" SortExpression="onordArriveDate" />
                    <asp:BoundField DataField="onordPrice" HeaderText="Price" SortExpression="onordPrice" />
                    <asp:CheckBoxField DataField="pordPaid" HeaderText="Paid" SortExpression="pordPaid" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView><br />

        <h4 class="IndexCentering">Previous Orders</h4>
            <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Expr1,id,Expr2" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" PageSize="15" Width="100%" AllowSorting="True">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="pordNumber" HeaderText="Order Number" SortExpression="pordNumber" />
                    <asp:BoundField DataField="pordDateOrdered" HeaderText="Date Ordered" SortExpression="pordDateOrdered" />
                    <asp:BoundField DataField="prodName" HeaderText="Product" SortExpression="prodName" />
                    <asp:BoundField DataField="prodBrand" HeaderText="Brand" SortExpression="prodBrand" />
                    <asp:BoundField DataField="invQuantity" HeaderText="Quantity" SortExpression="invQuantity" />
                    <asp:BoundField DataField="invSize" HeaderText="Size" SortExpression="invSize" />
                    <asp:BoundField DataField="invMeasure" HeaderText="Measure" SortExpression="invMeasure" />
                    <asp:BoundField DataField="invPrice" HeaderText="Price" SortExpression="invPrice" DataFormatString="{0:c}" />
                    <asp:CheckBoxField DataField="pordPaid" HeaderText="pordPaid" SortExpression="pordPaid" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
            </div>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT order_line.id AS order_line_id, order_line.orlPrice, order_line.orlQuantity, order_line.inventoryID, inventory.productID, inventory.invQuantity, inventory.id AS inventory_id, product.id AS product_id, product.prodName, product.prodBrand FROM order_line INNER JOIN inventory ON order_line.inventoryID = inventory.id INNER JOIN product ON inventory.productID = product.id"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT prod_order.id AS Expr1, prod_order.pordNumber, prod_order.pordDateOrdered, prod_order.pordPaid, inventory.id, inventory.invQuantity, inventory.invSize, inventory.invMeasure, inventory.invPrice, inventory.productID, product.prodName, product.prodBrand, product.id AS Expr2 FROM product INNER JOIN inventory ON product.id = inventory.productID CROSS JOIN prod_order"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT on_order.*, prod_order.* FROM on_order INNER JOIN prod_order ON on_order.prodorderID = prod_order.id"></asp:SqlDataSource>
    </form>
</body>
</html>
