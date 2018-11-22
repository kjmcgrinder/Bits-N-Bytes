<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Repairs.aspx.cs" Inherits="EmmasEngines.Repairs" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - My ASP.NET Application</title>
    <link href="Style/style.css" rel="stylesheet" />
    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

</head>

<body class="IndexCentering">
    <header><br /><br /><br />
        <h1 class="IndexTitle">Order Form</h1>
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
                    <a class="navbar-brand" runat="server" href="~/">Services</a>
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
    <section class ="IndexCentering">
        <p>
            <asp:Label ID="lblPart" runat="server" Text="Part:" CssClass="subScript"></asp:Label> <%--Part--%><br />
            <asp:TextBox ID="txtPart" runat="server" CssClass="inputBox"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblStatus" runat="server" Text="Status:" CssClass="subScript"></asp:Label> <%--Status--%><br />
            <asp:TextBox ID="txtStatus" runat="server" CssClass="inputBox"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblQuantity" runat="server" Text="Quantity:" CssClass="subScript"></asp:Label> <%--Quantity--%><br />
            <asp:TextBox ID="txtQuantity" runat="server" CssClass="inputBox"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblProduct" runat="server" Text="Product:" CssClass="subScript"></asp:Label> <%--Product #--%><br />
            <asp:TextBox ID="txtProduct" runat="server" CssClass="inputBox"></asp:TextBox>
        </p>
    </section>

    <section>
        <asp:Label ID="lblOrderNumber" runat="server" Text="Order Number:" CssClass="subScript"></asp:Label> <%--Order Number--%><br />
        <asp:TextBox ID="txtOrderNumber" runat="server" CssClass="inputBox"></asp:TextBox>
        <asp:FormView ID="FormView1" runat="server"></asp:FormView> 
        <br />
        <br />
    </section>

        <section>
            <asp:Button ID="btnConfirm" runat="server" Text="Confirm" CssClass="IndexButton" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="IndexButton" />
        </section><br /><br /><br />

    <footer>
        <small>Copyright &copy; 2018 Bits N' Bytes. All rights reserved.</small>
    </footer>

</body>
</html>
