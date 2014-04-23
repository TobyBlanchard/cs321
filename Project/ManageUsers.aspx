<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/MasterPage.master" AutoEventWireup="true" CodeFile="ManageUsers.aspx.cs" Inherits="ManageUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cssLinks" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <asp:GridView ID="gv_Users" runat="server" AutoGenerateColumns="False" DataKeyNames="UserName" OnSelectedIndexChanged="gv_Users_SelectedIndexChanged">
        <Columns>
                <asp:BoundField DataField="UserName" HeaderText="User Name" ReadOnly="True" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:CommandField ShowSelectButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
    </asp:GridView>
        <br /><br />
    <asp:DetailsView ID="dv_User" runat="server" Height="50px" Width="125px" DataKeyNames="UserName" AutoGenerateRows="False"
             AutoGenerateEditButton="True">
            <Fields>
                <asp:BoundField DataField="UserName" HeaderText="User Name" ReadOnly="true" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="CreationDate" HeaderText="Date Created" ReadOnly="true" />
                <asp:BoundField DataField="LastLoginDate" HeaderText="Last Login Date" ReadOnly="true" />
                <asp:BoundField DataField="LastPasswordChangedDate" HeaderText="Password Last Changed" ReadOnly="true" />
                <asp:BoundField DataField="Comment" HeaderText="Comments" />
            </Fields>
    </asp:DetailsView>
        <asp:CreateUserWizard ID="wizAddUser" LoginCreatedUser="false" runat="server">
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" Title="Create new user" runat="server">
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                </asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
</asp:Content>

