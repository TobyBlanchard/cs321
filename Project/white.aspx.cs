using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class white : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            populateWhiteWineDropDownList();

        }
    }
    private void populateWhiteWineDropDownList()
    {

        ddlWhiteWine.Items.Add(new ListItem("Chardonnay"));
        ddlWhiteWine.Items.Add(new ListItem("Pinot Grigio"));
        ddlWhiteWine.Items.Add(new ListItem("Riesling"));
        ddlWhiteWine.SelectedIndex = 0;


    }
    protected void btnWhite_Click(object sender, EventArgs e)
    {
        if (ddlWhiteWine.SelectedIndex == 0)
        {
            whiteImage.ImageUrl = "~/images/chardonnay.png";
        }
        else if (ddlWhiteWine.SelectedIndex == 1)
        {
            whiteImage.ImageUrl = "~/images/pinotgrigio.png";
        }
        else
        {
            whiteImage.ImageUrl = "~/images/riesling.png";
        }
    }
}