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
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Groove" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px" OnSelectionChanged="Calendar1_SelectionChanged">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
            <DayStyle BackColor="#CCCCCC" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="#507CD1" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
            <TodayDayStyle BackColor="#999999" ForeColor="White" />
        </asp:Calendar>
        <asp:Label ID="Label2" runat="server" Text="Selected day"></asp:Label>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style1" style="width: 693px">
                    <h3 class="lead">Sales</h3>
                </td>
                <td class="auto-style6">
                    <h3 class="lead">Repairs</h3>
                </td>

            </tr>
            <tr>
                <%--TexAreas that will show all the sales during the week( If someone can come up with a better output type pls change--%>
                <td class="auto-style3" style="width: 693px">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="688px" DataSourceID="ObjectDataSource1" AutoGenerateColumns="False" DataKeyNames="id">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="ordDate" HeaderText="ordDate" SortExpression="ordDate" />
                            <asp:BoundField DataField="custName" HeaderText="custName" ReadOnly="True" SortExpression="custName" />
                            <asp:BoundField DataField="payType" HeaderText="payType" SortExpression="payType" />
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
                </td>
            </tr>
            <tr>
                <%--Labels will be change by the sum of the weekly sales--%>
                <td style="width: 693px">
                    <h3 class="lead">Total:
                        <asp:Label ID="lblTotalWeek" runat="server" Text=" "></asp:Label>
                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasEnginesLibrary.ReportsDataSetTableAdapters.ReportsTableAdapter" ></asp:ObjectDataSource>
                    </h3>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
