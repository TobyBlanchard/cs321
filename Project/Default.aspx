<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!--Toby Blanchard, Carlos Perea, Timothy Nguyen-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

</head>
<body>
    <div>
         <img src="images/winesWishLogo.PNG" />
        <h2>You must be 21 years of age or older to enter this site.</h2>        
        <form id="Form1" runat="server">
             Enter your Age:&nbsp;
             <asp:TextBox ID="txtAge" runat="server" Width="30px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="rfAge" runat="server" ControlToValidate="txtAge" Display="Dynamic" ErrorMessage="You must enter an age." ForeColor="Red"></asp:RequiredFieldValidator>
             <asp:RangeValidator ID="rvAge" runat="server" Display="Dynamic" ErrorMessage="Age must be between 1 and 100." ForeColor="Red" ControlToValidate="txtAge" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
             <br />
            <br />
            <asp:Button ID="btnVerifyAge" runat="server" Text="Verify Age" OnClick="btnVerifyAge_Click" />
            <br />
            <br />
            <asp:Label ID="lblVerify" runat="server" Text=""></asp:Label><br /><br />
            <asp:Button ID="enterSite" runat="server" Text="Enter Site" OnClick="enterSite_Click" PostBackUrl="~/home.aspx" Visible="False" />
       
            <fieldset>
            <legend>If already a member</legend>
             <asp:LoginView ID="lvHome" runat="server">
            <AnonymousTemplate>
                <asp:Login ID="loginHome" runat="server" DisplayRememberMe="false"></asp:Login>
            </AnonymousTemplate>
             <RoleGroups>
                <asp:RoleGroup Roles="Members">
                    <ContentTemplate>
                        <p>Member Info:</p>
                        <a href="ManageUsers.aspx">Manage Users</a><br />
                        <a href="ManageRoles.aspx">Manage Roles</a>
                        
                    </ContentTemplate>
                </asp:RoleGroup>
            </RoleGroups>
            </asp:LoginView>
            </fieldset>
            </form>
    </div>
</body>
</html>

