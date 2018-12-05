<%@ Page Title="Repair Form" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RepairsForm.aspx.cs" Inherits="EmmasEngines.Repairs" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <br />
        <h5 class="IndexTitle">Search Customer by Phone Number: </h5>

        <%--Framework Scripts--%>
        <h5 class="subScript">Phone Number:
                  <br />
            <asp:TextBox ID="txtPhoneNumber" runat="server" Width="168px" CssClass="inputBox" TextMode="Phone"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="Search" CssClass="IndexButton" Height="53px" Width="107px" />
        </h5>
        <asp:ListBox ID="ListBox1" runat="server" Height="122px" Width="419px"></asp:ListBox>
    </div>
    <br />
    <div>
    </div>
    <h5>Description of the problem:</h5>
    <textarea id="TextArea1" name="S1"></textarea><br />

    <%--<textarea id="txtDespcription" cols="20" rows="2"></textarea>--%>
    <h5>Equipment:</h5>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="inputBox" Height="17px" Width="145px"></asp:TextBox>

    <%--<asp:TextBox ID="txtEquiment" runat="server"></asp:TextBox> --%>

    <h5>Manufacturer:</h5>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="inputBox" Height="16px" Width="144px"></asp:TextBox>
    <%--<asp:DropDownList ID="ddlManufacturer" runat="server"></asp:DropDownList>--%>
    <h5>Warranty?</h5>
    <input type="checkbox" name="yes/no" value="Yes">Yes     
         <input type="checkbox" name="yes/no" value="No">No<br />
    <%--<asp:CheckBox ID="cbWarranty" runat="server" /> Yes <br />--%>
    <%--<asp:Button ID="btnSubmit" runat="server" Text="Submit" PostBackUrl="~/RepairsDeparment.aspx" />--%>

    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="IndexButton" />
</asp:Content>
