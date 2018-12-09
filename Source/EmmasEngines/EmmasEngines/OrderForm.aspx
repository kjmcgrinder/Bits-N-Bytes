<%@ Page Title="Order Form" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderForm.aspx.cs" Inherits="EmmasEngines.Order_Form" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="IndexCentering">
        <div class="row">
            <div class="col-75">
                <div class="container">
                    <div class="row">

                        <div class="col-50">
                            <br />
                            <h3 class="IndexHeaderA">
                                <asp:Label ID="lblHeader" runat="server">Order Form</asp:Label></h3>
                            <br />
                            <br />
                            <asp:ValidationSummary runat="server" ID="vsOrderForm" ForeColor="Red" />
                            <br />
                            <label for="lblPart"><i class="fa fa-user"></i>Part:<asp:RequiredFieldValidator runat="server" ID="rfvPart" ControlToValidate="txtPart" ErrorMessage="Part is Required" ForeColor="Red">*</asp:RequiredFieldValidator></label><br />
                            <asp:TextBox ID="txtPart" runat="server" placeholder="2 stroke oil"></asp:TextBox><br />

                            <label for="lblBrand"><i class="fa fa-user"></i>Brand<asp:RequiredFieldValidator runat="server" ID="rfvBrand" ControlToValidate="txtBrand" ErrorMessage="Brand is Required" ForeColor="Red">*</asp:RequiredFieldValidator></label><br />
                            <asp:TextBox ID="txtBrand" runat="server" placeholder="Castrol"></asp:TextBox><br />

                            <label for="lblQuantity">Quantity<asp:RequiredFieldValidator runat="server" ID="rfvSize" ControlToValidate="txtQuantity" ErrorMessage="Quantity is Required" ForeColor="Red">*</asp:RequiredFieldValidator></label><br />
                            <asp:TextBox ID="txtQuantity" runat="server" placeholder="1 ~ 100"></asp:TextBox><br />

                            <label for="lblSize"><i class="fa fa-address-card-o"></i>Size</label><br />
                            <asp:TextBox ID="txtSize" placeholder="6.00 Fl oz" runat="server"></asp:TextBox><br />
                        </div>

                        <div class="IndexCentering" style="width: 67%">
                            <asp:Button ID="btnOrder" runat="server" CssClass="IndexButton" Text="Submit Order" Width="236px"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>



<%--    <h3 class="IndexHeaderA">Order Form</h3>
    <br />
    <br />
    <br />
    <br />--%>
<%--                            <div class="row">
                                <div class="col-25">--%>
<%--                                    <label for="lblPart">Part:</label>
                                </div>
                                <div class="col-75">
                                    <asp:TextBox ID="txtPart" runat="server" Width="80%"></asp:TextBox><br />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-25">
                                    <label for="searchP">Brand:</label>
                                </div>
                                <div class="col-75">
                                    <asp:TextBox ID="txtBrand" runat="server" Width="80%"></asp:TextBox><br />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-25">
                                    <label for="searchPt">Quantity:</label>
                                </div>
                                <div class="col-75">
                                    <asp:TextBox ID="txtQty" runat="server" Width="80%"></asp:TextBox><br />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-25">
                                    <label for="size">Size:</label>
                                </div>
                                <div class="col-75">
                                    <asp:TextBox ID="txtSize" runat="server" Width="80%"></asp:TextBox><br />
                                </div>
                            </div>--%>
