<%@ Page Title="Customer Management" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="~/Sales.aspx.cs" Inherits="EmmasEngines.Sales" %>

<asp:content id="BodyContent" contentplaceholderid="MainContent" runat="server">
    <div class="jumbotron">
  <h1 class="display-4">Customer Management</h1>
  <p class="lead">Please select the action you would like to complete</p>
  
<hr class="my-4"/>
</div>
    
     <div class="row">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Create Customer</h5>
        <p class="card-text">Create a new customer here.</p>
        <a href="CreateCustomer.aspx" class="btn btn-primary">Get Started</a>
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Search Customer</h5>
        <p class="card-text">Search existing customers</p>
        <a href="SearchCustomers.aspx" class="btn btn-primary">Get Started</a>
      </div>
    </div>
  </div>
</div> 
<hr />
</asp:content>
