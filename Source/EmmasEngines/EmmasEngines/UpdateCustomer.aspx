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
        <div>
             <div>
                 <h2>Customer&#39;s Details/ Create new Customer</h2>
                 <table class="auto-style3">
                     <tr>
                         <td class="auto-style2">First Name:</td>
                         <td class="auto-style1">
                             <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style2">Middle Name</td>
                         <td class="auto-style1">
                             <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style2">Last Name:</td>
                         <td>
                             <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style2">Phone Number</td>
                         <td>
                             <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style2">Email</td>
                         <td>
                             <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                         </td>
                     </tr>
                 </table>
                 <asp:Button ID="btnCreateCustomer" runat="server" Text="Create" />
                 <asp:Button ID="btnUpdateCustomer" runat="server" Text="Update" />
                 <asp:Button ID="brnDeleteCustomer" runat="server" Text="Delete" />
             </div>
             <div>
                 <asp:Button ID="btnPurchaseHistory" runat="server" Text="Purchase History" />
                 <asp:Button ID="btnPrintRecepit" runat="server" Text="Print Receipt" />
             </div>
        </div>
    </form>
</body>
</html>
