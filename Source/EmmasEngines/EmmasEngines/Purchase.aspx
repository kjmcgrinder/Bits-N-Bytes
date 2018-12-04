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
            <asp:ObjectDataSource ID="dsCustomer" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasEnginesLibrary.PurchaseDataSetTableAdapters.customerTableAdapter"></asp:ObjectDataSource>
            <br />
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
                <asp:ListBox ID="ListBox3" runat="server" Width="395px"></asp:ListBox><br />
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
                <asp:ObjectDataSource ID="dsParts" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasEnginesLibrary.PurchaseDataSetTableAdapters.productTableAdapter"></asp:ObjectDataSource>
                <br />
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
                <label for="Warranty">Warranty:</label><%--changed from "warrenty"--%>
            </div>
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
            <input type="text" id="cvv" name="cvv" placeholder="Total" readonly="true" disabled="disabled" /><br />
            <br />
        </div>
    </div>
    <div class="row">
        <div class="col-25">
            <asp:Button ID="submit" runat="server" Text="Submit" CssClass="IndexButton" />
        </div>
    </div>
</asp:Content>
