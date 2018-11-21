<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmmasEngines.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style/style.css" rel="stylesheet" />
</head>
<body>
    <div class="IndexCentering">
    <div>
            <h1 class="IndexTitle">Login</h1>
    </div>
    <div>
        <form id="frmLogin" runat="server">      
                <h2 class="subScript">
                    Provide Login Information
                </h2>
                <asp:Label ID="lblUsername" runat="server" Text="Username: "></asp:Label><br />
                <asp:TextBox ID="txtUsername" runat="server" CssClass="inputBox" Height="34px" Width="270px"></asp:TextBox><br />
                <asp:Label ID="lblPassword" runat="server" Text="Password:   "></asp:Label><br />
                <asp:TextBox ID="txtPassword" runat="server" CssClass="inputBox" Height="34px" Width="270px" TextMode="Password"></asp:TextBox><br />
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="submitBtn" Height="48px" Width="144px" /><br />
                <asp:Label ID="lblResult" runat="server"></asp:Label>
        </form>
        </div>
    </div>
</body>
</html>
