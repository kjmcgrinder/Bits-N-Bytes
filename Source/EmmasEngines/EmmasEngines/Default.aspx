<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmmasEngines._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

    <div class="jumbotron">

        <% string name = User.Identity.Name.ToString(); %>

        <h1>Welcome <%{ Response.Write(name.ToString()); } %> </h1>
        <p class="lead">This is the central hub for Emma's Small Engines</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Orders</h2>
            <p>
                Complete all of your orders here.
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
            <%--<h2>Users</h2>
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
            <p>--%>
            <%--<a class="btn btn-default" href="Inventory.aspx">Get Started &raquo;</a>--%>
            <%-- </p>--%>
        </div>
    </div>
</asp:Content>
