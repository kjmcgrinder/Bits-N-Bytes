<%@ Page Title="Orders" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="EmmasEngines.Orders" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="IndexHeaderA">Orders</h3>
    <br />
    <br />
    <br />

    <div style="margin-right: 20px; margin-left: 20px;">
        <asp:Button ID="btnOrderStock" runat="server" Text="Order Stock" CssClass="IndexButton" PostBackUrl="~/OrderForm.aspx" Height="56px" Width="160px" />
        <asp:Button ID="btnInventory" runat="server" Text="Inventory" CssClass="IndexButton" PostBackUrl="~/Inventory.aspx" Height="56px" Width="160px" /><br />
        <div class="row mt-5">
            <div class="col-4">
                <div class="form-group">
                    <label>Order Number:</label>
                    <asp:TextBox ID="txtNumber" placeholder="12345" runat="server" CssClass="form-control" /><br />
                </div>
            </div>

            <div class="col-4">
                <div class="form-group">
                    <label>
                        Brand:<br />
                    </label>
                    &nbsp;<asp:TextBox ID="txtBrand" placeholder="Castrol" runat="server" CssClass="form-control" />
                </div>
            </div>

            <div class="col-4">
                <div class="form-group">
                    <label>Name:</label>
                    <asp:TextBox ID="txtName" placeholder="2 stroke oil" runat="server" CssClass="form-control" /><br />
                </div>
            </div>
        </div>
        <div class="row mt-0 mb-4">
            <div class="col-3">
            </div>
            <div class="col-3">
                <asp:Button ID="btnEnter" runat="server" Text="Search" CssClass="IndexButton" Height="56px" Width="186px" />
            </div>
            <div class="col-3" style="left: 0px; top: 0px">
                <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="IndexButton" OnClick="btnClear_Click" Height="56px" Width="186px" />
            </div>
        </div>

        <h4 class="IndexCentering">Order Requests</h4>
        <br />
        <asp:GridView ID="gvOrderRequest" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="odsOrderRequest" Width="100%" AllowPaging="True" PageSize="15" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="prodName" HeaderText="Product Name" SortExpression="prodName"></asp:BoundField>
                <asp:BoundField DataField="prodBrand" HeaderText="Product Brand" SortExpression="prodBrand" />
                <asp:BoundField DataField="invQuantity" HeaderText="Current Quantity" SortExpression="invQuantity" />
                <asp:BoundField DataField="orlQuantity" HeaderText="Order Request Quantity" SortExpression="orlQuantity" />
                <asp:BoundField DataField="orlPrice" HeaderText="Price" SortExpression="orlPrice" DataFormatString="{0:c}" />
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
        <br />


        <h4 class="IndexCentering">Ordered</h4>

        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="odsOrdered" ForeColor="#333333" GridLines="None" Width="100%" AllowPaging="True" PageSize="15" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="pordNumber" HeaderText="Order Number" SortExpression="pordNumber" />
                <asp:BoundField DataField="onordInvoiceNum" HeaderText="Invoice Number" SortExpression="onordInvoiceNum" />
                <asp:BoundField DataField="onordNumInOrder" HeaderText="Num In Order" SortExpression="onordNumInOrder" />
                <asp:BoundField DataField="pordDateOrdered" HeaderText="Date Ordered" SortExpression="pordDateOrdered" />
                <asp:BoundField DataField="onordArriveDate" HeaderText="Order Arrive Date" SortExpression="onordArriveDate" />
                <asp:BoundField DataField="onordPrice" HeaderText="Price" SortExpression="onordPrice" DataFormatString="{0:c}" />
                <asp:CheckBoxField DataField="pordPaid" HeaderText="Paid" SortExpression="pordPaid" ReadOnly="True" />
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
        <br />

        <h4 class="IndexCentering">Previous Orders</h4>
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="odsPreOrder" ForeColor="#333333" GridLines="None" PageSize="15" Width="100%" AllowSorting="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
<asp:BoundField DataField="pordNumber" HeaderText="pordNumber" SortExpression="pordNumber"></asp:BoundField>
                <asp:BoundField DataField="pordDateOrdered" HeaderText="pordDateOrdered" SortExpression="pordDateOrdered"></asp:BoundField>
                <asp:CheckBoxField DataField="pordPaid" HeaderText="pordPaid" SortExpression="pordPaid" />
                <asp:BoundField DataField="prodName" HeaderText="prodName" SortExpression="prodName" />
                <asp:BoundField DataField="prodBrand" HeaderText="prodBrand" SortExpression="prodBrand" />
                <asp:BoundField DataField="invQuantity" HeaderText="invQuantity" SortExpression="invQuantity" />
                <asp:BoundField DataField="invSize" HeaderText="invSize" SortExpression="invSize" />
                <asp:BoundField DataField="invMeasure" HeaderText="invMeasure" SortExpression="invMeasure" />
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
    <br />
                    <div class="row">
                <div class="col-xs-12">
                    <hr />
                    <div class="form-group">
                        <label for="ddlProduct">Product:</label>
                        <asp:DropDownList ID="ddlProduct" runat="server" CssClass="form-control" AppendDataBoundItems="True" DataValueField="id" DataSourceID="odsOrderRequest" DataTextField="prodName">
                            <asp:ListItem>All Products</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:Label ID="lblOrderRequestsCount" runat="server" Text="" Font-Bold="True" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:Button ID="btnSearchOrderRequests" runat="server" Text="Search" CssClass="IndexButton pull-right" OnClick="btnSearchOrderRequests_Click" Height="54px" />
                    </div>
                </div>
                <br />
                <asp:Panel ID="pnlResults" runat="server">
                    <div class="col-xs-12">
                        <div class="form-group">
                            <asp:Label ID="lblOrderRequestSearchResults" runat="server" Text="Order Requests:" Font-Bold="true" Visible="false"></asp:Label>
                        </div>
                    </div>
                    <div class="col-xs-12">
                        <asp:Table ID="tblCustomerInfo" runat="server" CssClass="table table-striped table-primary" EnableViewState="True">
                            <asp:TableRow ID="tblTableHeadings" runat="server" Visible="false">
                                <asp:TableCell runat="server" Font-Bold="True">Product Name</asp:TableCell>
                                <asp:TableCell runat="server" Font-Bold="True">Product Brand</asp:TableCell>
                                <asp:TableCell runat="server" Font-Bold="True">Current Quantity</asp:TableCell>
                                <asp:TableCell runat="server" Font-Bold="True">Order Request Quantity</asp:TableCell>
                                <asp:TableCell runat="server" Font-Bold="True">Price</asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                </asp:Panel>
            </div>
    <asp:ObjectDataSource ID="odsOrderRequest" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasEnginesLibrary.OrderDataSetTableAdapters.OrderRequestTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="odsOrdered" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasEnginesLibrary.OrderDataSetTableAdapters.OrderedTableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtNumber" DefaultValue="0" Name="Param1" PropertyName="Text" Type="String" />
        </SelectParameters>
        </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="odsPreOrder" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasEnginesLibrary.OrderDataSetTableAdapters.PrevOrdersTableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtNumber" DefaultValue="0" Name="Param1" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtName" DefaultValue="ALLPRODUCTS" Name="Param2" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtBrand" DefaultValue="ALLPRODUCTS" Name="Param3" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</div>
</asp:Content>
