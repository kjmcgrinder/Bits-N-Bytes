<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="EmmasEngines.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<link href="Style/style.css" rel="stylesheet" />
    <form id="form1" runat="server">
        <div class="IndexCentering">
        <div>
            <asp:Image ID="Image1" runat="server" />
            <h1 class ="IndexTitle">Emma’s Small Engines</h1>
        </div>
        <div>
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="IndexButton" PostBackUrl="~/Login.aspx">Login Here</asp:LinkButton>
        </div>
         </div>
    </form>
</body>
</html>
