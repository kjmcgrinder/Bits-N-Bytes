<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderForm.aspx.cs" Inherits="EmmasEngines.Order_Form" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="IndexHeaderA">Order Form</h3><br /><br /><br /><br />            
    <div class="row">
      <div class="col-25">
         <label for="searchC">Part:</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="TextBox1" runat="server" Width="80%"></asp:TextBox><br />
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="searchP">Brand:</label>
      </div>
      <div class="col-75">
        <asp:TextBox ID="TextBox2" runat="server" Width="80%"></asp:TextBox><br />
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="searchPt">Quantity:</label>
      </div>
      <div class="col-75">
        <asp:TextBox ID="TextBox3" runat="server" Width="80%"></asp:TextBox><br />
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="size">Size:</label>
      </div>
      <div class="col-75">
        <asp:TextBox ID="TextBox4" runat="server" Width="80%"></asp:TextBox><br />
      </div>
    </div>
      <div class="row">
      <div class="col-25">
          <asp:Button ID="submit" runat="server" Text="Submit" CssClass="IndexButton" />
      </div>
      </div>
</asp:Content>