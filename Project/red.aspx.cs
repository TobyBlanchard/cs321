using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class red : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            populateRedWineDropDownList();
            
        }
    }
    private void populateRedWineDropDownList()
    {

        ddlRedWine.Items.Add(new ListItem("Cabernet"));        
        ddlRedWine.Items.Add(new ListItem("Merlot"));
        ddlRedWine.Items.Add(new ListItem("Pinot Noir"));
        ddlRedWine.SelectedIndex = 0;

       
        


    }




    protected void btnRed_Click(object sender, EventArgs e)
    {
        if (ddlRedWine.SelectedIndex == 0)
        {
            redImage.ImageUrl = "~/images/cabernet.png";
        }
        else if (ddlRedWine.SelectedIndex == 1)
        {
            redImage.ImageUrl = "~/images/merlot.png";
        }
        else
        {
            redImage.ImageUrl = "~/images/pinotnoir.png";
        }
    }
}