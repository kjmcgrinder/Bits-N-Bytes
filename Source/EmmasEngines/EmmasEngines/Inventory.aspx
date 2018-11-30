<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="EmmasEngines.Inventory" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %>- Inventory</title>
    <link href="Style/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
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
                    <a class="nav-link" href="Default.aspx">Home</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sales
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
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Admin
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
    <form runat="server" class="secondary">
        <h3 class="IndexHeaderA">Inventory</h3>
        <div style="margin-right: 20px; margin-left: 20px;">

            <asp:Button ID="Button1" runat="server" Text="Order Stock" CssClass="btn btn-primary btn-sm" PostBackUrl="~/Order-Form.aspx" />
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
        </div>

        <footer>
            <small>Copyright &copy; 2018 Bits N' Bytes. All rights reserved.</small>
        </footer>

        <asp:SqlDataSource ID="dbProducts" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT DISTINCT prodName FROM product ORDER BY prodName"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT product.id, product.prodName, product.prodBrand, inventory.productID, inventory.invQuantity, inventory.invPrice, product.prodDescription, CONVERT(varchar,inventory.invSize) + ' /  ' + CONVERT(varchar,inventory.invMeasure) as Size, inventory.id AS Expr1 FROM product INNER JOIN inventory ON product.id = inventory.productID WHERE (product.prodName = @Param1)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlProduct" Name="Param1" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>

</body>
</html>
