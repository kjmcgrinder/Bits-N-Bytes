<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmmasEngines.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div>
            <h1>Login</h1>
    </div>
    <div>
        <form id="frmLogin" runat="server">      
                <h2>
                    Provide Login Information
                </h2>
                <asp:Label ID="lblUsername" runat="server" Text="Username: "></asp:Label> 
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br />
                <asp:Label ID="lblPassword" runat="server" Text="Pasword:   "></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
                <asp:Button ID="btnLogin" runat="server" Text="Log in" />
        
        </form>
    </div>
</body>
</html>