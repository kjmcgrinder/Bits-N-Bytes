<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Purchase.aspx.cs" Inherits="EmmasEngines.Purchase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Purchase</h1>

            <h2 class="IndexSubTitle"> Select Product:  </h2>
            <asp:DropDownList ID="ddlProduct" runat="server"></asp:DropDownList>
            quantity: <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>

            <asp:Button ID="btnAdd" runat="server" Text="Add" />

             <h2 class="IndexTitle">Customer Detail's</h2>
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
            <asp:Button ID="btnUpdateCustomer" runat="server" Text="Update" CssClass="submitBtn" />

            <%--If there is not a product on the inventory This will redirect us to the ordering page--%>
            <asp:Button ID="btnInvoice" runat="server" Text="Invoice" PostBackUrl="~/Invoice.aspx" />

            <h2>Previous Purchases</h2>

            <asp:GridView ID="gvHistory" runat="server"></asp:GridView>




        </div>
    </form>
</body>
</html>
