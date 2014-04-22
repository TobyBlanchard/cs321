<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPage.master" AutoEventWireup="true" CodeFile="orderconfirmation.aspx.cs" Inherits="orderconfirmation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cssLinks" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <div id="contentDiv">
        <br />
        <h1>Your order has been submitted and will be processed within 24 hours.</h1>
        <section>
            <h2>Contact Information</h2>

            <label>Name: </label>
            <asp:Label ID="lblName" runat="server" Text=""></asp:Label> <br />

            <label>Email: </label>
            <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label><br />

            <label>Phone Number: </label>
            <asp:Label ID="lblPhoneNumber" runat="server" Text=""></asp:Label>
        </section>

        <section>
        <h2>Billing Address</h2>

            <label>Street: </label>
            <asp:Label ID="lblStreet" runat="server" Text=""></asp:Label> <br />

            <label>City: </label>
            <asp:Label ID="lblCity" runat="server" Text=""></asp:Label><br />

            <label>State: </label>
            <asp:Label ID="lblState" runat="server" Text=""></asp:Label><br />

            <label>Zip: </label>
            <asp:Label ID="lblZip" runat="server" Text=""></asp:Label>
        </section>

        <section>
        <h2>Shpping Address</h2>

            <label>Street: </label>
            <asp:Label ID="lblShipStreet" runat="server" Text=""></asp:Label> <br />

            <label>City: </label>
            <asp:Label ID="lblShipCity" runat="server" Text=""></asp:Label><br />

            <label>State: </label>
            <asp:Label ID="lblShipState" runat="server" Text=""></asp:Label><br />

            <label>Zip: </label>
            <asp:Label ID="lblShipZip" runat="server" Text=""></asp:Label>
        </section>
        <br />
    </div>
</asp:Content>

