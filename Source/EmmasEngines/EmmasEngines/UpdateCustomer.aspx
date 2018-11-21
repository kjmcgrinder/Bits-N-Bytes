<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateCustomer.aspx.cs" Inherits="EmmasEngines.UpdateCustomer" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - My ASP.NET Application</title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
             <h1>Sales</h1>
            <h2>Update info</h2>
        </div>
    </form>
</body>
</html>
