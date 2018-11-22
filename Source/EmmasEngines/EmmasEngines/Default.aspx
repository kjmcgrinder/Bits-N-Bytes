<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmmasEngines._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        
        <% string name = User.Identity.Name.ToString(); %>

        <h1>Welcome <%{ Response.Write(name.ToString()); } %> </h1>
        <p class="lead">This is the central hub for Emma's Small Engines</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Orders</h2>
            <p>
                View all of your orders here.
            </p>
            <p>
                <a class="btn btn-default" href="Orders.aspx">Get Started &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Repairs</h2>
            <p>
                Complete all of your repairs here.
            </p>
            <p>
                <a class="btn btn-default" href="Repairs.aspx">Get Started &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Sales</h2>
            <p>
                Complete all of your sales here.
            </p>
            <p>
                <a class="btn btn-default" href="Sales.aspx">Get Started &raquo;</a>
            </p>
        </div>
                <div class="col-md-4">
            <h2>Users</h2>
            <p>
                Control all of your users here.
            </p>
            <p>
                <a class="btn btn-default" href="Users.aspx">Get Started &raquo;</a>
            </p>
        </div>
                </div>
                <div class="col-md-4">
            <h2>Inventory</h2>
            <p>
                Check all of your inventory here.
            </p>
            <p>
                <a class="btn btn-default" href="Inventory.aspx">Get Started &raquo;</a>
            </p>
        </div>
</asp:Content>
