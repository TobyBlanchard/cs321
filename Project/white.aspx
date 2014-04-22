<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPage.master" AutoEventWireup="true" CodeFile="white.aspx.cs" Inherits="white" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cssLinks" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
  <div id="contentDiv">
        <br />
        <h1>White Wines</h1>
         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu nulla non ante aliquam aliquet eget at elit. Praesent quis dui vel nibh pretium dictum ac pretium ligula. Nulla tempus eu eros ac elementum. Praesent consequat massa ac est egestas, sed aliquam sem iaculis. Pellentesque nec eros non nisi gravida porta sit amet vel tortor. Etiam pulvinar mauris quis ligula rutrum commodo. Cras dui enim, varius nec diam nec, porttitor pharetra sem. </p>
        <br />        
    </div>
    <div id="wineListDiv">
        <label for="ddlWhiteWine">Choose a White Wine:</label>&nbsp;&nbsp;
        <asp:DropDownList ID="ddlWhiteWine" runat="server"></asp:DropDownList>
        <asp:Button ID="btnWhite" runat="server" Text="View Details" OnClick="btnWhite_Click" />
        <asp:Image ID="whiteImage" runat="server" /><br /><br />
        Enter Quantity: <asp:TextBox ID="txtQty" runat="server" Width="30px" Visible="True"></asp:TextBox>&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCart" runat="server" Text="Add to Cart" PostBackUrl="~/cart.aspx" />
    </div>
</asp:Content>

