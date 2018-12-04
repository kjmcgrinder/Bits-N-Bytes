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
    <asp:Label ID="Label1" runat="server" Text="Completed Repairs" CssClass="subScript"></asp:Label><br />
    <asp:GridView ID="GridView1" runat="server" Width="1061px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
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
    <br />
    <asp:Label ID="Label2" runat="server" Text="Completed Orders" CssClass="subScript"></asp:Label>
    <asp:GridView ID="GridView2" runat="server" Width="1062px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
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
