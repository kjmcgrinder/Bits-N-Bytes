<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderDepartment.aspx.cs" Inherits="EmmasEngines.OrderDepartment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Orders:</h1>
        </div>
        <%--Orders that are already in the store ready to call the customer--%>
        <%--To include in the GV: order number, the item ordered, the price and the order it is attached to--%>
        <h2>Orders completed:</h2> 
        <asp:GridView ID="gvOrdersCompleted" runat="server"></asp:GridView>

        <%--Orders and part departments can choose the submitted request and select from the list view when they are requested and when they are here--%>
        <h2>Orders to Process:</h2>
        <asp:ListView ID="lvInProgress" runat="server"></asp:ListView>
        <asp:Button ID="btnRequested" runat="server" Text="Requested" /><asp:Button ID="btnDelivered" runat="server" Text="Delievered" />
    </form>
</body>
</html>
