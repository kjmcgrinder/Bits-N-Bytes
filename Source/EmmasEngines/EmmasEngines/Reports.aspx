<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="EmmasEngines.Reports" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - My ASP.NET Application</title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
        .auto-style2 {
            height: 20px;
            width: 398px;
        }
        .auto-style3 {
            width: 398px;
        }
        .auto-style4 {
            width: 390px;
            height: 128px;
        }
        .auto-style5 {
            width: 631px;
            height: 127px;
        }
        .auto-style6 {
            height: 20px;
            width: 637px;
        }
        .auto-style8 {
            width: 637px;
        }
        .auto-style9 {
            width: 398px;
            height: 152px;
        }
        .auto-style10 {
            width: 637px;
            height: 152px;
        }
        .auto-style11 {
            height: 152px;
        }
    </style>

</head>

<body>
    <header>

        <h1>Reports</h1>
    </header>
    <form runat="server">
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

        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" runat="server" href="~/">Emma's Small Engines</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a runat="server" href="~/Sales">Sales</a></li>
                        <li><a runat="server" href="~/Services">Services</a></li>
                        <li><a runat="server" href="~/Inventory">Inventory</a></li>
                        <%--<li><a runat="server" href="~/Orders">Orders</a></li>
                        <li><a runat="server" href="~/Repairs">Repairs</a></li>--%>
                        <li><a runat="server" href="~/Login">Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
        </form>
    <section>
        <h2>Weekly reports</h2>
    </section>
    
    <table style="width: 100%;">
        <tr>
            <td class="auto-style2">Sales</td>
            <td class="auto-style6">Repairs</td>

        </tr>
        <tr>
            <%--TexAreas that will show all the sales during the week( If someone can come up with a better output type pls change--%>
            <td class="auto-style9">
                <textarea id="TextArea1" class="auto-style4" name="S1"></textarea></td>
            <td class="auto-style10">
                <textarea id="TextArea2" class="auto-style5" name="S2"></textarea></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <%--Labels will be change by the sum of the weekly sales--%>
            <td class="auto-style3">Sales Total: <asp:Label ID="lblTotalSales" runat="server" Text="Label"></asp:Label></td>
            <td class="auto-style8">Repairs Total: <asp:Label ID="lblTotalRepairs" runat="server" Text="Label"></asp:Label></td>
            <td>Total: <asp:Label ID="lblTotalWeek" runat="server" Text="Total"></asp:Label></td>
        </tr>
    </table>

    <footer>
        <small>Copyright &copy; 2018 Bits N' Bytes. All rights reserved.</small>
    </footer>

</body>
</html>
