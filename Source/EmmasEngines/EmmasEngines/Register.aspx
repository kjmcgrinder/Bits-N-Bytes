<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EmmasEngines.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID ="lblUserName" runat="server">User Name</asp:Label>
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblPasswd" runat="server">Password</asp:Label>
            <asp:TextBox ID="txtPasswd" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lblConfirm" runat="server">Confirm Passorwd</asp:Label>
            <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="btnRegister" Text="Register" runat="server" OnClick="btnRegister_Click"/>
        </div>
        <div>
            <asp:Label ID="lblResult" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
