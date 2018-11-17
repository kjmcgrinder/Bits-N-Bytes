<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="EmmasEngines.Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Emma's Small Engines</title>
</head>

<body>
    <form id="form1" runat="server">
    <header>
        <nav id="nav">
            <ul>
                <li><a href="home.aspx">Home</a></li>
                <li><a href="login.aspx">Login</a></li>
                <li><a href="services.aspx">Services</a></li>
                <li><a href="repairs.aspx">Reparis</a></li>
                <li><a href="details.aspx">Details</a></li>
            </ul>
        </nav>

        <h1>Details</h1>
    </header>
    <section>
        <h2>Repair Information</h2>
    </section>

    <section>
        <h3>
            <asp:Button ID="btnEdit" runat="server" Text="Edit/Return" />
            <asp:Button ID="btnCompete" runat="server" Text="Complete" />
        </h3>
    </section>

    <footer>
        <small>Copyright &copy; 2018 Bits N' Bytes. All rights reserved.</small>
    </footer>

    </form>

</body>
</html>