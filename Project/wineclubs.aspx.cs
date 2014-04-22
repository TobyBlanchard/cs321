using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wineclubs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            divLogIn.Attributes.CssStyle.Add("opacity","0.5");
            populateWineClubRadioButtonList();
            divRegister.Attributes.CssStyle.Add("float", "left");
            divLogIn.Attributes.CssStyle.Add("margin-left", "10px");
            divLogIn.Attributes.CssStyle.Add("float", "left");
        }
        else
        {
            if(rdoRegister.Checked)
            {
                rdoRegister_Checked();
            }
            else if(rdoLogIn.Checked)
            {
                rdoLogIn_Checked();
            }
        }
    }
    private void populateWineClubRadioButtonList()
    {

        rblWineClub.Items.Add(new ListItem("Month by Month"));
        rblWineClub.Items.Add(new ListItem("3 Month"));
        rblWineClub.Items.Add(new ListItem("6 Month"));
        rblWineClub.SelectedIndex = 0;


    }
    protected void rdoRegister_Checked()
    {
        divRegister.Attributes.CssStyle.Remove("opacity");
        divRegister.Attributes.CssStyle.Add("opacity", "1.0");
        divLogIn.Attributes.CssStyle.Add("opacity", "0.5");
        txtEmail.Enabled = false;
        vldTxtEmail.Enabled = false;
        vldTxtEmailRegExp.Enabled = false;
        txtPass.Enabled = false;
        vldPass.Enabled = false;
        btnLogIn.Enabled = false;

        rblWineClub.Enabled = true;
        txtName.Enabled = true;
        vldTxtName.Enabled = true;
        txtEmail1.Enabled = true;
        vldTxtEmail1.Enabled = true;
        vldTxtEmailRegExp1.Enabled = true;
        txtPass1.Enabled = true;
        vldTxtPass1.Enabled = true;
        txtPass2.Enabled = true;
        vldTxtPass2.Enabled = true;
        vldPassCompare.Enabled = true;
        btnRegister.Enabled = true;
    }
    protected void rdoLogIn_Checked()
    {
        divLogIn.Attributes.CssStyle.Remove("opacity");
        divLogIn.Attributes.CssStyle.Add("opacity", "1.0");
        divRegister.Attributes.CssStyle.Add("opacity", "0.5");
        txtEmail.Enabled = true;
        vldTxtEmail.Enabled = true;
        vldTxtEmailRegExp.Enabled = true;
        txtPass.Enabled = true;
        vldPass.Enabled = true;
        btnLogIn.Enabled = true;

        rblWineClub.Enabled = false;
        txtName.Enabled = false;
        vldTxtName.Enabled = false;
        txtEmail1.Enabled = false;
        vldTxtEmail1.Enabled = false;
        vldTxtEmailRegExp1.Enabled = false;
        txtPass1.Enabled = false;
        vldTxtPass1.Enabled = false;
        txtPass2.Enabled = false;
        vldTxtPass2.Enabled = false;
        vldPassCompare.Enabled = false;
        btnRegister.Enabled = false;

    }
}