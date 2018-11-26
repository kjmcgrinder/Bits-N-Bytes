<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Purchase.aspx.cs" Inherits="EmmasEngines.Purchase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<link href="Style/stylePurchase.css" rel="stylesheet" />
<link href="Style/style.css" rel="stylesheet" />
<body>
      <form id="form1" runat="server">

          <div class="col-50">
            <h3 class="IndexHeaderA">Purchase</h3><br /><br />
            <label for="fname">Service</label>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="246px"></asp:DropDownList>
            <label for="cname">Customer</label>&nbsp;
            <input type="text" name="search" placeholder="Search.." class="searchinput"/><br />
            <asp:DropDownList ID="DropDownList2" runat="server" Height="21px" Width="248px"></asp:DropDownList>
            <label for="cname">Product</label>&nbsp;
            <input type="text" name="search" placeholder="Search.." class="searchinput"/><br />
            <asp:DropDownList ID="DropDownList3" runat="server" Height="21px" Width="248px"></asp:DropDownList>
              <label for="cname">Parts</label>&nbsp;
            <input type="text" name="search" placeholder="Search.." class="searchinput" /><br />
              <asp:ListBox ID="ListBox1" runat="server" Width="389px"></asp:ListBox>
            <label for="cname">Repair Description</label>&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="107px" Width="1472px"></asp:TextBox>
            <div class="row">
              <div class="col-50">
                <label for="cvv">Total</label>
                <input type="text" id="cvv" name="cvv" placeholder="Total" readonly="true"/><br />
                  <asp:Button ID="Button1" runat="server" Text="Finish" CssClass="IndexButton" Width="383px" />
              </div>
            </div>
          </div>
        &nbsp;</form>

            <%--If there is not a product on the inventory This will redirect us to the ordering page--%>

</body>
</html>
