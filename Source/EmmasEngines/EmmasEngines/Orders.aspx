<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="EmmasEngines.Orders" %>

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
                <li><a href="orders.aspx">Orders</a></li>
            </ul>
        </nav>

        <h1>Order Form</h1>
    </header>
    <section>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> <%--Part--%>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> <%--Status--%>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label> <%--Quantity--%>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label> <%--Product #--%>
        </p>
    </section>

    <section>
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label> <%--Order Number--%>
        <asp:FormView ID="FormView1" runat="server"></asp:FormView> 
        <br />
        <br />
    </section>

        <section>
            <asp:Button ID="btnConfirm" runat="server" Text="Confirm" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
        </section>

    <footer>
        <small>Copyright &copy; 2018 Bits N' Bytes. All rights reserved.</small>
    </footer>

    </form>

</body>
</html>