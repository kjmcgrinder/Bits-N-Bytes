<%@ Page Title="Inventory" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="EmmasEngines.Inventory" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="IndexHeaderA">Inventory</h3>
    <div style="margin-right: 20px; margin-left: 20px;">
        <asp:Button ID="Button1" runat="server" Text="Order Stock" CssClass="btn btn-primary btn-sm" PostBackUrl="~/OrderForm.aspx" />
        <asp:Button ID="Button2" runat="server" Text="View Orders" CssClass="btn btn-secondary btn-sm" OnClick="Button2_Click" PostBackUrl="~/Orders.aspx" /><br />
        <br />
        <b>Product Name:</b>
        <br />
        <asp:DropDownList ID="ddlProduct" runat="server" Height="25px" Width="180px" AutoPostBack="True" DataSourceID="dbProducts" DataTextField="prodName" DataValueField="prodName" EnableViewState="False" CssClass="dropdown">
            <asp:ListItem Selected="True" Value="Select a Product">Select a Product</asp:ListItem>
        </asp:DropDownList><br />
        <br />
        <b>
            <asp:Label ID="Label1" runat="server" Text="Products In Stock:"></asp:Label></b><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id,Expr1" DataSourceID="SqlDataSource4" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="prodName" HeaderText="Name" SortExpression="prodName" />
                <asp:BoundField DataField="prodBrand" HeaderText="Brand" SortExpression="prodBrand" />
                <asp:BoundField DataField="invQuantity" HeaderText="Quantity" SortExpression="invQuantity" />
                <asp:BoundField DataField="invPrice" HeaderText="Price" SortExpression="invPrice" DataFormatString="{0:c}" />
                <asp:BoundField DataField="Size" HeaderText="Size" ReadOnly="True" SortExpression="Size" />
                <asp:BoundField DataField="prodDescription" HeaderText="Description" SortExpression="prodDescription" />
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
        <asp:SqlDataSource ID="dbProducts" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT DISTINCT prodName FROM product ORDER BY prodName"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT product.id, product.prodName, product.prodBrand, inventory.productID, inventory.invQuantity, inventory.invPrice, product.prodDescription, CONVERT(varchar,inventory.invSize) + ' /  ' + CONVERT(varchar,inventory.invMeasure) as Size, inventory.id AS Expr1 FROM product INNER JOIN inventory ON product.id = inventory.productID WHERE (product.prodName = @Param1)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlProduct" Name="Param1" PropertyName="SelectedValue" />
            </SelectParameters>
    </asp:SqlDataSource>
    </div>
</asp:Content>
