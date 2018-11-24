<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RepairsDeparment.aspx.cs" Inherits="EmmasEngines.RepairsDeparment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Submitted Repair Requests</h2>
            <%--List of all the requests made by Sales--%>
            <asp:ListBox ID="lbRequests" runat="server"></asp:ListBox>
            <h2>Repair Request Details:</h2>
            <asp:DetailsView ID="dvDetails" runat="server" Height="50px" Width="125px"></asp:DetailsView>
            <h2>Need a part?</h2>
            <asp:Button ID="btnOrder" runat="server" Text="Order"  PostBackUrl="~/orders.aspx" />

            <h2>Start Repair:</h2>
            <h3>Description of the repair:</h3>
            <textarea id="taDesription" cols="20" rows="2"></textarea>
            <%--start stop timestamp and the difference of the time would be the time worked--%>
            <asp:Button ID="btnStart" runat="server" Text="Start" />
            <asp:Button ID="btnStop" runat="server" Text="Stop" />
            <%--Add would add this step of the repair made to memory until is finished--%>
            <asp:Button ID="btnAdd" runat="server" Text="Add" />
            <%--Finish will mark the repair as completed and send it to sales--%>
            <asp:Button ID="btnFinish" runat="server" Text="Finish repair" />
        </div>
    </form>
</body>
</html>
