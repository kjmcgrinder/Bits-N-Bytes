<%@ Page Title="Dashboard_Customers" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard_Customers.aspx.cs" Inherits="EmmasEngines.Dashboard_Customers" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link" href="Dashboard.aspx"">Home</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active" href="Dashboard_Customers.aspx">Customers</a>
  </li>
    <li class="nav-item">
    <a class="nav-link" href="Dashboard_Employees.aspx">Employees</a>
  </li>
 <%-- <li class="nav-item">
    <a class="nav-link" href="Dashboard_Sales.aspx">Sales</a>
  </li>--%>
  <li class="nav-item">
    <a class="nav-link" href="Dashboard_Orders.aspx">Orders</a>
  </li>
</ul>

<%--A Quite simplistic Customer Search Form--%>
    
    <h3 class="IndexHeaderA">Customers</h3>

        <div style="margin-right: 20px; margin-left: 20px;">
            <asp:TextBox ID="txtName" placeholder="Name" CssClass="inputBox" runat="server" Width="300px" /><br />
            <asp:TextBox ID="txtPhone" placeholder="Phone #" CssClass="inputBox" runat="server" Width="300px" /><br />
            <asp:Button ID="Button1" runat="server" Text="Enter" CssClass="IndexButton" Height="57px" Width="113px" />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="dsCustomers" ForeColor="#333333" GridLines="None" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="custFullName" HeaderText="Name" ReadOnly="True" SortExpression="custFullName" />
                    <asp:BoundField DataField="custPhone" HeaderText="Phone Number" SortExpression="custPhone" />
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
           <%-- <asp:GridView ID="GridView1" runat="server" AllowSorting="True" GridLines="None" Width="1832px" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="dsCustomers" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField SelectText="Update" ShowSelectButton="True" />
                    <asp:BoundField DataField="custFullName" HeaderText="Name" ReadOnly="True" SortExpression="custFullName" />
                    <asp:BoundField DataField="custPhone" HeaderText="Phone Number" SortExpression="custPhone" />
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
            </asp:GridView>--%>
        </div>
        <asp:ObjectDataSource ID="dsCustomers" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBy" TypeName="EmmasEnginesLibrary.CustomerDataSetTableAdapters.customerTableAdapter">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtName" Name="Param1" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtPhone" DefaultValue="0" Name="Param2" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>


</asp:Content>
