<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchCustomer.aspx.cs" Inherits="EmmasEngines.SearchCustomer" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %>- My ASP.NET Application</title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

<link href="Style/style.css" rel="stylesheet" />
</head>

<body class="IndexCentering">
    <form id="form1" runat="server">
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
                            <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                        <li><a runat="server" href="~/Login">Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
          <div><br /><br />
            <h1 class="IndexTitle">Search Customer by Phone Number: </h1>
              <br />
            <%--Framework Scripts--%>
              <h5 class="subScript">Phone Number:<br />
                  <asp:TextBox ID="txtPhoneNumber" runat="server" Width="168px" CssClass="inputBox" TextMode="Phone"></asp:TextBox>
              </h5>
              <asp:ListBox ID="ListBox1" runat="server" Height="202px" Width="530px"></asp:ListBox>
        </div>
        <br />
        <div>
            <asp:Button ID="btnPurhchase" runat="server" Text="Purchase" PostBackUrl="~/Purchase.aspx" CssClass="submitBtn"/>
            <asp:Button ID="btnService" runat="server" Text="Service" PostBackUrl="~/Services.aspx" CssClass="submitBtn" />
        </div>
    </form>
</body>
   
</html>
