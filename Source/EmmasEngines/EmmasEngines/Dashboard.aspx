<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="EmmasEngines.Dashboard" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link active" href="#">Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Dashboard_Customers.aspx">Customers</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Dashboard_Employees.aspx">Employees</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Dashboard_Sales.aspx">Sales</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Dashboard_Orders.aspx">Orders</a>
        </li>
    </ul>

    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">Dashboard</h1>
            <% string name = User.Identity.Name.ToString(); %>
            <p class="lead">This is a central location for <%{ Response.Write(name.ToString()); } %> to conveniently access the web application.</p>
        </div>
    </div>

    <div class="container">
        <h4 class="subScript">Customer Sales This Year (Top 5)</h4>
    
        <div class="progress">
            <div class="progress-bar bg-success progress-bar-striped progress-bar-animated" role="progressbar" style="width: 100%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">Customer 1</div>
        </div>
        <br />
        <div class="progress">
            <div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" role="progressbar" style="width: 80%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">Customer 2 </div>
        </div>
        <br />
        <div class="progress">
            <div class="progress-bar bg-danger progress-bar-striped progress-bar-animated" role="progressbar" style="width: 60%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">Customer 3 </div>
        </div>
        <br />
        <div class="progress">
            <div class="progress-bar bg-danger progress-bar-striped progress-bar-animated" role="progressbar" style="width: 40%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">Customer 4</div>
        </div>
        <br />
        <div class="progress">
            <div class="progress-bar bg-danger progress-bar-striped progress-bar-animated" role="progressbar" style="width: 20%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">Customer 4</div>
        </div><br />

        <p>
            <a class="btn btn-primary" data-toggle="collapse" href="#collapse1" role="button" aria-expanded="false" aria-controls="collapse1">Most Recent Purchase:
            </a>
        </p>

        <div class="collapse" id="collapse1">
            <div class="card card-body">
                Data
            </div>
        </div>

        <p>
            <a class="btn btn-primary" data-toggle="collapse" href="#collapse2" role="button" aria-expanded="false" aria-controls="collapse2">Most Recent Repair Request:
            </a>
        </p>

        <div class="collapse" id="collapse2">
            <div class="card card-body">
                Data
            </div>
        </div>

        <p>
            <a class="btn btn-primary" data-toggle="collapse" href="#collapse3" role="button" aria-expanded="false" aria-controls="collapse3">Newest Customer:
            </a>
        </p>

        <div class="collapse" id="collapse3">
            <div class="card card-body">
                Data
            </div>
        </div>


    </div>
    <br />


</asp:Content>
