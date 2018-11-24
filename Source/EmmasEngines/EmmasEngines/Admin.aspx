<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="EmmasEngines.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome Admin:</h1>
            <%--Btns could take the biggest part of the screen as in the ppt--%>
            <asp:Button ID="btnUser" runat="server" Text="User Management"PostBackUrl="~/Users.aspx" /><%--Look up of users --%>
            <asp:Button ID="btnReports" runat="server" Text="Weekly Reports" PostBackUrl="~/Services.aspx"/> <%--weekly reports--%>
        </div>
    </form>
</body>
</html>
