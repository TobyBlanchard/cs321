<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPage.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cssLinks" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <div id="contentDiv">
        <br />
     
        <h1>Shopping Cart Page</h1>
    
         <asp:ListBox ID="lstCart" runat="server" Height="76px" Width="308px"></asp:ListBox>
        <br />
        <br />
        <asp:Button ID="btnRemove" runat="server" Text="Remove Item" />
        <br/>
        <br/>
        <asp:Button ID="btnEmpty" runat="server" Text="Empty Cart" />
        <br/>
        <br/>
        <asp:Button ID="btnCheckOut" runat="server" Text="Check Out" PostBackUrl="~/checkout.aspx" />  
             </div>
</asp:Content>

