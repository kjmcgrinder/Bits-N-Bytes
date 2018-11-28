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
            <p>
                <asp:Label ID="lblPart" runat="server" Text="Part:" CssClass="subScript"></asp:Label>
                <%--Part--%><br />
                <asp:TextBox ID="txtPart" runat="server" CssClass="inputBox"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="lblStatus" runat="server" Text="Status:" CssClass="subScript"></asp:Label>
                <%--Status--%><br />
                <asp:TextBox ID="txtStatus" runat="server" CssClass="inputBox"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="lblQuantity" runat="server" Text="Quantity:" CssClass="subScript"></asp:Label>
                <%--Quantity--%><br />
                <asp:TextBox ID="txtQuantity" runat="server" CssClass="inputBox"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="lblProduct" runat="server" Text="Product:" CssClass="subScript"></asp:Label>
                <%--Product #--%><br />
                <asp:TextBox ID="txtProduct" runat="server" CssClass="inputBox"></asp:TextBox>
            </p>
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
        </section>
        <br />
        <br />
        <br />

        <footer>
            <small>Copyright &copy; 2018 Bits N' Bytes. All rights reserved.</small>
        </footer>
    </form>
</body>
</html>
