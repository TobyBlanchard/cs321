using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class ManageUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        gv_Users.DataSource = Membership.GetAllUsers();
        gv_Users.DataBind();

        if (!Roles.RoleExists("User"))
        {
            Roles.CreateRole("User");
        }
    }
    protected void gv_Users_SelectedIndexChanged(object sender, EventArgs e)
    {
        List<MembershipUser> list = new List<MembershipUser>();
        list.Add(Membership.GetUser(gv_Users.SelectedValue.ToString()));
        dv_User.DataSource = list;
        dv_User.DataBind();

       /* String[] roleList = Roles.GetRolesForUser(gv_Users.SelectedValue.ToString());
        for (int role = 0; role < roleList.Length; role++)
        {
            for (int cb = 0; cb < cbl_Roles.Items.Count; cb++)
            {
                if (roleList[role].CompareTo(cbl_Roles.Items[cb].Value.ToString()) == 0)
                {
                    cbl_Roles.Items[cb].Selected = true;
                }
                else
                {
                    cbl_Roles.Items[cb].Selected = false;
                }
            }
        }
        lblRoles.Visible = true;
        cbl_Roles.Visible = true;*/
    }
   /* protected void dv_User_ModeChanging(object sender, DetailsViewModeEventArgs e)
    {
        dv_User.ChangeMode(e.NewMode);
        List<MembershipUser> list = new List<MembershipUser>();
        list.Add(Membership.GetUser(dv_User.SelectedValue.ToString()));
        dv_User.DataSource = list;
        dv_User.DataBind();
    }
    protected void dv_User_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {
        List<MembershipUser> list = new List<MembershipUser>();
        MembershipUser user = Membership.GetUser(dv_User.SelectedValue.ToString());
        user.Email = (e.NewValues.Contains("Email") && e.NewValues["Email"] != null) ? e.NewValues["Email"].ToString() : user.Email;

        if (e.NewValues.Contains("Comment") && e.NewValues["Comment"] != null)
            user.Comment = e.NewValues["Comment"].ToString();
        else if (!e.NewValues.Contains("Comment") && e.OldValues["Comment"] != null)
            user.Comment = user.Comment;
        else
            user.Comment = null;

        Membership.UpdateUser(user);
        list.Add(Membership.GetUser(user.UserName));

        dv_User.ChangeMode(DetailsViewMode.ReadOnly);
        dv_User.DataSource = list;
        dv_User.DataBind();

    }
    protected void wizAddUser_CreatedUser(object sender, EventArgs e)
    {
        CheckBoxList cbl = (CheckBoxList)wizAddUser.CreateUserStep.ContentTemplateContainer.FindControl("cblRolesCreate");

        List<string> roles = new List<string>();
        foreach (ListItem item in cbl.Items)
        {
            if (item.Selected)
            {
                roles.Add(item.Value.ToString());
            }
        }
        string[] rolesArray = roles.ToArray();
        Roles.AddUserToRoles(wizAddUser.UserName, rolesArray);
    }
    protected void gv_Users_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        String userName = e.Keys["UserName"].ToString();
        Membership.DeleteUser(userName);
        gv_Users.DataSource = Membership.GetAllUsers();
        gv_Users.DataBind();
    }
    protected void cbl_Roles_SelectedIndexChanged(object sender, EventArgs e)
    {
        MembershipUser user = Membership.GetUser(dv_User.SelectedValue.ToString());
        string[] currentRoles = Roles.GetRolesForUser(user.UserName);
        for (int role = 0; role < cbl_Roles.Items.Count; role++)
        {
            if (cbl_Roles.Items[role].Selected && !currentRoles.Contains(cbl_Roles.Items[role].Value.ToString()))
            {
                Roles.AddUserToRole(user.UserName, cbl_Roles.Items[role].Value.ToString());
            }
            else if (!cbl_Roles.Items[role].Selected && currentRoles.Contains(cbl_Roles.Items[role].Value.ToString()))
            {
                Roles.RemoveUserFromRole(user.UserName, cbl_Roles.Items[role].Value.ToString());
            }
        }
    }*/
}