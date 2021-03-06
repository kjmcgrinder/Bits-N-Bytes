﻿<%@ Page Title="Edit Customer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateCustomer.aspx.cs" Inherits="EmmasEngines.CreateCustomer" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">   
    <div class="IndexCentering">
        <%--<div class="row">
            <div class="col-75">--%>
                <%--<div class="container">
                    <div class="row">
                        <div class="col-50">--%>
                            <br />
                            <h3 class="IndexHeaderA">
                                <asp:Label ID="lblHeader" runat="server">Create Customer</asp:Label>

                            </h3>
                            <br />
                            <br />
                            <asp:ValidationSummary runat="server" ID="vsCustomer" ForeColor="Red" />
                            <br />
                            <label for="fname"><i class="fa fa-user"></i>First Name<asp:RequiredFieldValidator runat="server" ID="rfvFname" ControlToValidate="fname" ErrorMessage="First Name Required" ForeColor="Red">*</asp:RequiredFieldValidator></label><br />
                            <asp:TextBox ID="fname" runat="server"  CssClass="inputBox" Width="350px"></asp:TextBox><br />

                            <label for="lname"><i class="fa fa-user"></i>Last Name<asp:RequiredFieldValidator runat="server" ID="rfvLname" ControlToValidate="lname" ErrorMessage="Last Name Required" ForeColor="Red">*</asp:RequiredFieldValidator></label><br />
                            <asp:TextBox ID="lname" runat="server" CssClass="inputBox" Width="350px"></asp:TextBox><br />

                            <label for="email"><i class="fa fa-envelope"></i>Email<asp:RegularExpressionValidator runat="server" ID="rxvEmail" ControlToValidate="email" ValidationExpression="^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$" ErrorMessage="Incorrect Email Format" ForeColor="Red">*</asp:RegularExpressionValidator></label><br />
                            <asp:TextBox ID="email" runat="server" placeholder="john@example.com" CssClass="inputBox" Width="350px"></asp:TextBox><br />

                            <label for="adr"><i class="fa fa-address-card-o"></i>Address</label><br />
                            <asp:TextBox ID="adr" placeholder="542 W. 15th Street" runat="server" CssClass="inputBox" Width="350px"></asp:TextBox><br />

                            <label for="city" class="IndexCentering"><i class="fa fa-address-card-o"></i>City</label><br />
                            <asp:TextBox ID="City" runat="server" placeholder="New York" CssClass="inputBox" Width="350px"></asp:TextBox><br />

                            <%--<div class="col-50">--%>
                                <label for="zip">Postal Code<asp:RegularExpressionValidator runat="server" ID="rxvPostalCode" ControlToValidate="zip" ValidationExpression="^[a-zA-Z][0-9][a-zA-Z]\s?[0-9][a-zA-Z][0-9]$" ErrorMessage="Incorrect Postal Code Format" ForeColor="Red">*</asp:RegularExpressionValidator></label><br />
                                <asp:TextBox ID="zip" runat="server" placeholder="A1A 1A1" CssClass="inputBox" Width="350px"></asp:TextBox><br />

                          <%--  </div>
                            <div class="col-50">--%>
                                <label for="Phone">Phone<asp:RequiredFieldValidator runat="server" ID="rfvPhone" ControlToValidate="Phone" ErrorMessage="Phone Number Required" ForeColor="Red">*</asp:RequiredFieldValidator></label><br />
                                <asp:TextBox ID="Phone" runat="server" placeholder="123-456-7890" CssClass="inputBox" Width="350px"></asp:TextBox>
                         <%--   </div>--%>

                            <%--<div class="IndexCentering">--%>
                                <asp:Button ID="Button1" runat="server" CssClass="IndexButtonSubmit" Text="Enter" Width="350px" OnClick="Button1_Click" /><br />
                           <%-- </div>--%>
                        <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="IndexButtonCancel" OnClick="Button2_Click" PostBackUrl="~/Sales.aspx" CausesValidation="false" Width="175px" />
                        </div>
        </div> 

                   <%-- </div>
                    &nbsp;
                </div>
            </div>
        </div>
    </div>--%>
</asp:Content>
