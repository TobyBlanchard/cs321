﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPage.master" AutoEventWireup="true" CodeFile="blush.aspx.cs" Inherits="blush" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cssLinks" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <div id="contentDiv">
        <br />
        <h1>Blush Wines</h1>
         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu nulla non ante aliquam aliquet eget at elit. Praesent quis dui vel nibh pretium dictum ac pretium ligula. Nulla tempus eu eros ac elementum. Praesent consequat massa ac est egestas, sed aliquam sem iaculis. Pellentesque nec eros non nisi gravida porta sit amet vel tortor. Etiam pulvinar mauris quis ligula rutrum commodo. Cras dui enim, varius nec diam nec, porttitor pharetra sem. </p>
        <br />        
    </div>
    <div id="wineListDiv">
        <label for="ddlBlushWine">Choose a Blush Wine:</label>&nbsp;&nbsp;
        <asp:DropDownList ID="ddlBlushWine" runat="server"></asp:DropDownList>
         <asp:Button ID="btnBlush" runat="server" Text="View Details" OnClick="btnBlush_Click" />
        <asp:Image ID="blushImage" runat="server" /><br /><br />
        Enter Quantity: <asp:TextBox ID="txtQty" runat="server" Width="30px" Visible="True"></asp:TextBox>&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCart" runat="server" Text="Add to Cart" PostBackUrl="~/cart.aspx" />
    </div>
</asp:Content>

