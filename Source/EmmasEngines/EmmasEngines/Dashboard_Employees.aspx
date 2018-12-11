<%@ Page Title="Dashboard_Employees" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard_Employees.aspx.cs" Inherits="EmmasEngines.Dashboard_Employees" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link" href="Dashboard.aspx"">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="Dashboard_Customers.aspx">Customers</a>
  </li>
    <li class="nav-item">
    <a class="nav-link active" href="Dashboard_Employees.aspx">Employees</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="Dashboard_Sales.aspx">Sales</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="Dashboard_Orders.aspx">Orders</a>
  </li>
</ul>


    <%--A Quite simplistic Employee Search Form--%>
    <h3 class="IndexHeaderA">Employees</h3>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT [id], [empFirst], [empLast] FROM [employee]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%" AutoGenerateColumns="False" DataKeyNames="id">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="empFirst" HeaderText="First Name" SortExpression="empFirst" />
            <asp:BoundField DataField="empLast" HeaderText="Last Name" SortExpression="empLast" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
</asp:Content>
