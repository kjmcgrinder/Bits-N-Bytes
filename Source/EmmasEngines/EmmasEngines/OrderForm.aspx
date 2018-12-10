<%@ Page Title="Order Form" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderForm.aspx.cs" Inherits="EmmasEngines.Order_Form" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="IndexCentering">
        <%--<div class="row">
            <div class="col-75">--%>
                <div class="container">
                    <%--<div class="row">
                        <div class="col-50">--%>
                            <br />
                            <h3 class="IndexHeaderA">
                                <asp:Label ID="lblHeader" runat="server">Order Form</asp:Label>
                            </h3>
                            <br />
                            <br />
                    <div class="container subScript">
                            <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false"><i class ="fade fa-user">Order failed please fix the errors and try again</i></asp:Label><br />
                            <asp:ValidationSummary runat="server" ID="vsOrderForm" ForeColor="Red" />
                            <br />
                            <label for="lblPart"><i class="fa fa-envelope"></i>Part:<asp:RangeValidator runat="server" ID="rvPart" ControlToValidate="ddlPart" ErrorMessage="Please select a part" ForeColor="Red" MaximumValue="999" MinimumValue="1">*</asp:RangeValidator></label><br />
<%--                            <asp:TextBox ID="txtPart" runat="server" placeholder="2 stroke oil" ></asp:TextBox>--%>
                            <asp:DropDownList ID="ddlPart" runat="server" AppendDataBoundItems="True"  DataValueField="prodName" Style="margin-bottom: 20px; padding: 12px; border: 1px solid #ccc; border-radius: 3px; width: 225px;" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="prodName">
                                <asp:ListItem Text="Please select a part" Value="-1"></asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <label for="lblBrand"><i class="fa fa-envelope"></i>Brand:<asp:RangeValidator runat="server" ID="rvBrand" ControlToValidate="ddlBrand" ErrorMessage="Please select a brand" ForeColor="Red" MaximumValue="999" MinimumValue="1">*</asp:RangeValidator></label><br />
<%--                            <asp:TextBox ID="txtBrand" runat="server" placeholder="Castrol"></asp:TextBox>--%>
                            <asp:DropDownList ID="ddlBrand" runat="server" AppendDataBoundItems="True"  Style="margin-bottom: 20px; padding: 12px; border: 1px solid #ccc; border-radius: 3px; width: 225px;" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="prodBrand" DataValueField="prodName">
                                <asp:ListItem Text="Please select a Brand" Value="-1"></asp:ListItem>
                            </asp:DropDownList>
                            <br />

                            <label for="lblQuantity">Quantity<asp:RequiredFieldValidator runat="server" ID="rfvSize" ControlToValidate="txtQuantity" ErrorMessage="Quantity is Required" ForeColor="Red">*</asp:RequiredFieldValidator></label><br />
                            <asp:TextBox ID="txtQuantity" type="number" min="1" max="99" runat="server" placeholder="1 ~ 99" Width="225px"></asp:TextBox><br />

                            <label for="lblSize"><i class="fa fa-address-card-o"></i>Size</label><br />
                            <asp:TextBox ID="txtSize" placeholder="6.00 Fl oz" runat="server" Width="225px"></asp:TextBox><br />
                            <br />
                            </div>
                            <div class="IndexCentering" style="width: 100%">
                                <asp:Button ID="btnOrder" runat="server" CssClass="IndexButton" Text="Submit Order" Width="225px" />
                            </div>
                        </div>
                    </div>
                    &nbsp;
               <%-- </div>
            </div>
        </div>
    </div>--%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT DISTINCT [prodName] FROM [product] ORDER BY [prodName]"></asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT DISTINCT [prodBrand], [prodName] FROM [product] WHERE ([prodName] = @prodName) ORDER BY [prodBrand]">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlPart" Name="prodName" PropertyName="SelectedValue" Type="String" DefaultValue="" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
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
