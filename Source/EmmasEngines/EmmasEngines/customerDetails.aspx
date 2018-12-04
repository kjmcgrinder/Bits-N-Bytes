<%@ Page Title="Customer Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="customerDetails.aspx.cs" Inherits="EmmasEngines.customer_details" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <h3 class ="IndexHeaderA">Customer Details</h3><br />
        <div class="btn-group btn-group-toggle" data-toggle="buttons">
                  <asp:Label ID="Delete" runat="server" CssClass="btn btn-secondary active">
                  <asp:RadioButton ID="rdoDelete" runat="server" /> Delete
                  </asp:Label>

                  <asp:Label ID="Update" runat="server" CssClass="btn btn-secondary active">
                      <asp:RadioButton ID="rdoUpdate" runat="server" /> Update
                  </asp:Label>
        </div>    
    <asp:SqlDataSource ID="dsCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT custFirst + ' ,' + custLast AS 'FULL', custAddress FROM customer"></asp:SqlDataSource>
</asp:Content>