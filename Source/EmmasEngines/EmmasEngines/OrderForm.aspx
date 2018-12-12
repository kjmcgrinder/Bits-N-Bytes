<%@ Page Title="Order Form" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderForm.aspx.cs" Inherits="EmmasEngines.Order_Form" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <h3 class="IndexHeaderA">
        <asp:Label ID="lblHeader" runat="server">Order Form</asp:Label>
    </h3>
    <br />
    <br />
    <br />
<%--    <div style="margin-left: 20px;">
        <asp:Button ID="btnOrderView" runat="server" Text="View Orders" CssClass="btn btn-primary btn-sm"  PostBackUrl="~/Orders.aspx" Height="45px" Width="100"/>
        <asp:Button ID="btnInventory" runat="server" Text="Inventory" CssClass="btn btn-primary btn-sm" PostBackUrl="~/Inventory.aspx" Height="45px" Width="100" /><br />
    </div>--%>
    <br />

    <div class="container">
        <div class="row">
            <div class="col-md-3 offset-md-4">
                <div class="form-group">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 offset-md-4">
                <div class="form-group">
                    <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false"><i class ="fade fa-user">Order failed please fix the errors and try again</i></asp:Label><br />
                    <asp:ValidationSummary runat="server" ID="vsOrderForm" ForeColor="Red" />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 mt-3 offset-md-4">
                <div class="form-group">
                    <label for="lblPart"><i class="fa fa-envelope"></i>Part:<asp:RangeValidator runat="server" ID="rvPart" ControlToValidate="ddlPart" ErrorMessage="Please select a part" ForeColor="Red" MaximumValue="999" MinimumValue="1">*</asp:RangeValidator></label><br />
                    <asp:DropDownList ID="ddlPart" runat="server" AppendDataBoundItems="True" DataValueField="prodName" Style="margin-bottom: 20px; padding: 12px; border: 1px solid #ccc; border-radius: 3px; width: 280px;" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="prodName">
                        <asp:ListItem Text="Please select a part" Value="-1"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 offset-md-4">
                <div class="form-group">
                    <label for="lblBrand"><i class="fa fa-envelope"></i>Brand:<asp:RangeValidator runat="server" ID="rvBrand" ControlToValidate="ddlBrand" ErrorMessage="Please select a brand" ForeColor="Red" MaximumValue="999" MinimumValue="1">*</asp:RangeValidator></label><br />
                    <asp:DropDownList ID="ddlBrand" runat="server" AppendDataBoundItems="True" Style="margin-bottom: 20px; padding: 12px; border: 1px solid #ccc; border-radius: 3px; width: 280px;" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="prodBrand" DataValueField="prodName" Width="225px">
                        <asp:ListItem Text="Please select a Brand" Value="-1"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 offset-md-4">
                <div class="form-group">
                    <label for="lblQuantity">Quantity<asp:RequiredFieldValidator runat="server" ID="rfvSize" ControlToValidate="txtQuantity" ErrorMessage="Quantity is Required" ForeColor="Red">*</asp:RequiredFieldValidator></label><br />
                    <asp:TextBox ID="txtQuantity" type="number" min="1" max="99" runat="server" placeholder="1 ~ 99" Width="280px" CssClass="inputBox"></asp:TextBox><br />
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 offset-md-4">
                <div class="form-group">
                    <label for="lblSize"><i class="fa fa-address-card-o"></i>Size</label><br />
                    <asp:TextBox ID="txtSize" placeholder="6.00" runat="server" Width="280px" CssClass="inputBox"></asp:TextBox><br />
                </div>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-3">
            </div>
            <div class="col-3">
                <asp:Button ID="btnEnter" runat="server" Text="Place Order" CssClass="IndexButton" Height="56px" Width="186px"/>
            </div>
            <div class="col-3">
                <asp:Button ID="btnClear" runat="server" Text="Cancel Order" CssClass="IndexButton" Height="56px" OnClick="btnClear_Click" Width="186px" />
            </div>
        </div>
    </div>
    &nbsp;
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT DISTINCT [prodName] FROM [product] ORDER BY [prodName]"></asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT DISTINCT [prodBrand], [prodName] FROM [product] WHERE ([prodName] = @prodName) ORDER BY [prodBrand]">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlPart" Name="prodName" PropertyName="SelectedValue" Type="String" DefaultValue="" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
