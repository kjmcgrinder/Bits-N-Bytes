<%@ Page Title="Purchase" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Purchase.aspx.cs" Inherits="EmmasEngines.Purchase" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="IndexHeaderA">Purchase</h3>
    <br />
    <div class="btn-group btn-group-toggle">
        <asp:Button ID="btnSale" runat="server" Text="Sale" OnClick="rdoSale_CheckedChanged" />
        <asp:Button ID="btnRepair" runat="server" Text="Repair" OnClick="rdoRepair_CheckedChanged" />
    </div>
    <br />
    <br />
    <div class="row">
        <div class="col-25">
            <label for="searchC">Customer:</label>
        </div>
        <div class="col-75">
            <input type="text" id="searchC" placeholder="Search.." class="searchinput" /><br />
            <asp:ListBox ID="ListBox2" runat="server" Width="394px" DataSourceID="dsCustomer" DataTextField="custFullName" DataValueField="id"></asp:ListBox>
            <br />
            <asp:ObjectDataSource ID="dsCustomer" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasEnginesLibrary.PurchaseDataSetTableAdapters.customerTableAdapter"></asp:ObjectDataSource>
            <br />
        </div>
    </div>
    <asp:Panel ID="pnlPurchase" runat="server">
        <div class="row">
            <div class="col-25">
                <label for="searchP">Products:</label>
            </div>
            <div class="col-75">
                <input type="text" id="searchP" placeholder="Search.." class="searchinput" /><br />
                <asp:ListBox ID="lbxSelectProduct" runat="server" Width="395px" DataSourceID="dsParts" DataTextField="prodBrName" DataValueField="id" AutoPostBack="True" OnSelectedIndexChanged="lbxSelectProduct_SelectedIndexChanged"></asp:ListBox><br />
                <asp:GridView ID="gvSelectedProductsSales" runat="server" Width="392px">
                    <Columns>
                        <asp:TemplateField HeaderText="Qty">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" TextMode="Number" min="0" step="1" max="9999"></asp:TextBox><asp:RangeValidator runat="server" ID="rvQty" ControlToValidate="TextBox1" MaximumValue="9999" MinimumValue="0"></asp:RangeValidator>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
            </div>
        </div>
    </asp:Panel>
    <br />
    <asp:Panel ID="pnlRepair" runat="server">
        <div class="row">
            <div class="col-25">
                <label for="searchPt">Parts:</label>
            </div>
            <div class="col-75">
                <input type="text" id="searchPT" placeholder="Search.." class="searchinput" /><br />
                <asp:ListBox ID="ListBox1" runat="server" Width="399px" DataSourceID="dsParts" DataTextField="prodBrName" DataValueField="id"></asp:ListBox>
                <br />
                <asp:GridView ID="GridView2" runat="server" Width="392px">
                    <Columns>
                        <asp:TemplateField HeaderText="Items Selected">
                            <ItemTemplate>
                                <asp:Label ID="lblItemSelected0" runat="server" Text="Label"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Qty">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="dsParts" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasEnginesLibrary.PurchaseDataSetTableAdapters.productTableAdapter"></asp:ObjectDataSource>
                <br />
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <label for="RD">Repair Description:</label>
            </div>
            <div class="col-75">
                <asp:TextBox ID="RD" runat="server" Height="107px" Width="367px"></asp:TextBox><br />
                <br />
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <label for="Warranty">Warranty:</label><%--changed from "warrenty"--%></div>
            <div class="col-75">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="394px">
                    <asp:ListItem Value="1">&nbsp;Yes</asp:ListItem>
                    <asp:ListItem Value="2">&nbsp;No</asp:ListItem>
                </asp:RadioButtonList><br />
                <br />
            </div>
        </div>
    </asp:Panel>
    <div class="row">
        <div class="col-25">
            <label for="Total">Total:</label>
        </div>
        <div class="col-75">
            <asp:TextBox ID="txtTotal" runat="server" placeholder="Total" EnableViewState="true"></asp:TextBox>            
            <br />
        </div>
    </div>
    <div class="row">
        <div class="col-25">
            <asp:Button ID="submit" runat="server" Text="Submit" CssClass="IndexButton" OnClick="submit_Click"/>
        </div>
    </div>
</asp:Content>
