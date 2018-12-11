<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmmasEngines.Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!--Jumbotron-->    
        <div class="jumbotron">
            <% string name =User.Identity.Name.ToString(); %>
            <h1 id="welcome" class="display-4">Welcome 
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </h1>
            <p class="lead">This is the central hub for Emma's Small Engines.</p>
            <hr class="my-4" />
        </div>
        <!--Cards-->
        <div class="row">
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Sales</h5>
                        <p class="card-text">Make Purchases and Manage Customers.</p>
                        <a href="SaleRepair.aspx" class="btn btn-primary">Get Started</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Repairs</h5>
                        <p class="card-text">Manage Repairs Here .</p>
                        <a href="Repairs.aspx" class="btn btn-primary">Get Started</a>
                    </div>
                </div>
            </div>
        </div>
        <hr />  
</asp:Content>

