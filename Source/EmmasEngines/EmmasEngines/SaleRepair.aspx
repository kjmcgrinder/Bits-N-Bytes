<%@ Page Title="Sales / Repairs" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="~/SaleRepair.aspx.cs" Inherits="EmmasEngines.SaleRepair" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!--Jumbotron-->
    <div class="jumbotron">
        <h1 class="display-4">Sales and Repairs</h1>
        <p class="lead">Please select the service you are providing</p>
        <hr class="my-4" />
    </div>
    <div class="row">
        <div class="col-sm-6">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Purchase</h5>
                    <p class="card-text">Make Purchase.</p>
                    <a href="Purchase.aspx?mode=sale" class="btn btn-primary">Get Started</a>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Repairs</h5>
                    <p class="card-text">Customer Repairs</p>
                    <a href="Repairs.aspx" class="btn btn-primary">Get Started</a>
                </div>
            </div>
        </div>
    </div>
    <hr />
</asp:Content>
