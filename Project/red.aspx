<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPage.master" AutoEventWireup="true" CodeFile="red.aspx.cs" Inherits="red" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cssLinks" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <div id="contentDiv">
        <br />
        <h1>Red Wines</h1>
         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu nulla non ante aliquam aliquet eget at elit. Praesent quis dui vel nibh pretium dictum ac pretium ligula. Nulla tempus eu eros ac elementum. Praesent consequat massa ac est egestas, sed aliquam sem iaculis. Pellentesque nec eros non nisi gravida porta sit amet vel tortor. Etiam pulvinar mauris quis ligula rutrum commodo. Cras dui enim, varius nec diam nec, porttitor pharetra sem. </p>
        <br />        
    </div>
    <div id="wineListDiv">
        <label for="ddlRedWine">Choose a Red Wine:</label>&nbsp;&nbsp;
        <asp:DropDownList ID="ddlRedWine" runat="server"></asp:DropDownList>&nbsp;
        <asp:Button ID="btnRed" runat="server" Text="View Details" OnClick="btnRed_Click" />
        <asp:Image ID="redImage" runat="server" /><br /><br />
        Enter Quantity: <asp:TextBox ID="txtQty" runat="server" Width="30px" Visible="True"></asp:TextBox>&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCart" runat="server" Text="Add to Cart" PostBackUrl="~/cart.aspx" />
    </div>
</asp:Content>

