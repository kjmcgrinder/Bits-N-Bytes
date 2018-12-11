<%@ Page Title="Edit Employee" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="EmmasEngines.Employees" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="IndexCentering">
        <div class="row">
            <div class="col-75">
                <div class="container">

                    <div class="row">
                        <div class="col-50">
                            <br />
                            <h3 class="IndexHeaderA"><asp:Label runat="server" ID="lblHeader">Create an Employee Record</asp:Label></h3>
                            <br />
                            <br />
                            <br />
                            <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false"><i class ="fade fa-user">Create failed please try again</i></asp:Label><br />
                            <asp:ValidationSummary runat="server" ID="vsEmployee" ForeColor="Red" />
                            <br />

                            <label for="fname"><i class="fa fa-user"></i>First Name<asp:RequiredFieldValidator ID="rfvFname" runat="server" ControlToValidate="fname" ErrorMessage="First Name Required" ForeColor="Red">*</asp:RequiredFieldValidator></label><br />
                            <asp:TextBox runat="server" ID="fname" placeholder="John" onfocusout="GenerateUsername()" CssClass="inputBox" Width="350px"></asp:TextBox><br />

                            <label for="lname"><i class="fa fa-user"></i>Last Name<asp:RequiredFieldValidator ID="rfvLname" runat="server" ControlToValidate="lname" ErrorMessage="Last Name Required" ForeColor="Red">*</asp:RequiredFieldValidator></label><br />
                            <asp:TextBox runat="server" ID="lname" placeholder="Doe" onfocusout="GenerateUsername()" CssClass="inputBox" Width="350px"></asp:TextBox><br />

                            <label for="Position"><i class="fa fa-envelope"></i>Position<asp:RangeValidator ID="rvPosition" runat="server" ControlToValidate="Position" MaximumValue="9999" MinimumValue="0" ErrorMessage="Please select a position" ForeColor="Red">*</asp:RangeValidator></label><br />
                            <asp:DropDownList runat="server" ID="Position" DataSourceID="ObjectDataSource1" DataTextField="posName" DataValueField="id" AppendDataBoundItems="true" Style="margin-bottom: 20px; padding: 12px; border: 1px solid #ccc; border-radius: 3px; " Width="350px">
                                <asp:ListItem Text="Please select a position" Value="-1"></asp:ListItem>
                                <asp:ListItem Text="Inactive" Value="0"></asp:ListItem>
                            </asp:DropDownList><br />

                            <label for="username"><i class="fa fa-user"></i>Username</label><br />
                            <asp:TextBox runat="server" ID="username" ReadOnly="true" placeholder="jdoe3" CssClass="inputBox" Width="350px"></asp:TextBox><br />

                            <label for="password" class="IndexCentering"><i class="fa fa-address-card-o"></i>Password<asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="password" ControlToCompare="confirmPassword" ErrorMessage="Passwords don't match" ForeColor="Red">*</asp:CompareValidator></label><br />
                            <asp:TextBox runat="server" ID="password" placeholder="Enter Password" TextMode="Password" CssClass="inputBox" Width="350px"></asp:TextBox><br />

                            <label for="confirmPassword" class="IndexCentering"><i class="fa fa-address-card-o"></i>Confirm Password</label><br />
                            <asp:TextBox runat="server" ID="confirmPassword" placeholder="Confirm Password" TextMode="Password" CssClass="inputBox" Width="350px"></asp:TextBox><br />
                            <asp:HiddenField runat="server" ID="MaxID" />
                            <div class="row-50">
                                <div class="IndexCentering" style="width: 47%"> 
                                    <asp:Button ID="btnSubmit" runat="server" CssClass="IndexButton" Text="Enter" Width="350px" OnClick="btnSubmit_Click" />
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
