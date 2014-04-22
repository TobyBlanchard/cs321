using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class blush : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            populateBlushWineDropDownList();

        }
    }
    private void populateBlushWineDropDownList()
    {

        ddlBlushWine.Items.Add(new ListItem("Rose"));
        ddlBlushWine.Items.Add(new ListItem("Sparkling Rose"));
        ddlBlushWine.Items.Add(new ListItem("White Zinfandel"));
        ddlBlushWine.SelectedIndex = 0;


    }
    protected void btnBlush_Click(object sender, EventArgs e)
    {
        if (ddlBlushWine.SelectedIndex == 0)
        {
            blushImage.ImageUrl = "~/images/rose.png";
        }
        else if (ddlBlushWine.SelectedIndex == 1)
        {
            blushImage.ImageUrl = "~/images/sparklingrose.png";
        }
        else
        {
            blushImage.ImageUrl = "~/images/whitezin.png";
        }
    }
}