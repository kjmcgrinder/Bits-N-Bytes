<%@ Page Title="Repair Details" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="RepairDetails.aspx.cs" Inherits="EmmasEngines.Repair_Details" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h3 class="IndexHeaderA">Details</h3>
    </div>
    <div class="IndexCentering">
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" AutoGenerateEditButton="True" DataSourceID="SqlDataSource1" UpdateMethod="UpdateMethod">
            <Columns>
                <asp:BoundField DataField="serordDateIn" HeaderText="serordDateIn" SortExpression="serordDateIn" />
                <asp:BoundField DataField="serordDateOut" HeaderText="serordDateOut" SortExpression="serordDateOut" />
                <asp:BoundField DataField="serordIssue" HeaderText="serordIssue" SortExpression="serordIssue" />
                <asp:BoundField DataField="empID" HeaderText="empID" SortExpression="empID" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=&quot;C:\Users\Kevin McGrinder\Documents\GitHub\Bits-N-Bytes\Source\EmmasEnginesLibrary\EmmasEnginesLibrary\Emmas.mdf&quot;;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [serordDateIn], [serordDateOut], [serordIssue], [empID] FROM [service_order]"></asp:SqlDataSource>
    </div>
    <div class="IndexCentering">
        <asp:Button ID="Button1" runat="server" CssClass="IndexButton" Text="Start" Height="60px" Width="139px"/>
    </div>
</asp:Content>
