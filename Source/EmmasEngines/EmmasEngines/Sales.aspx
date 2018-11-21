<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sales.aspx.cs" Inherits="EmmasEngines.Sales" %>

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
        .auto-style2 {
            width: 40%;
            height: 83px;
        }
        .auto-style3 {
            width: 421px;
        }
    </style>
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
                    <a class="navbar-brand" runat="server" href="~/">Services</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a runat="server" href="~/Sales">Sales</a></li>
                        <li><a runat="server" href="~/Services">Services</a></li>
                        <%--<li><a runat="server" href="~/Orders">Orders</a></li>
                        <li><a runat="server" href="~/Repairs">Repairs</a></li>--%>
                        <li><a runat="server" href="~/Login">Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
          <div><br /><br />
            <h1 class="IndexTitle">Sales</h1><br />
            <h2>New Customer?</h2>
            <asp:Button ID="btnCreate" runat="server" Text="Create Customer" PostBackUrl="~/UpdateCustomer.aspx" CssClass="submitBtn"/>
        </div>
        
        <div>
            <h2 class="IndexTitle">Search Customer by Phone Number: </h2><br />
           <%-- <table class="auto-style3">
                <tr>
                    <td class="auto-style4">Phone Number: </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtPhoneNumber" runat="server" Height="22px" Width="156px"></asp:TextBox>
                    </td>
                    
                </tr>

                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="btnSearch" runat="server" Text="Search" />
                    </td>
                    <td class="auto-style2">&nbsp;</td>                   
                </tr>
            </table>--%>
            <h5 class="subScript">Phone Number:</h5>
            <asp:TextBox ID="txtPhoneNumber" runat="server" Height="22px" Width="156px" CssClass="inputBox" OnTextChanged="txtPhoneNumber_TextChanged"></asp:TextBox><br /><br />
            <asp:ListBox ID="ListBox1" runat="server" Height="134px" Width="373px"></asp:ListBox> 
        </div><br />
        <div>
            <asp:Button ID="btnPurhchase" runat="server" Text="Purchase" PostBackUrl="~/Purchase.aspx" CssClass="submitBtn"/>
            <asp:Button ID="btnService" runat="server" Text="Service" PostBackUrl="~/Services.aspx" CssClass="submitBtn" />
        </div>
    </form>
</body>
   
</html>
