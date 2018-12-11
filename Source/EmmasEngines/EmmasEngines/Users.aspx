<%@ Page Title="User Management" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="EmmasEngines.Users" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1 class="display-4">Admin</h1>
        <p class="lead">User Management</p>
        <hr class="my-4" />
        <p class="lead">
            We Have Collected: 
        <asp:Label ID="Label1" runat="server" Text="1337$"></asp:Label>
            &nbsp;so far! Congratulations
        </p>
    </div>
    <div class="row">
        <%--<div class="col-sm-6">
            <div class="card">
                <div class="card-body">                    
                    <h2 class="card-title">Search Employees by Deparment:</h2>
                    <p class="card-text">
                        <asp:DropDownList ID="ddlDeparment" runat="server" name="search" placeholder="Search.." class="searchinput" DataSourceID="SqlDataSource2" DataTextField="posName" DataValueField="posName"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT [posName] FROM [position]"></asp:SqlDataSource>
                    </p>                    
                </div>
            </div>
        </div>--%>
        <div class="col-sm-12" style="margin-right: 20px; margin-left: 20px;">
            <div class="card">
                <div class="card-body">
                    <h2 class="card-title">Create Employee:</h2>
                    <a href="Employees.aspx" class="btn btn-primary">Start</a>
                </div>
            </div>
        </div>
    </div>
    <hr class="my-4" />
    <%--Grid view to see the list of the emplooyees and be able to edit(NEed to add ddl to choose position after the data set is placed)--%>
    <div style="margin-right: 20px; margin-left: 20px;">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT [id], [empFirst], [empLast] FROM [employee]"></asp:SqlDataSource>
        <asp:GridView ID="gvEmployees" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gvEmployees_SelectedIndexChanged" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField SelectText="Update" ShowSelectButton="True" />
                <asp:BoundField DataField="empFirst" HeaderText="First Name" SortExpression="empFirst" />
                <asp:BoundField DataField="empLast" HeaderText="Last Name" SortExpression="empLast" />
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="empLast" Visible="false" />
            </Columns>
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
    </div>
    <hr />
</asp:Content>
