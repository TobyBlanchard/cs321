using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Toby Blanchard, Carlos Perea, Timothy Nguyen
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnVerifyAge_Click(object sender, EventArgs e)
    {
        int age = Convert.ToInt32(txtAge.Text);
        if (age < 21)
        {
            lblVerify.Text = "You are not old enough to enter this site.";
        }
        else
        {
            lblVerify.Text = "Click the button below to go to our Home page.";
            enterSite.Visible = true;
        }
    }
    protected void enterSite_Click(object sender, EventArgs e)
    {

    }
   
}