<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPage.master" AutoEventWireup="true" CodeFile="wineclubs.aspx.cs" Inherits="wineclubs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cssLinks" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <div id="contentDiv">
        <br />
        <h1>Wine Clubs</h1>
        <p>&nbsp;</p>
        
        <label for="rdoRegister">Register</label>
        <asp:RadioButton ID="rdoRegister" GroupName="function" Checked="true"  runat="server" AutoPostBack="True" />
        &nbsp;
        <label for="rdoLogIn">Log In</label>
        <asp:RadioButton ID="rdoLogIn" GroupName="function" runat="server" AutoPostBack="True" />

        <div runat="server" id="divRegister">
        <h2>Register Here</h2>
            <div id="wineClubsDiv">
               <label for="rblWineClub">Choose a Wine Club Option:</label><br /><br />
               <asp:RadioButtonList ID="rblWineClub" runat="server" RepeatDirection="Horizontal"></asp:RadioButtonList>
            </div>
            <!--
            <label for="txtName">Name</label><br />
            <asp:TextBox ID="txtName" runat="server" MaxLength="30"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vldTxtName" runat="server" ErrorMessage="You must enter a name." ControlToValidate="txtName"></asp:RequiredFieldValidator><br /><br />

            <label for="txtEmail">Email</label><br />
            <asp:TextBox ID="txtEmail1" runat="server" MaxLength="30"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vldTxtEmail1" runat="server" ErrorMessage="Please enter an email address." ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            &nbsp;
            <asp:RegularExpressionValidator ID="vldTxtEmailRegExp1" runat="server" ErrorMessage="Please review the email section.  The format is incorrect." ControlToValidate="txtEmail1"></asp:RegularExpressionValidator><br /><br />
        
            <label for="txtPass1">Enter Password</label>
            <br />
            <asp:TextBox ID="txtPass1" runat="server" MaxLength="20"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vldTxtPass1" runat="server" ErrorMessage="Please enter an email address." ControlToValidate="txtPass1"></asp:RequiredFieldValidator>

            <label for="txtPass2">
            <br />
            <br />
            Confim Password</label>
            <br />
            <asp:TextBox ID="txtPass2" runat="server" MaxLength="20"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vldTxtPass2" runat="server" ErrorMessage="Please enter an email address." ControlToValidate="txtPass2"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="vldPassCompare" runat="server" ErrorMessage="The passwords do not match" ControlToValidate="txtPass1" ControlToCompare="txtPass2"></asp:CompareValidator>
            <br /><br />
            <asp:Button ID="btnRegister" runat="server" Text="Submit" />
        </div>
        
        <div runat="server" id="divLogIn">
        <h2>Already a Member?</h2>
            <label for="txtEmail">Email</label><br />
            <asp:TextBox ID="txtEmail" runat="server" MaxLength="30" Enabled="false"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vldTxtEmail" runat="server" Enabled="false" ErrorMessage="Please enter an email address." ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            &nbsp;
            <asp:RegularExpressionValidator ID="vldTxtEmailRegExp" runat="server" Enabled="false" ErrorMessage="Please review the email section.  The format is incorrect." ControlToValidate="txtEmail"></asp:RegularExpressionValidator>

            <label for="txtPass">
                <br />
                <br />
                Enter Password<br />
                </label>
            &nbsp;<asp:TextBox ID="txtPass" runat="server" MaxLength="20" Enabled="false"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vldPass" runat="server" Enabled="false" ErrorMessage="Please enter an email address." ControlToValidate="txtPass1"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:Button ID="btnLogIn" Enabled="false" runat="server" Text="Submit" />
        </div>
    </div>
                --->
    
</asp:Content>

