<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EmmasEngines.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <link href="Style/style.css" rel="stylesheet" />
</head>
<body class="IndexCentering">
    <form id="form1" runat="server">
        <h1 class="IndexTitle">Create an Account</h1><br />
        <div class="subScript">
            <asp:Label ID ="lblUserName" runat="server">User Name</asp:Label><br />
            <asp:TextBox ID="txtUserName" runat="server" CssClass="inputBox" Height="34px" Width="270px"></asp:TextBox>
        </div>
        <div class="subScript">
            <asp:Label ID="lblPassw" runat="server">Password</asp:Label><br />
            <asp:TextBox ID="txtPasswd" runat="server" TextMode="Password" CssClass="inputBox" Height="34px" Width="270px"></asp:TextBox>
        </div>
        <div class="subScript">
            <asp:Label ID="lblConfirm" runat="server">Confirm Password</asp:Label><br />
            <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" CssClass="inputBox" Height="34px" Width="270px"></asp:TextBox>
        </div>
        <div class="subScript">
            <asp:Button ID="btnRegister" Text="Register" runat="server" OnClick="btnRegister_Click" CssClass="submitBtn" Height="48px" Width="144px"/>
        </div>
        <div class="subScript">
            <asp:Label ID="lblResult" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>