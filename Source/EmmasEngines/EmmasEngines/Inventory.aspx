<%@ Page Title="Inventory" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="EmmasEngines.Inventory" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="IndexHeaderA">Inventory</h3>
    <div style="margin-right: 20px; margin-left: 20px;">
        <asp:Button ID="btnOrderStock" runat="server" Text="Order Stock" CssClass="btn btn-primary btn-sm" PostBackUrl="~/OrderForm.aspx" Height="45px" />
        <asp:Button ID="btnOrderView" runat="server" Text="View Orders" CssClass="btn btn-primary btn-sm" OnClick="Button2_Click" PostBackUrl="~/Orders.aspx" Height="45px" /><br />
        <br />
        <b>Product Name:</b>
        <br />
        <asp:DropDownList ID="ddlProduct" AppendDataBoundItems="true" runat="server" Height="25px" AutoPostBack="True" DataSourceID="dbProducts" DataTextField="prodName" DataValueField="prodName" EnableViewState="False" CssClass="dropdown" style="left: 0px; top: 0px; width: 186px;">
            <asp:ListItem Text="Please select a Product" Value="0"></asp:ListItem>
        </asp:DropDownList><br />
        <br />
        <b>
            <asp:Label ID="lblStatus" runat="server" Text="Products In Stock:"></asp:Label></b><br />
        <asp:GridView ID="gvInven" runat="server" AutoGenerateColumns="False" DataKeyNames="id,Expr1" DataSourceID="SqlDataSource4" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="prodName" HeaderText="Name" SortExpression="prodName" ReadOnly="True" />
                <asp:BoundField DataField="prodBrand" HeaderText="Brand" SortExpression="prodBrand" ReadOnly="True" />
                <asp:BoundField DataField="invQuantity" HeaderText="Quantity" SortExpression="invQuantity" />
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="invPrice" HeaderText="Price" SortExpression="invPrice" DataFormatString="{0:c}" ReadOnly="True" />
                <asp:BoundField DataField="Size" HeaderText="Size" ReadOnly="True" SortExpression="Size" />
                <asp:BoundField DataField="prodDescription" HeaderText="Description" SortExpression="prodDescription" ReadOnly="True" />
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
