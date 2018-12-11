<%@ Page Title="Repair Details" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="RepairDetails.aspx.cs" Inherits="EmmasEngines.Repair_Details" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h3 class="IndexHeaderA">Details</h3>
    </div>
    <div class="IndexCentering">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="employeeID,repairID" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="employeeID" HeaderText="employeeID" ReadOnly="True" SortExpression="employeeID" />
                <asp:BoundField DataField="repairID" HeaderText="repairID" ReadOnly="True" SortExpression="repairID" />
                <asp:BoundField DataField="startDate" HeaderText="startDate" SortExpression="startDate" />
                <asp:BoundField DataField="finishDate" HeaderText="finishDate" SortExpression="finishDate" />
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
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasEnginesLibrary.RepairDataSetTableAdapters.repair_progressTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_employeeID" Type="Int32" />
                <asp:Parameter Name="Original_repairID" Type="Int32" />
                <asp:Parameter Name="Original_startDate" Type="DateTime" />
                <asp:Parameter Name="Original_finishDate" Type="DateTime" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="employeeID" Type="Int32" />
                <asp:Parameter Name="repairID" Type="Int32" />
                <asp:Parameter Name="startDate" Type="DateTime" />
                <asp:Parameter Name="finishDate" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="startDate" Type="DateTime" />
                <asp:Parameter Name="finishDate" Type="DateTime" />
                <asp:Parameter Name="Original_employeeID" Type="Int32" />
                <asp:Parameter Name="Original_repairID" Type="Int32" />
                <asp:Parameter Name="Original_startDate" Type="DateTime" />
                <asp:Parameter Name="Original_finishDate" Type="DateTime" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </div>
    <div class="IndexCentering">
        <asp:Button ID="Button1" runat="server" CssClass="IndexButton" Text="Start" Height="60px" Width="139px" />
    </div>
</asp:Content>
