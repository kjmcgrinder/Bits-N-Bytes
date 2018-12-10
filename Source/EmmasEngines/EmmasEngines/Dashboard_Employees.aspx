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
</asp:Content>
