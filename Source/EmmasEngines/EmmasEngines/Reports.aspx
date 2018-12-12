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
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged" Width="350px">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>
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
                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasEnginesLibrary.ReportsDataSetTableAdapters.SalesTableAdapter"></asp:ObjectDataSource>
                        <asp:GridView ID="GridView1" runat="server" Width="626px" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="serordDateIn" HeaderText="serordDateIn" SortExpression="serordDateIn" />
                                <asp:BoundField DataField="serordDateOut" HeaderText="serordDateOut" SortExpression="serordDateOut" />
                                <asp:BoundField DataField="serordIssue" HeaderText="serordIssue" SortExpression="serordIssue" />
                                <asp:CheckBoxField DataField="serordWarranty" HeaderText="serordWarranty" SortExpression="serordWarranty" />
                                <asp:BoundField DataField="receiptID" HeaderText="receiptID" SortExpression="receiptID" />
                                <asp:BoundField DataField="serviceID" HeaderText="serviceID" SortExpression="serviceID" />
                                <asp:BoundField DataField="equipID" HeaderText="equipID" SortExpression="equipID" />
                                <asp:BoundField DataField="empID" HeaderText="empID" SortExpression="empID" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT * FROM [service_order] WHERE ([serordDateIn] = @serordDateIn)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="serordDateIn" PropertyName="SelectedDate" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </h3>
                </td>
                <td class="auto-style1">
                    <h3 class="lead">
                        <asp:GridView ID="GridView2" runat="server" Width="603px" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="pordNumber" HeaderText="pordNumber" SortExpression="pordNumber" />
                                <asp:BoundField DataField="pordDateOrdered" HeaderText="pordDateOrdered" SortExpression="pordDateOrdered" />
                                <asp:CheckBoxField DataField="pordPaid" HeaderText="pordPaid" SortExpression="pordPaid" />
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
                        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasEnginesLibrary.ReportsDataSetTableAdapters.RepairsTableAdapter"></asp:ObjectDataSource>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT * FROM [prod_order] WHERE ([pordDateOrdered] = @pordDateOrdered)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="pordDateOrdered" PropertyName="SelectedDate" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT * FROM [prod_order] WHERE ([pordDateOrdered] = @pordDateOrdered)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Calendar1" DbType="Date" Name="pordDateOrdered" PropertyName="SelectedDate" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </h3>
                </td>

            </tr>
        </table>
    </div>
</asp:Content>
