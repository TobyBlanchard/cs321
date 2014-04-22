<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cssLinks" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <div id="contentDiv">
        <br />
        <h1>Contact Us</h1>

        <label for="txtName">Name</label><br />
        <asp:TextBox ID="txtName" runat="server" MaxLength="30"></asp:TextBox>
        <asp:RequiredFieldValidator ID="vldTxtName" runat="server" ErrorMessage="You must enter a name." ControlToValidate="txtName"></asp:RequiredFieldValidator><br /><br />

        <label for="txtEmail">Email</label><br />
        <asp:TextBox ID="txtEmail" runat="server" MaxLength="30"></asp:TextBox>
        <asp:RequiredFieldValidator ID="vldTxtEmail" runat="server" ErrorMessage="Please enter an email address." ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
        &nbsp;
        <asp:RegularExpressionValidator ID="vldTxtEmailRegExp" runat="server" ErrorMessage="Please review the email section.  The format is incorrect." ControlToValidate="txtEmail"></asp:RegularExpressionValidator><br /><br />

        <label for="txtMessage">Message</label><br />
        <asp:TextBox ID="txtMessage" runat="server"  Height="96px" Width="373px" MaxLength="500" Text="Please enter a message of no more than 500 characters." TextMode="MultiLine"></asp:TextBox>

        <br />
        <asp:RequiredFieldValidator ID="vldTxtMessage" runat="server" ErrorMessage="You must include a message." ControlToValidate="txtMessage"></asp:RequiredFieldValidator>
        <br />

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />

        <br />
    </div>
</asp:Content>

