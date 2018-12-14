<%@ Page Title="Repair Details" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="RepairDetails.aspx.cs" Inherits="EmmasEngines.Repair_Details" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h3 class="IndexHeaderA">Details</h3>
    </div>
    <div class="IndexCentering">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="employeeID,repairID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="employeeID" HeaderText="employeeID" ReadOnly="True" SortExpression="employeeID" />
                <asp:BoundField DataField="repairID" HeaderText="repairID" ReadOnly="True" SortExpression="repairID" />
                <asp:BoundField DataField="startDate" HeaderText="Start Date" SortExpression="startDate" />
                <asp:BoundField DataField="finishDate" HeaderText="End Date" SortExpression="finishDate" />
                <asp:ButtonField ButtonType="Button" Text="Finish" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT * FROM [repair_progress] WHERE ([repairID] = @repairID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="repairID" QueryStringField="repairID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <div class="IndexCentering">
        <asp:Button ID="Button1" runat="server" CssClass="IndexButton" Text="Start" Height="60px" Width="139px" OnClick="Button1_Click" />
    </div>
</asp:Content>
