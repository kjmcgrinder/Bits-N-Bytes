<%@ Page Title="Orders" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="EmmasEngines.Orders" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="IndexHeaderA">Orders</h3>
    <br />
    <br />
    <br />
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
        </asp:GridView>
        <br />


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
        </asp:GridView>
        <br />

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
</asp:Content>
