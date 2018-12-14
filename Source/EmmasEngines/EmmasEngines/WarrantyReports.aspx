<%@ Page Title="Reports" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WarrantyReports.aspx.cs" Inherits="EmmasEngines.WarrantyReports" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">

        <h1 class="display-4">Admin</h1>
        <p class="lead">Warranty Reports</p>
        <hr class="my-4" />
    </div>

        
    <div class="container">
        <table class="tableReports">
            <tr>
                <td class="paddingCells"><h2 class="lead">Choose a Manufacturer:</h2></td>
            </tr>
            <tr>
                <td class="paddingCells"><asp:DropDownList ID="ddlMan" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource3" DataTextField="manName" DataValueField="id"></asp:DropDownList></td>
            </tr>
            <tr class="paddingCells" >
                <td class="paddingCells">
                    <asp:GridView ID="gvWarranty" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="serordIssue" HeaderText="Service" SortExpression="serordIssue" />
                            <asp:BoundField DataField="serDescription" HeaderText="Description" SortExpression="serDescription" />
                            <asp:BoundField DataField="serPrice" HeaderText="Price" SortExpression="serPrice" />
                            <asp:BoundField DataField="equModel" HeaderText="Model" SortExpression="equModel" />
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
                    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasEnginesLibrary.ReportsDataSetTableAdapters.manufacturerTableAdapter"></asp:ObjectDataSource>
                    <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasEnginesLibrary.ReportsDataSetTableAdapters.WarrantyTableAdapter">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlMan" DefaultValue="" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
               </td>
            </tr>

        </table>
    </div>


</asp:Content>