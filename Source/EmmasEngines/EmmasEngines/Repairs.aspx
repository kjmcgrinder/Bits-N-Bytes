﻿<%@ Page Title="Repairs" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Repairs.aspx.cs" Inherits="EmmasEngines.Repairs1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h3 class="IndexHeaderA">Repairs</h3>
    </div>
    <div id="repair-table" style="margin-right: 20px; margin-left: 20px;">
        <asp:GridView ID="repairGridview" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="RepairDataSource" CssClass="table" HorizontalAlign="Left" GridLines="None" CellPadding="4" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Received" HeaderText="Received" SortExpression="Received" />
                <asp:BoundField DataField="Completed" HeaderText="Completed" SortExpression="Completed" />
                <asp:BoundField DataField="Issue" HeaderText="Issue" SortExpression="Issue" />
                <asp:CheckBoxField DataField="Has Warranty" HeaderText="Has Warranty" SortExpression="Has Warranty" />
                <asp:BoundField DataField="Equipment Model" HeaderText="Equipment Model" SortExpression="Equipment Model" />
                <asp:BoundField DataField="Customer" HeaderText="Customer" ReadOnly="True" SortExpression="Customer" />
                <asp:BoundField DataField="Customer Phone" HeaderText="Customer Phone" SortExpression="Customer Phone" />
                <asp:BoundField DataField="Customer Email" HeaderText="Customer Email" SortExpression="Customer Email" />
                <asp:BoundField DataField="Employee" HeaderText="Employee" ReadOnly="True" SortExpression="Employee" />
                <asp:BoundField DataField="Equipment Serial Num" HeaderText="Equipment Serial Num" SortExpression="Equipment Serial Num" />
                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="RepairDetails.aspx?repairID={0}" Text="Details" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" BorderColor="#E9ECEF" BorderStyle="Outset" BorderWidth="5px" Font-Bold="True" Font-Size="Medium" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" Font-Size="Small" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </div>
    <asp:SqlDataSource ID="RepairDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Emmas.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [service_order] WHERE [id] = @original_id AND (([serordDateIn] = @original_serordDateIn) OR ([serordDateIn] IS NULL AND @original_serordDateIn IS NULL)) AND (([serordDateOut] = @original_serordDateOut) OR ([serordDateOut] IS NULL AND @original_serordDateOut IS NULL)) AND (([serordIssue] = @original_serordIssue) OR ([serordIssue] IS NULL AND @original_serordIssue IS NULL)) AND (([serordWarranty] = @original_serordWarranty) OR ([serordWarranty] IS NULL AND @original_serordWarranty IS NULL)) AND [receiptID] = @original_receiptID AND [serviceID] = @original_serviceID AND [equipID] = @original_equipID AND [empID] = @original_empID" InsertCommand="INSERT INTO [service_order] ([serordDateIn], [serordDateOut], [serordIssue], [serordWarranty], [receiptID], [serviceID], [equipID], [empID]) VALUES (@serordDateIn, @serordDateOut, @serordIssue, @serordWarranty, @receiptID, @serviceID, @equipID, @empID)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT service_order.id, service_order.serordDateIn AS 'Received', service_order.serordDateOut AS 'Completed', service_order.serordIssue AS 'Issue', service_order.serordWarranty AS 'Has Warranty', equipment.equModel AS 'Equipment Model', customer.custFirst + ' ' + customer.custLast AS 'Customer', customer.custPhone AS 'Customer Phone', customer.custEmail AS 'Customer Email', employee.empFirst + ' ' + employee.empLast AS 'Employee', equipment.equSerial AS 'Equipment Serial Num' FROM service_order INNER JOIN employee ON service_order.empID = employee.id INNER JOIN equipment ON service_order.equipID = equipment.id INNER JOIN customer ON equipment.custID = customer.id" UpdateCommand="UPDATE [service_order] SET [serordDateIn] = @serordDateIn, [serordDateOut] = @serordDateOut, [serordIssue] = @serordIssue, [serordWarranty] = @serordWarranty, [receiptID] = @receiptID, [serviceID] = @serviceID, [equipID] = @equipID, [empID] = @empID WHERE [id] = @original_id AND (([serordDateIn] = @original_serordDateIn) OR ([serordDateIn] IS NULL AND @original_serordDateIn IS NULL)) AND (([serordDateOut] = @original_serordDateOut) OR ([serordDateOut] IS NULL AND @original_serordDateOut IS NULL)) AND (([serordIssue] = @original_serordIssue) OR ([serordIssue] IS NULL AND @original_serordIssue IS NULL)) AND (([serordWarranty] = @original_serordWarranty) OR ([serordWarranty] IS NULL AND @original_serordWarranty IS NULL)) AND [receiptID] = @original_receiptID AND [serviceID] = @original_serviceID AND [equipID] = @original_equipID AND [empID] = @original_empID">
        <DeleteParameters>
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter DbType="Date" Name="original_serordDateIn" />
            <asp:Parameter DbType="Date" Name="original_serordDateOut" />
            <asp:Parameter Name="original_serordIssue" Type="String" />
            <asp:Parameter Name="original_serordWarranty" Type="Boolean" />
            <asp:Parameter Name="original_receiptID" Type="Int32" />
            <asp:Parameter Name="original_serviceID" Type="Int32" />
            <asp:Parameter Name="original_equipID" Type="Int32" />
            <asp:Parameter Name="original_empID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="serordDateIn" />
            <asp:Parameter DbType="Date" Name="serordDateOut" />
            <asp:Parameter Name="serordIssue" Type="String" />
            <asp:Parameter Name="serordWarranty" Type="Boolean" />
            <asp:Parameter Name="receiptID" Type="Int32" />
            <asp:Parameter Name="serviceID" Type="Int32" />
            <asp:Parameter Name="equipID" Type="Int32" />
            <asp:Parameter Name="empID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="serordDateIn" />
            <asp:Parameter DbType="Date" Name="serordDateOut" />
            <asp:Parameter Name="serordIssue" Type="String" />
            <asp:Parameter Name="serordWarranty" Type="Boolean" />
            <asp:Parameter Name="receiptID" Type="Int32" />
            <asp:Parameter Name="serviceID" Type="Int32" />
            <asp:Parameter Name="equipID" Type="Int32" />
            <asp:Parameter Name="empID" Type="Int32" />
            <asp:Parameter Name="original_id" Type="Int32" />
            <asp:Parameter DbType="Date" Name="original_serordDateIn" />
            <asp:Parameter DbType="Date" Name="original_serordDateOut" />
            <asp:Parameter Name="original_serordIssue" Type="String" />
            <asp:Parameter Name="original_serordWarranty" Type="Boolean" />
            <asp:Parameter Name="original_receiptID" Type="Int32" />
            <asp:Parameter Name="original_serviceID" Type="Int32" />
            <asp:Parameter Name="original_equipID" Type="Int32" />
            <asp:Parameter Name="original_empID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <p>
        <asp:Button ID="NewRepairbtn" runat="server" Text="New Repair" CssClass="btn"  PostBackUrl="~/Purchase.aspx?mode=repair" />
    </p>
    <p>
        &nbsp;
    </p>
</asp:Content>
