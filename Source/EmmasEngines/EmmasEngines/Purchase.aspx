<%@ Page Title="Purchase" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Purchase.aspx.cs" Inherits="EmmasEngines.Purchase" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
    <h3 class="IndexHeaderA">Purchase</h3>
    <br />
    
    <div class="btn-group btn-group-toggle">
        <asp:Button ID="btnSale" runat="server" Text="Sale" OnClick="rdoSale_CheckedChanged" CssClass="btn btn-secondary btn-sm" />
        <asp:Button ID="btnRepair" runat="server" Text="Repair" OnClick="rdoRepair_CheckedChanged" CssClass="btn btn-secondary btn-sm" />
    </div>
    <br />
    <br />
    <div class="row">
        <div class="col-25">
            <b><label for="searchC">Customer:<asp:RangeValidator ID="rvCustomer" runat="server" ControlToValidate="ListBox2" ForeColor="Red" ErrorMessage="Please select a customer" MaximumValue="9999" MinimumValue="0">*</asp:RangeValidator></label></b>
        </div>
        <div class="col-75">
            <input type="text" id="searchC" placeholder="Search.." class="inputBox" /><br />
            <asp:ListBox ID="ListBox2" runat="server" Width="100%" DataSourceID="dsCustomer" DataTextField="custFullName" DataValueField="id"></asp:ListBox>
            <br />
            <asp:ObjectDataSource ID="dsCustomer" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasEnginesLibrary.PurchaseDataSetTableAdapters.customerTableAdapter"></asp:ObjectDataSource>
            <br />
        </div>
       </div>
    <asp:Panel ID="pnlPurchase" runat="server">
        <div class="row">
            <div class="col-25">
                <b><label for="searchP">Products:</label></b>
            </div>
            <div class="col-75">
                <input type="text" id="searchP" placeholder="Search.." class="searchinput" /><br />
                <asp:ListBox ID="lbxSelectProduct" runat="server" Width="100%" DataSourceID="dsParts" DataTextField="prodBrName" DataValueField="id" AutoPostBack="True" OnSelectedIndexChanged="lbxSelectProduct_SelectedIndexChanged"></asp:ListBox><br />
                <asp:GridView ID="gvSelectedProductsSales" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="gvSelectedProductsSales_RowCancelingEdit">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:ButtonField CommandName="Cancel" Text="Remove" />
                        <asp:TemplateField HeaderText="Qty">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" max="9999" min="0" step="1" TextMode="Number"></asp:TextBox>
                                <asp:RangeValidator ID="rvQty" runat="server" ControlToValidate="TextBox1" MaximumValue="9999" MinimumValue="0"></asp:RangeValidator>
                            </ItemTemplate>
                        </asp:TemplateField>
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
                <asp:ObjectDataSource ID="dsParts" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasEnginesLibrary.PurchaseDataSetTableAdapters.productTableAdapter"></asp:ObjectDataSource>
                <br />
            </div>            
        </div>        
    </asp:Panel>
    <br />
    <asp:Panel ID="pnlRepair" runat="server">
        <div class ="row">
            <div class="col-25">
                <b><label for="txtModel">Equipment Model:<asp:RequiredFieldValidator ID="rfvModel" runat="server" ControlToValidate="txtModel" ErrorMessage="Please enter the model" ForeColor="Red">*</asp:RequiredFieldValidator></label></b>
            </div>
            <div class="col-75">
                <asp:TextBox ID="txtModel" runat="server" Width="100%"></asp:TextBox>
            </div>
        </div>
        <div class ="row">
            <div class="col-25">
                <b><label for="txtSerialNumber">Equipment Serial Number:<asp:RequiredFieldValidator ID="rvfSerialNumber" runat="server" ControlToValidate="txtSerialNumber" ErrorMessage="Please enter a serial number" ForeColor="Red">*</asp:RequiredFieldValidator></label></b>
            </div>
            <div class="col-75">
                <asp:TextBox ID="txtSerialNumber" runat="server" Width="100%"></asp:TextBox>
            </div>
        </div>
        <div class ="row">
            <div class="col-25">
                <b><label for="ddlType">Type:<asp:RangeValidator ID="rvType" runat="server" ControlToValidate="ddlType" MaximumValue="9999" MinimumValue="1" ErrorMessage="Please select an equipment type" ForeColor="Red">*</asp:RangeValidator></label></b>
            </div>
            <div class="col-75">
                <asp:DropDownList ID="ddlType" runat="server" DataSourceID="dsEqType" DataTextField="eqtType" DataValueField="id" Width="75%">
                    <asp:ListItem Value="-1" Text="Please select an equipment type"></asp:ListItem>
                </asp:DropDownList>
                <asp:ObjectDataSource ID="dsEqType" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasEnginesLibrary.PurchaseDataSetTableAdapters.equip_typeTableAdapter"></asp:ObjectDataSource>
            </div>
        </div>
        <div class ="row">
            <div class="col-25">
                <b><label for="ddlManu">Manufacturer:</label></b>
            </div>
            <div class="col-75">
                <asp:DropDownList ID="ddlManu" runat="server" DataSourceID="dsManu" DataTextField="manName" DataValueField="id" Width="75%"></asp:DropDownList>
                <asp:ObjectDataSource ID="dsManu" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasEnginesLibrary.PurchaseDataSetTableAdapters.manufacturerTableAdapter"></asp:ObjectDataSource>
            </div>
        </div>        
        <div class="row">
            <div class="col-25">
                <b><label for="RD">Issue Description:<asp:RequiredFieldValidator ID="rfvIssue" runat="server" ControlToValidate="RD" ForeColor="Red" ErrorMessage="Please describe the issue">*</asp:RequiredFieldValidator></label></b>
            </div>
            <div class="col-75">
                <asp:TextBox ID="RD" runat="server" Height="107px" Width="100%"></asp:TextBox><br />
                <br />
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <b><label for="Warranty">Warranty:</label></b>
            </div>
            <div class="col-75">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="394px">
                    <asp:ListItem Value="1">&nbsp;Yes</asp:ListItem>
                    <asp:ListItem Value="0" Selected="True">&nbsp;No</asp:ListItem>
                </asp:RadioButtonList><br />
                <br />
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <b><label for="ddlService">Service Requested:<asp:RangeValidator ID="rvService" ControlToValidate="ddlService" runat="server" MaximumValue="9999" MinimumValue="1" ErrorMessage="Please select a service" ForeColor="Red">*</asp:RangeValidator></label></b>
            </div>
            <div class="col-75">
                <asp:DropDownList ID="ddlService" runat="server" DataSourceID="dsService" DataTextField="service" DataValueField="id" Width="75%" AppendDataBoundItems="true">
                    <asp:ListItem Value="-1" Text="Please select a service"></asp:ListItem>
                </asp:DropDownList>
                <asp:ObjectDataSource ID="dsService" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasEnginesLibrary.PurchaseDataSetTableAdapters.serviceTableAdapter"></asp:ObjectDataSource>
            </div>
        </div>
    </asp:Panel>
    <div class="row">
            <div class="col-25">
            <b><label for="ddlPayment">Payment method:<asp:RangeValidator ID="rvPaymentMethod" ControlToValidate="ddlPayment" runat="server" MaximumValue="9999" MinimumValue="1" ForeColor="Red" ErrorMessage="Please select a method of payment">*</asp:RangeValidator></label></b>
                </div>
            <div class="col-75">
                <asp:DropDownList ID="ddlPayment" runat="server" DataSourceID="dsPayment" DataTextField="payType" DataValueField="id" Width="75%" AppendDataBoundItems="true">
                    <asp:ListItem Text="Please select a method of payment" Value="-1"></asp:ListItem>
                </asp:DropDownList>
                <asp:ObjectDataSource ID="dsPayment" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasEnginesLibrary.PurchaseDataSetTableAdapters.paymentTableAdapter"></asp:ObjectDataSource>
            </div>
        </div>
    <div class="row">
        <div class="col-25">
            <b><label for="Total">Total:</label></b>
        </div>
        <div class="col-75">
            <b><asp:TextBox ID="txtTotal" runat="server" placeholder="Total" EnableViewState="False" BackColor="Silver" Width="100%"></asp:TextBox></b>           
            <br />
            <asp:ValidationSummary ID="vsPurchase" runat="server" ForeColor="Red" />
        </div>
    </div>
    <div class="row">
        <div class="col-25">
            <asp:Button ID="submit" runat="server" Text="Submit" CssClass="IndexButton" OnClick="submit_Click"/>
        </div>
    </div>
        </div>
</asp:Content>
