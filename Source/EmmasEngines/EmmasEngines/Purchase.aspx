<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Purchase.aspx.cs" Inherits="EmmasEngines.Purchase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="IndexHeaderA">Purchase</h1>

            <h2 class="subScript"> Select Product:</h2>
            <h3>Search By Product Name:</h3>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Search" />
            <br />
            <asp:ListBox ID="ListBox1" runat="server" Height="73px" Width="188px"></asp:ListBox>
            <br />
            Quantity: <br />
            <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox><br />

             <h2 class="IndexTitle">Customer:</h2>
             <h3>Search By Customer Name:</h3>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="Search" />
            <br />
            <asp:ListBox ID="ListBox2" runat="server" Height="73px" Width="188px"></asp:ListBox>
            <br />
                <%-- <table class="IndexCentering">
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
                 </table>--%>

            <%--If there is not a product on the inventory This will redirect us to the ordering page--%>

            <h2>Previous Purchases</h2>

            <asp:GridView ID="gvHistory" runat="server"></asp:GridView>




        </div>
        <asp:Button ID="Button3" runat="server" Text="Purchase" />
    </form>
</body>
</html>
