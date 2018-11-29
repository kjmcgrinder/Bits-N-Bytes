<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="EmmasEngines.Inventory" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - Inventory</title>
    <link href="Style/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    <style type="text/css">
        .auto-style1 {
            margin-top: 2;
        }
    </style>

</head>


<body>
    <!--Nav Bar-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Emma's Small Engines</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="Default2.aspx">Home</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sales
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="Sale-Repair.aspx">Sale / Repair</a>
                        <a class="dropdown-item" href="Sales.aspx">Customer Management</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Inventory.aspx">Inventory</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Admin
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="Users.aspx">User Management</a>
                        <a class="dropdown-item" href="Reports.aspx">Reports</a>
                    </div>
                </li>
            </ul>
            <a class="nav-link" href="Login.aspx">Logout</a>
        </div>
    </nav>

    <form runat="server" class="secondary">
        <h3 class="IndexHeaderA">Inventory</h3>
        <section class="IndexCentering">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT DISTINCT [prodName] FROM [product] ORDER BY [prodName]"></asp:SqlDataSource>
            Product&nbsp; Name:
                &nbsp;<br />
            <asp:DropDownList ID="ddlProductInven" runat="server" Height="44px" Width="176px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="prodName" DataValueField="prodName" EnableViewState="False">
            </asp:DropDownList>

            <br />
            <br />
            Brand Name:
            <br />
            <asp:ListBox ID="lstProduct" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="prodBrand" DataValueField="id" Height="86px" Width="167px" CssClass="auto-style1"></asp:ListBox>
            &nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT [id], [prodBrand], [prodName], [prodDescription] FROM [product] WHERE ([prodName] = @prodName)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlProductInven" Name="prodName" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            Product Information<%--            <asp:ListBox ID="lstProductInven" runat="server" Height="29px" Width="204px" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="prodName" DataValueField="id" EnableViewState="False">
                <asp:ListItem Selected="True"></asp:ListItem>
            </asp:ListBox>--%><asp:GridView ID="gvProduct" runat="server" align="center" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" EnableViewState="False">
                <Columns>
                    <asp:BoundField DataField="prodName" HeaderText="Name" SortExpression="prodName" />
                    <asp:BoundField DataField="prodBrand" HeaderText="Brand" SortExpression="prodBrand" />
                    <asp:BoundField DataField="prodDescription" HeaderText="Description" SortExpression="prodDescription" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:EmmasConnectionString %>" SelectCommand="SELECT [invSize], [invQuantity], [id], [invMeasure], [invPrice], [productID] FROM [inventory] WHERE ([productID] = @productID) ORDER BY [invQuantity], [invPrice]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lstProduct" Name="productID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            Inventory
            
            <%--<asp:DetailsView ID="dvInventory" runat="server" Height="50px" Width="199px" AutoGenerateRows="False" CellPadding="4" CssClass="auto-style1" DataKeyNames="id" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" OnPageIndexChanging="dvInventory_PageIndexChanging">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="invSize" HeaderText="Size" ReadOnly="True" SortExpression="invSize" />
                    <asp:BoundField DataField="invQuantity" HeaderText="Quantity" SortExpression="invQuantity" />
                    <asp:BoundField DataField="invMeasure" HeaderText="Measure" ReadOnly="True" SortExpression="invMeasure" />
                    <asp:BoundField DataField="invPrice" HeaderText="Price" SortExpression="invPrice" />
                    <asp:CommandField ShowEditButton="True" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>--%>

            <br />
            <asp:GridView ID="gvInven" align="center" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" EnableViewState="False">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="invSize" HeaderText="Size" ReadOnly="True" SortExpression="invSize" />
                    <asp:BoundField DataField="invQuantity" HeaderText="Quantity" SortExpression="invQuantity" />
                    <asp:BoundField DataField="invMeasure" HeaderText="Measure" ReadOnly="True" SortExpression="invMeasure" />
                    <asp:BoundField DataField="invPrice" HeaderText="Price" SortExpression="invPrice" ReadOnly="True" />
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>

            <br />

            <%--            <div class="col-sm-3">
                <h5 class="card-title">Order Product</h5>
                <p class="card-text">Place an order here.</p>
                <div class="card">
                    <div class="card-body">
                        <a href="Orders.aspx" class="btn btn-primary">Get Started</a>
                    </div>
                </div>
            </div>--%>
            <div>
                Order Product
                <br />
                Place an order here.
                <br />
                <a href="Orders.aspx" class="btn btn-primary">Get Started</a>
            </div>

            <br />
            <div>
                <a href="javascript: history.go(-1)">Go Back</a>
            </div>

        </section>


    </form>

    <footer>
        <small>Copyright &copy; 2018 Bits N' Bytes. All rights reserved.</small>
    </footer>

</body>
</html>
