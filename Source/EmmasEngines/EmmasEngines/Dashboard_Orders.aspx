<%@ Page Title="Dashboard_Orders" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard_Orders.aspx.cs" Inherits="EmmasEngines.Dashboard_Orders" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link" href="Dashboard.aspx"">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="Dashboard_Customers.aspx">Customers</a>
  </li>
    <li class="nav-item">
    <a class="nav-link " href="Dashboard_Employees.aspx">Employees</a>
  </li>
 <%-- <li class="nav-item">
    <a class="nav-link" href="Dashboard_Sales.aspx">Sales</a>
  </li>--%>
  <li class="nav-item">
    <a class="nav-link active" href="Dashboard_Orders.aspx">Orders</a>
  </li>
</ul>

    <%--A Quite simplistic current Orders Search Form--%>
    <%--Previous orders redirect--%>
    <h3 class="IndexHeaderA">Order Requests</h3>
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
        </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT order_line.id AS order_line_id, order_line.orlPrice, order_line.orlQuantity, order_line.inventoryID, inventory.productID, inventory.invQuantity, inventory.id AS inventory_id, product.id AS product_id, product.prodName, product.prodBrand FROM order_line INNER JOIN inventory ON order_line.inventoryID = inventory.id INNER JOIN product ON inventory.productID = product.id"></asp:SqlDataSource>
</asp:Content>
