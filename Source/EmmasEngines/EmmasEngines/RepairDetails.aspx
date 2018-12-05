<%@ Page Title="Repair Details" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="RepairDetails.aspx.cs" Inherits="EmmasEngines.Repair_Details" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h3 class="IndexHeaderA">Details</h3>
    </div>
    <div class="IndexCentering">
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" AutoGenerateEditButton="True" UpdateMethod="UpdateMethod">
            <Columns>
                <asp:BoundField DataField="serordDateIn" HeaderText="serordDateIn" SortExpression="serordDateIn" />
                <asp:BoundField DataField="serordDateOut" HeaderText="serordDateOut" SortExpression="serordDateOut" />
                <asp:BoundField DataField="serordIssue" HeaderText="serordIssue" SortExpression="serordIssue" />
                <asp:BoundField DataField="empID" HeaderText="empID" SortExpression="empID" />
            </Columns>
        </asp:GridView>
    </div>
    <div class="IndexCentering">
        <asp:Button ID="Button1" runat="server" CssClass="IndexButton" Text="Start" Height="60px" Width="139px" />
    </div>
</asp:Content>
