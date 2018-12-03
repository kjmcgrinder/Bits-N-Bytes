<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="EmmasEngines.Employees" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %>- Create Employee</title>

    <link href="Style/stylePurchase.css" rel="stylesheet" />
    <link href="Style/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="Scripts/GenerateUsername.js"></script>
    <style>
        select
        {
            margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
  width: 225px;
        }
    </style>
</head>
<body onload="Init()">
    <form runat="server" class="IndexCentering">
        <div class="secondary">
            <div class="row">
                <div class="col-75">
                    <div class="container">


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
                                <asp:DropDownList runat="server" ID="Position" DataSourceID="ObjectDataSource1" DataTextField="posName" DataValueField="id" AppendDataBoundItems="true"><asp:ListItem Text="Please select a position" Value="-1"></asp:ListItem><asp:ListItem Text="Inactive" Value="0"></asp:ListItem></asp:DropDownList><br />

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
        <footer>
            <small>Copyright &copy; 2018 Bits N' Bytes. All rights reserved.</small>
        </footer>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmasEnginesLibrary.EmployeeDataSetTableAdapters.positionTableAdapter"></asp:ObjectDataSource>
    </form>
    <script>
        
    </script>
</body>
</html>
