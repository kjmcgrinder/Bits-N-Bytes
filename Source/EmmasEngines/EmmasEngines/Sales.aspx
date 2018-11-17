<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sales.aspx.cs" Inherits="EmmasEngines.Sales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
