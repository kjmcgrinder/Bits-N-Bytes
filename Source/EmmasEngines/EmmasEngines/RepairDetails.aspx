<%@ Page Title="Repair Details" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="RepairDetails.aspx.cs" Inherits="EmmasEngines.Repair_Details" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h3 class="IndexHeaderA">Details</h3>
    </div>
    <div class="IndexCentering">
        <asp:DetailsView ID="DetailsView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="164px" Width="928px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
    </div>
    <div class="IndexCentering">
        <asp:Button ID="Button1" runat="server" CssClass="IndexButton" Text="Start" Height="60px" Width="139px" />
    </div>
</asp:Content>
