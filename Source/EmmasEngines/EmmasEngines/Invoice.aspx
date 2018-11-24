<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="EmmasEngines.Invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 166px;
        }
        .auto-style2 {
            width: 31%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Invoice</h1>
            <%--Table with labels that will be changed based on the previous steps:--%>
           <table class="auto-style2">
                <tr>
                    <%--unique number assigned randomly--%>
                    <td class="auto-style1">Order number:</td>
                    <td><asp:Label ID="LblOrderNumber" runat="server" Text="Label"></asp:Label> </td>    
                </tr>
                <tr>
                    <%--Todays date--%>
                    <td class="auto-style1">Date:</td>
                    <td><asp:Label ID="lblDate" runat="server" Text="Label"></asp:Label></td>
                 
                </tr>
                <tr>
                    <%--Ddl to select method of payment--%>
                    <td class="auto-style1">Payment type:</td>
                    <td><asp:DropDownList ID="ddlPaymentType" runat="server"></asp:DropDownList></td>
                    
                </tr>
                <tr>
                    <td class="auto-style1">Customer's Name:</td>
                    <td><asp:Label ID="lblCustName" runat="server" Text="Label"></asp:Label></td>                  
                </tr>
                <tr>
                    <%--Employee's name comes with the login--%>
                    <td class="auto-style1">Employee&#39;s name:</td>
                    <td> <asp:Label ID="lblEmpName" runat="server" Text="Label"></asp:Label></td>                    
                </tr>
                <tr>
                    <%--Details view to see what and how many items the customer has purchased--%>
                    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px"></asp:DetailsView>                   
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
