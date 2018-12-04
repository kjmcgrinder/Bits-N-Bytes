<%@ Page Title="Edit Employee" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="EmmasEngines.Employees" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="IndexCentering">
        <div class="row">
            <div class="col-75">
                <div class="container" onload="Init()">

                    <div class="row">
                        <div class="col-50">
                            <br />
                            <asp:Label runat="server" ID="lblHeader"><h3 class="IndexHeaderA">Create an Employee Record</h3></asp:Label>
                            <br />
                            <br />
                            <br />
                            <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false"><i class ="fade fa-user">Create failed please try again</i></asp:Label><br />
                            <br />

                            <label for="fname"><i class="fa fa-user"></i>First Name</label><br />
                            <asp:TextBox runat="server" ID="fname" placeholder="John"></asp:TextBox><br />

                            <label for="lname"><i class="fa fa-user"></i>Last Name</label><br />
                            <asp:TextBox runat="server" ID="lname" placeholder="Doe"></asp:TextBox><br />

                            <label for="Position"><i class="fa fa-envelope"></i>Position</label><br />
                            <asp:DropDownList runat="server" ID="Position" DataSourceID="ObjectDataSource1" DataTextField="posName" DataValueField="id" AppendDataBoundItems="true" Style="margin-bottom: 20px; padding: 12px; border: 1px solid #ccc; border-radius: 3px; width: 225px;">
                                <asp:ListItem Text="Please select a position" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Inactive" Value="0"></asp:ListItem>
                            </asp:DropDownList><br />

                            <label for="username"><i class="fa fa-user"></i>Username</label><br />
                            <asp:TextBox runat="server" ID="username" ReadOnly="true" placeholder="jdoe3"></asp:TextBox><br />

                            <label for="password" class="IndexCentering"><i class="fa fa-address-card-o"></i>Password</label><br />
                            <asp:TextBox runat="server" ID="password" placeholder="Enter Password" TextMode="Password"></asp:TextBox><br />

                            <label for="confirmPassword" class="IndexCentering"><i class="fa fa-address-card-o"></i>Confirm Password</label><br />
                            <asp:TextBox runat="server" ID="confirmPassword" placeholder="Confirm Password" TextMode="Password"></asp:TextBox><br />
                            <asp:HiddenField runat="server" ID="MaxID" />
                            <div class="row-50">
                                <div class="IndexCentering">
                                    <asp:Button ID="btnSubmit" runat="server" CssClass="IndexButton" Text="Enter" Width="316px" OnClick="btnSubmit_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                    &nbsp;
                </div>
            </div>
        </div>
    </div>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasEnginesLibrary.EmployeeDataSetTableAdapters.positionTableAdapter"></asp:ObjectDataSource>
</asp:Content>
