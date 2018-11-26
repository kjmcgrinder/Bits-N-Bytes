<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="EmmasEngines.Reports" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - Reports</title>
    <style type="text/css">
        .auto-style1 {
            width: 575px;
        }
        .auto-style2 {
            width: 575px;
            height: 112px;
        }
        .auto-style3 {
            height: 112px;
        }
        .auto-style4 {
            width: 800px;
        }
        .auto-style5 {
            height: 112px;
            width: 800px;
        }
        .auto-style6 {
            width: 579px;
        }
        .auto-style7 {
            height: 112px;
            width: 579px;
        }
    </style>
</head>

<body>
    <link href="Style/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    <form runat="server" class="secondary">
        <asp:ScriptManager runat="server">
            <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--Site Scripts--%>
            </Scripts>
        </asp:ScriptManager>
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
                        <a class="nav-link" href="Repairs.aspx">Repairs</a>
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
    
    <div class="jumbotron">
       
          <h1 class="display-4">Admin</h1>
          <p class="lead">Weekly Reports</p>
          <hr class="my-4"/>
     </div>

    <table style="width: 100%;">
        <tr>
            <td class="auto-style1"><h3 class="lead">Sales</h3></td>
            <td class="auto-style6"><h3 class="lead">Repairs</h3></td>

        </tr>
        <tr>
            <%--TexAreas that will show all the sales during the week( If someone can come up with a better output type pls change--%>
            <td class="auto-style2">
                <textarea id="TextArea1" class="auto-style4" name="S1" draggable="false" style="background-color: #33CCCC; height: 90px; width: 567px;"></textarea></td>
            <td class="auto-style7">
                <textarea id="TextArea2" class="auto-style5" name="S2" draggable="false" style="background-color: #33CCCC; height: 90px; width: 567px;"></textarea></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <%--Labels will be change by the sum of the weekly sales--%>
            <td class="auto-style1"><h3 class="lead">Sales Total:</h3>
                <asp:Label ID="lblTotalSales" runat="server" Text=""></asp:Label></td>
            <td class="auto-style6"><h3 class="lead">Repairs Total:</h3>
                <asp:Label ID="lblTotalRepairs" runat="server" Text=""></asp:Label></td>
            <td><h3 class="lead">Total:</h3>
                <asp:Label ID="lblTotalWeek" runat="server" Text=""></asp:Label></td>
        </tr>
    </table>
    </form>
    <footer>
        <small>Copyright &copy; 2018 Bits N' Bytes. All rights reserved.</small>
    </footer>

</body>
</html>
