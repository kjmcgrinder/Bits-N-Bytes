<%@ Page Title="Reports" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="EmmasEngines.Reports" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">

        <h1 class="display-4">Admin</h1>
        <p class="lead">Weekly Reports</p>
        <hr class="my-4" />
        <div class="row">
             <div class="col-6">
                 <h2 class="lead">Staff Party!</h2>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Column1" HeaderText="We Have Collected: " ReadOnly="True" SortExpression="Column1" />
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
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT CONVERT(MONEY,(SUM(serPrice)*0.02), 1)  FROM [service]"></asp:SqlDataSource>
            </div>
            <div class="col-6">
                <h2 class="lead">Pick a date to see the Weekly Report</h2>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" SelectedDate="12/11/2018 22:28:04">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>
            </div>
        </div>
    </div>
    <div class="container">
        
        <table style="width: 89%;">
            <tr>
                <td class="auto-style1" style="width: 632px">
                    <h2 class="lead">Sales</h2>
                </td>
                <td class="auto-style6">
                    <h2 class="lead">Repairs</h2>
                </td>

            </tr>
            <tr>
                <%--Labels will be change by the sum of the weekly sales--%>
                <td class="auto-style1" style="width: 632px">
                    <h3 class="lead">
                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasEnginesLibrary.ReportsDataSetTableAdapters.SalesTableAdapter">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Calendar1" Name="Param1" PropertyName="SelectedDate" Type="DateTime" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                        <asp:GridView ID="GridView1" runat="server" Width="626px" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="ordDate" HeaderText="ordDate" SortExpression="ordDate" />
                                <asp:BoundField DataField="custName" HeaderText="custName" ReadOnly="True" SortExpression="custName" />
                                <asp:BoundField DataField="ordTotal" HeaderText="ordTotal" ReadOnly="True" SortExpression="ordTotal" />
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
                    </h3>
                </td>
                <td class="auto-style1">
                    <h3 class="lead">
                        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasEnginesLibrary.ReportsDataSetTableAdapters.RepairsTableAdapter">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Calendar1" Name="Param1" PropertyName="SelectedDate" Type="DateTime" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                        <asp:GridView ID="GridView2" runat="server" Width="603px" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="ObjectDataSource2" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="ordDate" HeaderText="ordDate" SortExpression="ordDate" />
                                <asp:BoundField DataField="ordTotal" HeaderText="ordTotal" ReadOnly="True" SortExpression="ordTotal" />
                                <asp:BoundField DataField="custName" HeaderText="custName" ReadOnly="True" SortExpression="custName" />
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
                    </h3>
                </td>

            </tr>
        </table>
    </div>
</asp:Content>
