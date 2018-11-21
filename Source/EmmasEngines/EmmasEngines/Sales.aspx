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
                        <li><a runat="server" href="~/">Home</a></li>
                        <li><a runat="server" href="~/Orders">Orders</a></li>
                        <li><a runat="server" href="~/Repairs">Repairs</a></li>
                        <li><a runat="server" href="~/Sales">Sales</a></li>
                        <li><a runat="server" href="~/Services">Services</a></li>
                        <li><a runat="server" href="~/About">About</a></li>
                        <li><a runat="server" href="~/Contact">Contact</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div>
            <h1>Sales</h1>
        </div>
        
        <div>
            <h2>Search Customer by last name: </h2>
            <table class="auto-style3">
                <tr>
                    <td class="auto-style4">First Name: </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style4">Last Name:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="btnSearch" runat="server" Text="Search" />
                    </td>
                    <td class="auto-style2">&nbsp;</td>                   
                </tr>
            </table>
            <asp:ListBox ID="ListBox1" runat="server" Height="134px" Width="373px"></asp:ListBox> 
        </div>
        <div>        
        <asp:Button ID="btnCreateCustomer" runat="server" Text="Create" />
        <asp:Button ID="btnUpdateCustomer" runat="server" Text="Update" />
        <asp:Button ID="brnDeleteCustomer" runat="server" Text="Delete" />
        </div>
        <div>
            <h2>Customer's Details</h2>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px"></asp:DetailsView>
        </div>
    </form>
</body>
</html>
