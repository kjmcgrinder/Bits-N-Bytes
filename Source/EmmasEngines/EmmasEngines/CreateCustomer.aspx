<%@ Page Title="Edit Customer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateCustomer.aspx.cs" Inherits="EmmasEngines.CreateCustomer" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="IndexCentering">
        <div class="row">
            <div class="col-75">
                <div class="container">
                    <div class="row">
                        <div class="col-50">
                            <br />
                            <h3 class="IndexHeaderA">
                                <asp:Label ID="lblHeader" runat="server">Create Customer</asp:Label></h3>
                            <br />
                            <br />
                            <br />
                            <label for="fname"><i class="fa fa-user"></i>First Name</label><br />
                            <asp:TextBox ID="fname" runat="server" placeholder="John"></asp:TextBox><br />

                            <label for="lname"><i class="fa fa-user"></i>Last Name</label><br />
                            <asp:TextBox ID="lname" runat="server" placeholder="Doe"></asp:TextBox><br />

                            <label for="email"><i class="fa fa-envelope"></i>Email</label><br />
                            <asp:TextBox ID="email" runat="server" placeholder="john@example.com"></asp:TextBox><br />

                            <label for="adr"><i class="fa fa-address-card-o"></i>Address</label><br />
                            <asp:TextBox ID="adr" placeholder="542 W. 15th Street" runat="server"></asp:TextBox><br />

                            <label for="city" class="IndexCentering"><i class="fa fa-address-card-o"></i>City</label><br />
                            <asp:TextBox ID="City" runat="server" placeholder="New York"></asp:TextBox><br />

                            <div class="col-50">
                                <label for="zip">Postal Code</label><br />
                                <asp:TextBox ID="zip" runat="server" placeholder="A1A 1A1"></asp:TextBox>

                            </div>
                            <div class="col-50">
                                <label for="Phone">Phone</label><br />
                                <asp:TextBox ID="Phone" runat="server" placeholder="123-456-7890"></asp:TextBox>

                            </div>
                            <div class="IndexCentering">
                                <asp:Button ID="Button1" runat="server" CssClass="IndexButton" Text="Enter" Width="316px" OnClick="Button1_Click" />
                            </div>
                        </div>


                    </div>
                    &nbsp;
                </div>
            </div>
        </div>
    </div>
</asp:Content>
