<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="EmmasEngines.Orders" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - Orders</title>
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
                    <a class="nav-link" href="Default2.aspx">Home</a>
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

    <form runat="server" class="secondary">
        <h3 class="IndexHeaderA">Order Form</h3>
        <section class="IndexCentering">

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [prodName] FROM [product] ORDER BY [prodName]"></asp:SqlDataSource>

            <asp:Label ID="lblPart" runat="server" Text="Product Name:" CssClass="subScript"></asp:Label>
            <%--Part--%><br />
            <asp:DropDownList ID="ddlProductName" runat="server" Height="40px" Width="134px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="prodName" DataValueField="prodName">
            </asp:DropDownList>

            <br />
            <br />
            Brand Name:<br />
            <asp:ListBox ID="lstBrandName" runat="server" AutoPostBack="True" Height="111px" Width="176px" DataSourceID="SqlDataSource2" DataTextField="prodBrand" DataValueField="id"></asp:ListBox>

            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [id], [prodDescription], [prodName], [prodBrand] FROM [product] WHERE ([prodName] = @prodName) ORDER BY [prodBrand], [prodName]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlProductName" Name="prodName" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            Product Information:<%--                <asp:ListBox ID="lstProduct" runat="server" AutoPostBack="True" Height="34px" Width="210px" DataSourceID="SqlDataSource2" DataTextField="prodBrand" DataValueField="id"></asp:ListBox>--%><asp:GridView ID="gvProduct" runat="server" align="center" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="prodName" HeaderText="Name" SortExpression="prodName" />
                    <asp:BoundField DataField="prodBrand" HeaderText="Brand" SortExpression="prodBrand" />
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

            <br />

            <asp:Label ID="lblStatus" runat="server" Text="Status:" CssClass="subScript"></asp:Label>
            <%--Status--%><br />
            Low In Stock
                <br />
            <br />
            <asp:Label ID="lblQuantity" runat="server" Text="Quantity:" CssClass="subScript"></asp:Label>
            <%--Quantity--%><br />
            <asp:TextBox ID="txtQuantity" runat="server" CssClass="inputBox" type="number" min="1" max="99" placeholder="1 ~ 99" required="true"></asp:TextBox>

            <br />

        </section>

        <%--        <section>
            <asp:Label ID="lblOrderNumber" runat="server" Text="Order Number:" CssClass="subScript"></asp:Label>
            <asp:TextBox ID="txtOrderNumber" runat="server" CssClass="inputBox"></asp:TextBox>
            <asp:FormView ID="FormView1" runat="server"></asp:FormView>
            <br />
            <br />
        </section>--%>

        <section class="IndexCentering">
            <asp:Button ID="btnConfirm" runat="server" Text="Confirm" CssClass="IndexButton" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="IndexButton" />
            <br />
            <br />
            <a href="Inventory.aspx">Go Back</a>
        </section>
        <br />


        <footer>
            <small>Copyright &copy; 2018 Bits N' Bytes. All rights reserved.</small>
        </footer>
    </form>
</body>
</html>
