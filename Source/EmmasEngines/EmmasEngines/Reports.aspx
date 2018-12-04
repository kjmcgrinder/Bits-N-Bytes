<%@ Page Title="Reports" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="EmmasEngines.Reports" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">

        <h1 class="display-4">Admin</h1>
        <p class="lead">Weekly Reports</p>
        <hr class="my-4" />
        <p class="lead">
            We Have Collected: 
        <asp:Label ID="Label1" runat="server" Text="1337$"></asp:Label>
            &nbsp;so far! Congratulations
        </p>
    </div>
    <div class="container">
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1">
                    <h3 class="lead">Sales</h3>
                </td>
                <td class="auto-style6">
                    <h3 class="lead">Repairs</h3>
                </td>

            </tr>
            <tr>
                <%--TexAreas that will show all the sales during the week( If someone can come up with a better output type pls change--%>
                <td class="auto-style2">
                    <textarea id="TextArea1" class="auto-style4" name="S1" draggable="false" style="background-color: #33CCCC; height: 90px; width: 567px;"></textarea></td>
                <td class="auto-style7">
                    <textarea id="TextArea2" class="auto-style5" name="S2" draggable="false" style="background-color: #33CCCC; height: 90px; width: 567px;"></textarea></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <%--Labels will be change by the sum of the weekly sales--%>
                <td class="auto-style1">
                    <h3 class="lead">Sales Total:
                <asp:Label ID="lblTotalSales" runat="server" Text=" "></asp:Label></h3>
                </td>
                <td class="auto-style1">
                    <h3 class="lead">Repairs Total:<asp:Label ID="lblTotalRepairs" runat="server" Text=" "></asp:Label></h3>
                </td>
                <td>
                    <h3 class="lead">Total:
                        <asp:Label ID="lblTotalWeek" runat="server" Text=" "></asp:Label></h3>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
