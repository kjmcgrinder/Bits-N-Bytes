<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateCustomer.aspx.cs" Inherits="EmmasEngines.UpdateCustomer" %>

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
    <link href="Style/style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 22px;
        }
        .auto-style2 {
            height: 22px;
            width: 127px;
        }
        .auto-style3 {
            width: 19%;
        }
    </style>

</head>
<body>
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
                        <li><a runat="server" href="~/Inventory">Inventory</a></li>
                        <%--<li><a runat="server" href="~/Orders">Orders</a></li>
                        <li><a runat="server" href="~/Repairs">Repairs</a></li>--%>
                        <li><a runat="server" href="~/Login">Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="IndexCentering">
        <div>
             <div >
                 <h2 class="IndexTitle">Create New Customer</h2>
                 <table class="IndexCentering">
                     <tr>
                         <td class="subScript">First Name:</td>
                         <td class="auto-style1">
                             <asp:TextBox ID="TextBox1" runat="server" CssClass="inputBox" Width="209px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="subScript">Middle Name</td>
                         <td class="auto-style1">
                             <asp:TextBox ID="TextBox2" runat="server" CssClass="inputBox" Width="209px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="subScript">Last Name:</td>
                         <td>
                             <asp:TextBox ID="TextBox6" runat="server" CssClass="inputBox" Width="209px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="subScript">Phone Number:</td>
                         <td>
                             <asp:TextBox ID="TextBox3" runat="server" CssClass="inputBox" Width="209px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="subScript">Email:</td>
                         <td>
                             <asp:TextBox ID="TextBox7" runat="server" CssClass="inputBox" Width="209px"></asp:TextBox>
                         </td>
                     </tr>
                 </table>
                 <asp:Button ID="btnCreateCustomer" runat="server" Text="Create" CssClass="submitBtn" />
                 
             </div>
             <div>
                 <asp:Button ID="btnPurchaseHistory" runat="server" Text="Purchase History" CssClass="submitBtn" />
                 <asp:Button ID="btnPrintRecepit" runat="server" Text="Print Receipt" CssClass="submitBtn" />
             </div>
        </div>
        </div>
    </form>
    <footer>
        <small>Copyright &copy; 2018 Bits N' Bytes. All rights reserved.</small>
    </footer>
</body>
</html>
